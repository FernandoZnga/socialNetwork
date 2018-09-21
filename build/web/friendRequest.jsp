<%-- 
    Document   : friendRequest
    Created on : Sep 13, 2018, 2:19:29 PM
    Author     : fernando
--%>

<%@page import="database.Dba"%>
<%@page import="java.sql.ResultSet"%>
<%
if (request.getParameter("addFriend") != null) {
        try {
            Dba db = new Dba();
            db.conectar();
            String  qry = "SELECT fnc_retrieve_userid('" + session.getAttribute("s_username") + "') "
                    + "FROM dual";
            db.query.execute(qry);
            ResultSet rs = db.query.getResultSet();
            while   (rs.next()) {
                request.setAttribute("r_userid",rs.getString(1));
                break;
            }
            qry = "CALL pr_friendrequest_send('" 
                    + request.getAttribute("r_userid") + "','" 
                    + request.getParameter("friend") + "')";
            db.query.execute(qry);
            request.getRequestDispatcher("home.jsp?searchFriend=1&message=205").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            out.print(e);
            request.getRequestDispatcher("home.jsp?searchFriend=1&message=502").forward(request, response);
        }
    }
%>
