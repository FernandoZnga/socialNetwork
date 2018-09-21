<%-- 
    Document   : friendsList
    Created on : Sep 1, 2018, 2:42:45 PM
    Author     : fernando
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="database.Dba"%>
<%
    if (request.getParameter("friendsList") != null) {
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
            qry = "SELECT * "
                    + "FROM vw_friends "
                    + "WHERE user_a = '" + request.getAttribute("r_userid") + "'";
            db.query.execute(qry);
            rs = db.query.getResultSet();
%>
<br>
<div class="container">
    <div class="row">
        <div class="card-deck">
            <%
                while   (rs.next()) {
            %>
            <div class="col-sm-4">
                <div class="card">
                    <img class="card-img-top" src="https://robohash.org/<%=rs.getString(11)%>" alt="<%=rs.getString(2)%> <%=rs.getString(3)%>">
                    <div class="card-body">
                        <h5 class="card-title"><%=rs.getString(4)%> <%=rs.getString(5)%></h5>
                        <p class="card-text">Email: <%=rs.getString(9)%></p>
                        <p class="card-text">Fecha Nac. <%=rs.getString(10)%></p>
                        <p class="card-text">Pais: <%=rs.getString(6)%></p>
                        <p class="card-text"><small class="text-muted">Amigos desde <%=rs.getString(7)%></small></p>
                        <a class="btn btn-success btn-sm btn-block" href="home.jsp?projectsList=1&friendProjectList=1" role="button">Ver Proyectos</a>
                        <a class="btn btn-dark btn-sm btn-block" href="#" role="button">Un-friend</a>
                    </div>
                </div>
            </div>
            <%
                    }
                    db.desconectar();
                } catch (Exception e) {
                    e.printStackTrace();
                    out.println(e);
                    request.getRequestDispatcher("home.jsp?friendsList=1&message=502").forward(request, response);
                }
            %>
        </div>
    </div>
</div>
<%
    }
%>