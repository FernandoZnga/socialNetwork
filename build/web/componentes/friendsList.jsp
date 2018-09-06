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
            String qry;
            qry = "SELECT * FROM vw_friends WHERE user_a = '" + session.getAttribute("s_usernameid") + "'";
            db.query.execute(qry);
            ResultSet rs = db.query.getResultSet();
%>
<br>
<div class="container">
    <div class="row">
        <div class="card-deck">
            <%
                while (rs.next()) {
            %>
            <div class="col-sm-3">
                <div class="card">
                    <img class="card-img-top" src="https://robohash.org/<%=rs.getString(2)%>" alt="<%=rs.getString(2)%> <%=rs.getString(3)%>">
                    <div class="card-body">
                        <h5 class="card-title"><%=rs.getString(2)%> <%=rs.getString(3)%></h5>
                        <p class="card-text">Email: <%=rs.getString(9)%></p>
                        <p class="card-text">Email: <%=rs.getString(6)%></p>
                        <p class="card-text">Email: <%=rs.getString(10)%></p>
                        <p class="card-text"><small class="text-muted">Amigos desde <%=rs.getString(7)%></small></p>
                        <a class="btn btn-success btn-sm btn-block" href="home.jsp?projectsList=1&friendProjectList=1" role="button">Ver Proyectos</a>
                        <a class="btn btn-dark btn-sm btn-block" href="h#" role="button">Un-friend</a>
                    </div>
                </div>
            </div>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    out.println(e);
                    request.getRequestDispatcher("index.jsp?projectsList=1&message=502").forward(request, response);
                }
            %>
<!--            <div class="col-sm-3">
                <div class="card">
                    <img class="card-img-top" src="https://robohash.org/texthere2" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        <a class="btn btn-success btn-sm btn-block" href="home.jsp?projectsList=1&friendProjectList=1" role="button">Ver Proyectos</a>
                        <a class="btn btn-dark btn-sm btn-block" href="h#" role="button">Un-friend</a>
                    </div>
                </div>
            </div>-->
        </div>
    </div>
</div>
<%
    }
%>