<%-- 
    Document   : newUser
    Created on : Sep 2, 2018, 4:29:44 PM
    Author     : fernando
--%>

<%@page import="database.Dba"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (request.getParameter("btRegistrar") != null) {
        try {
            Dba db = new Dba();
            db.conectar();
            String qry;
            qry = "CALL pr_insert_usernames('"
                    + request.getParameter("username") + "','"
                    + request.getParameter("1password") + "')";
            out.println(qry);
            db.query.execute(qry);
            qry = "CALL pr_insert_users('"
                    + request.getParameter("username")
                    + "','" + request.getParameter("firstname")
                    + "','" + request.getParameter("lastname")
                    + "','" + request.getParameter("email")
                    + "','" + request.getParameter("dateOfBirth")
                    + "','" + request.getParameter("dropCountry") + "')";
            out.print(qry);
            db.query.execute(qry);
            db.desconectar();
            if (session.getAttribute("s_token") != null) {
                request.getRequestDispatcher("home.jsp?usersList=1&message=202").forward(request, response);
            } else {
                request.getRequestDispatcher("index.jsp?message=202").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.print(e);
//            request.getRequestDispatcher("index.jsp?message=502").forward(request, response);
        }
    } else {
        request.getRequestDispatcher("index.jsp?message=502").forward(request, response);
    }
%>
