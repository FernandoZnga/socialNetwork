<%-- 
    Document   : secure
    Created on : Sep 2, 2018, 4:12:06 PM
    Author     : fernando
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="database.Dba"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (session.getAttribute("s_token") != null) {
        try {
            Dba db = new Dba();
            db.conectar();
            String qry;
            qry = "SELECT fnc_valid_token('"
                    + session.getAttribute("s_token") + "') valid_token "
                    + "FROM dual";
            db.query.execute(qry);
            ResultSet rs = db.query.getResultSet();
            while (rs.next()) {
                if (rs.getString(1).equals("0")) {
                    request.getRequestDispatcher("../index.jsp?message=504").forward(request, response);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.print(e);
            request.getRequestDispatcher("../index.jsp?message=502").forward(request, response);
        }
    } else {
        request.getRequestDispatcher("../index.jsp?message=504").forward(request, response);
    }
%>
