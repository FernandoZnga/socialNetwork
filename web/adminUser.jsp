<%-- 
    Document   : adminUser
    Created on : Sep 2, 2018, 10:10:42 PM
    Author     : fernando
--%>

<%@page import="database.Dba"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="componentes/navbar.jsp" />
<%
    if (request.getParameter("btEditar") != null) {
        try {
            Dba db = new Dba();
            db.conectar();
            String qry;
            qry = "CALL pr_update_users('" 
                    + request.getParameter("usernameid") + "','"
                    + request.getParameter("userstatus") +"','"
                    + request.getParameter("usertype") +"','"
                    + request.getParameter("firstname") +"','"
                    + request.getParameter("lastname") +"','"
                    + request.getParameter("email") +"','"
                    + request.getParameter("country") + "')";
            db.query.execute(qry);
            db.desconectar();
            request.getRequestDispatcher("home.jsp?usersList=1&message=203").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            out.print(e);
            request.getRequestDispatcher("home.jsp?usersList=1message=502").forward(request, response);
        }
    }
%>
