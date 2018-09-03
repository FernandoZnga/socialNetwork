<%-- 
    Document   : adminUserPage
    Created on : Sep 2, 2018, 7:34:13 PM
    Author     : fernando
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="database.Dba"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Administrar Usuario</title>
        <!--<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">-->
        <!--<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>-->
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    </head>
    <body>
        <jsp:include page="componentes/navbar.jsp" />
        <%
            if (request.getParameter("unameid") != null) {
                try {
                    Dba db = new Dba();
                    db.conectar();
                    String qry;
                    qry = "SELECT * FROM vw_users WHERE usernameid = '" + request.getParameter("unameid") + "'";
                    db.query.execute(qry);
                    ResultSet rs = db.query.getResultSet();
                    while (rs.next()) {
        %>
        <div class="container">
            <h2>Editar Usuario</h2>
        </div>

        <form name="formEditUser" action="adminUser.jsp?usernameid=<%=request.getParameter("unameid")%>" method="POST">
            <div class="container">
                <fieldset>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="firstname">Nombre</label>
                            <input type="text" class="form-control text-capitalize" name="firstname" id="firstName" placeholder="ingrese nombre" value="<%=rs.getString(4)%>" required>
                        </div>
                        <div class="col-md-6">
                            <label for="lastname">Apellido</label>
                            <input type="text" class="form-control text-capitalize" name="lastname" id="lastName" placeholder="ingrese apellido" value="<%=rs.getString(5)%>" required>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="username">Nombre de usuario</label>
                            <input type="text" class="form-control text-uppercase" name="username" id="username" placeholder="usuario" value="<%=rs.getString(2)%>" disabled required>
                        </div>
                        <div class="col-md-6">
                            <label for="email">Email</label>
                            <input type="email" class="form-control text-lowercase" name="email" id="email" placeholder="ex: nombre@mail.com" value="<%=rs.getString(6)%>" required>
                        </div>
                    </div>
                    <br>
                    <div class="row" hidden>
                        <div class="col-md-6">
                            <label for="1password">Contrasena</label>
                            <input type="password" class="form-control" name="1password" id="1password" placeholder="ingrese contraseña" onkeyup='checkPass();'>
                        </div>
                        <div class="col-md-6">
                            <label for="2password">Confirmar contrasena</label><span id='message'></span>
                            <input type="password" class="form-control" name="2password" id="2password" placeholder="confirme contraseña" onkeyup='checkPass();'>
                        </div>
                    </div>
                    <div class="row" hidden>
                        <div class="col-md-6">
                            <label for="dateOfBirth">Fecha de nacimiento</label>
                            <input type="date" class="form-control" name="dateOfBirth" id="dateOfBirth" placeholder="ingrese su fecha de nacimiento" value="<%=rs.getString(7)%>" required>
                        </div>
                    </div>
                    <%
                        }
                    %>
                    <br>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <label class="input-group-text" for="country">País</label>
                                </div>
                                <select class="custom-select" id="country" name="country" required>
                                    <option selected disabled>Escoja una opción</option>
                                    <%
                                        String qry1;
                                        qry1 = "SELECT * FROM countries";
                                        db.query.execute(qry1);
                                        ResultSet rs1 = db.query.getResultSet();
                                        while (rs1.next()) {
                                            out.println(rs1.getString(1));
                                            if (request.getParameter("country").equals(rs1.getString(1))) {
                                    %>
                                    <option value="<%=rs1.getString(1)%>" selected><%=rs1.getString(1)%></option>
                                    <%
                                    } else {
                                    %>
                                    <option value="<%=rs1.getString(1)%>"><%=rs1.getString(1)%></option>
                                    <%
                                            }
                                        }
                                    %>
                                </select>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <label class="input-group-text" for="userstatus">Status</label>
                                </div>
                                <select class="custom-select" id="userstatus" name="userstatus" required>
                                    <option selected disabled>Escoja una opción</option>
                                    <%
                                        String qry2;
                                        qry2 = "SELECT * FROM userstatus";
                                        db.query.execute(qry2);
                                        ResultSet rs2 = db.query.getResultSet();
                                        while (rs2.next()) {
                                            out.println(rs2.getString(1));
                                            if (request.getParameter("ustatusid").equals(rs2.getString(1))) {
                                    %>
                                    <option value="<%=rs2.getString(1)%>" selected><%=rs2.getString(2)%></option>
                                    <%
                                    } else {
                                    %>
                                    <option value="<%=rs2.getString(1)%>"><%=rs2.getString(2)%></option>
                                    <%
                                            }
                                        }
                                    %>
                                </select>
                            </div>
                        </div>
                        <!--                    </div>
                                            <div class="row">-->
                        <div class="col-md-6">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <label class="input-group-text" for="usertype">Tipo de Usuario</label>
                                </div>
                                <select class="custom-select" id="usertype" name="usertype" required>
                                    <option selected disabled>Escoja una opción</option>
                                    <%
                                        String qry3;
                                        qry3 = "SELECT * FROM USERTYPE";
                                        db.query.execute(qry3);
                                        ResultSet rs3 = db.query.getResultSet();
                                        while (rs3.next()) {
                                            if (request.getParameter("utypeid").equals(rs3.getString(1))) {
                                    %>
                                    <option value="<%=rs3.getString(1)%>" selected><%=rs3.getString(2)%></option>
                                    <%
                                    } else {
                                    %>
                                    <option value="<%=rs3.getString(1)%>"><%=rs3.getString(2)%></option>
                                    <%
                                            }
                                        }
                                    %>
                                </select>
                            </div>
                        </div>
                    </div>
                    <%
                                db.desconectar();
                            } catch (Exception e) {
                                e.printStackTrace();
                                out.print(e);
                                request.getRequestDispatcher("home.jsp?usersList=1&message=502").forward(request, response);
                            }
                        }
                    %>
                </fieldset>
                <br>
                <div>
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-10">
                                <input type="submit" value="Editar Cuenta" name="btEditar" id="btEditar" class="btn btn-primary"/>
                                <a href="home.jsp?usersList=1">Cancelar</a>
                            </div>
                            <div class="col-sm-2">
                                <!--<input type="submit" value="Eliminar Cuenta" name="btEliminar" id="btEditar" class="btn btn-danger"/>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
