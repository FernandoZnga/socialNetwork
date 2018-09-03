<%-- 
    Document   : auth
    Created on : Sep 2, 2018, 4:09:27 PM
    Author     : fernando
--%>

<%@page import="database.Dba"%>
<%@page import="java.sql.ResultSet"%>
<%
    if (request.getParameter("btLogin") != null) {
        try {
            Dba db = new Dba();
            db.conectar();
            String qry;
            qry = "SELECT fnc_valid_userpass('"
                    + request.getParameter("username") + "','"
                    + request.getParameter("password") + "') "
                    + "valid_user_pass "
                    + "FROM dual";
            db.query.execute(qry);
            ResultSet rs = db.query.getResultSet();
            while (rs.next()) {
                if (rs.getString(1).equals("1")) {
                    session.setAttribute("s_username", request.getParameter("username").toUpperCase());
                    qry = "SELECT fnc_retrieve_userstatus('"
                            + request.getParameter("username") + "') userstatus "
                            + "FROM dual";
                    db.query.execute(qry);
                    ResultSet rs1 = db.query.getResultSet();
                    while (rs1.next()) {
                        if (rs1.getString(1).equals("ACTIVE")) {
                            session.setAttribute("s_userstatus", rs1.getString(1));
                        } else {
                            request.getRequestDispatcher("index.jsp?message=503").forward(request, response);
                            db.desconectar();
                        }
                    }

                    qry = "SELECT fnc_retrieve_usernameid('"
                            + request.getParameter("username") + "') usernameid "
                            + "FROM dual";
                    db.query.execute(qry);
                    ResultSet rs3 = db.query.getResultSet();
                    while (rs3.next()) {
                        session.setAttribute("s_usernameid", rs3.getString(1));
                        break;
                    }
                    
                    qry = "SELECT fnc_retrieve_usertype('"
                            + request.getParameter("username") + "') usertype "
                            + "FROM dual";
                    db.query.execute(qry);
                    ResultSet rs5 = db.query.getResultSet();
                    while (rs5.next()) {
                        session.setAttribute("s_usertype", rs5.getString(1));
                        break;
                    }

                    qry = "CALL pr_insert_usertokens('"
                            + request.getParameter("username") + "')";
                    db.query.execute(qry);
                    qry = "SELECT fnc_retrieve_token('"
                            + request.getParameter("username") + "') token "
                            + "FROM dual";
                    db.query.execute(qry);
                    ResultSet rs2 = db.query.getResultSet();
                    while (rs2.next()) {
                        session.setAttribute("s_token", rs2.getString(1));
                        db.desconectar();
                        request.getRequestDispatcher("home.jsp?projectsList=1").forward(request, response);
                        break;
                    }
                } else {
                    db.desconectar();
                    request.getRequestDispatcher("index.jsp?message=501").forward(request, response);
                }
                break;
            }
            db.desconectar();
        } catch (Exception e) {
            e.printStackTrace();
            out.print(e);
            request.getRequestDispatcher("index.jsp?message=502").forward(request, response);
        }
    }
%>
