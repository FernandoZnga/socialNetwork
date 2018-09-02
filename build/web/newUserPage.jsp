<%-- 
    Document   : newUserPage
    Created on : Sep 1, 2018, 12:02:11 PM
    Author     : fernando
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Nuevo Usuario</title>
        <!--<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">-->
        <!--<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>-->
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    </head>
    <body>
        <%
            if (request.getParameter("editUser") != null) {
        %>
        <jsp:include page="componentes/navbar.jsp" />
        <%
            }
        %>
        <div class="container">
            <h2>Nuevo Usuario</h2>
        </div>
        <form name="formNewUser" action="index.jsp" method="POST">
            <div class="container">
                <fieldset>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="firstName">Nombre</label>
                            <input type="text" class="form-control text-capitalize" name="firstName" id="firstName" placeholder="ingrese nombre" required>
                        </div>
                        <div class="col-md-6">
                            <label for="lastName">Apellido</label>
                            <input type="text" class="form-control text-capitalize" name="lastName" id="lastName" placeholder="ingrese apellido" required>
                        </div>
                        <div class="col-md-6">
                            <label for="username">Nombre de usuario</label>
                            <input type="text" class="form-control text-uppercase" name="username" id="username" placeholder="usuario" required>
                        </div>
                        <div class="col-md-6">
                            <label for="email">Email</label>
                            <input type="email" class="form-control text-lowercase" name="email" id="email" placeholder="ex: nombre@mail.com" required>
                        </div>
                        <div class="col-md-6">
                            <label for="1password">Contrasena</label>
                            <input type="password" class="form-control" name="1password" id="1password" placeholder="ingrese contraseña" required onkeyup='checkPass();'>
                        </div>
                        <div class="col-md-6">
                            <label for="2password">Confirmar contrasena</label><span id='message'></span>
                            <input type="password" class="form-control" name="2password" id="2password" placeholder="confirme contraseña" required onkeyup='checkPass();'>
                        </div>
                        <div class="col-md-6">
                            <label for="country">Seleccione su país</label>
                            <select class="form-control text-capitalize" name="dropCountry" required>
                                <option selected disabled>seleccione una opción</option>
                                <option value="Honduras">Honduras</option>
                                <option value="Guatemala">Guatemala</option>
                                <option value="Nicaragua">Nicaragua</option>
                                <option value="El Salvador">El Salvador</option>
                                <option value="Costa Rica">Costa Rica</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label for="dateOfBirth">Fecha de nacimiento</label>
                            <input type="date" class="form-control" name="dateOfBirth" id="dateOfBirth" placeholder="ingrese su fecha de nacimiento" required>
                        </div>
                    </div>
                </fieldset>
                <br>
                <div>
                    <div class="col-md-12">
                        <%
                            if (request.getParameter("editUser") != null) {
                        %>
                        <input type="submit" value="Crear Cuenta" name="btRegistrar" disabled id="btRegistrar" class="btn btn-primary"/>
                        <%
                        } else {
                        %>
                        <input type="submit" value="Crear Cuenta" name="btRegistrar" disabled id="btRegistrar" class="btn btn-primary"/>
                        <a href="index.jsp">Ya tienes una cuenta?</a>
                        <%
                            }
                        %>

                    </div>
                </div>
            </div>
        </form>

        <script>
            var checkPass = function () {
                if (document.getElementById('1password').value ===
                        document.getElementById('2password').value) {
                    if (document.getElementById('1password').value !== "") {
                        document.getElementById('message').style.color = 'green';
                        document.getElementById('message').innerHTML = ' Concuerda';
                        document.getElementById('btRegistrar').disabled = false;
                    }
                } else {
                    document.getElementById('message').style.color = 'red';
                    document.getElementById('message').innerHTML = ' No concuerda';
                    document.getElementById('btSubmit').disabled = true;
                }
            };
        </script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
