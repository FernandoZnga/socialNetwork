<%-- 
    Document   : searchFriend
    Created on : Sep 1, 2018, 5:24:08 PM
    Author     : fernando
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="database.Dba"%>
<%
    if (request.getParameter("searchFriend") != null) {
        try {
            Dba db = new Dba();
            db.conectar();
            String qry;
            qry = "SELECT * FROM vw_users WHERE usernameid <> '" + session.getAttribute("s_usernameid") + "'";
            db.query.execute(qry);
            ResultSet rs = db.query.getResultSet();
%>
<br>
<div class="container">
    <form class="form-inline">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
</div>
</form>
<br>
<div class="container">
    <div class="row">
        <div class="card-deck">
            <%
                while(rs.next()) {     
            %>
            <div class="col-sm-4">
                <div class="card">
                    <img class="card-img-top" src="https://robohash.org/<%=rs.getString(1)%>" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title"><%=rs.getString(4)%> <%=rs.getString(5)%> </h5>
                        <p class="card-text">Email: <%=rs.getString(6)%></p>
                        <p class="card-text">Fecha Nac: <%=rs.getString(6)%></p>
                        <p class="card-text">Pais: <%=rs.getString(6)%></p>
                        <p class="card-text"><small class="text-muted">Es usuario desde <%=rs.getString(9)%></small></p>
                        <a href="friendRequest.jsp?friend=<%=rs.getString(3)%>&addFriend=1" class="btn btn-success btn-sm btn-block">Agregar Amigo</a>
                    </div>
                </div>
            </div>
            <%
                }
                db.desconectar();
            %>
        </div>
    </div>
</div>
<%        } catch (Exception e) {
            e.printStackTrace();
            out.print(e);
            request.getRequestDispatcher("home.jsp?usersList=1&message=502").forward(request, response);
        }
    }
%>
