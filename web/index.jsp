<%-- 
    Document   : index
    Created on : Sep 1, 2018, 12:00:47 PM
    Author     : fernando
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="database.Dba"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <!--<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">-->
        <!--<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>-->
        <!--<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>-->
        <!------ Include the above in your HEAD tag ---------->
    </head>
    <body>
        <%
            if (request.getParameter("logout") != null) {
                    Dba db = new Dba();
                    db.conectar();
                    String qry;
                    qry = "CALL pr_logout('" + session.getAttribute("s_token") + "')";
                    db.query.execute(qry);
                    db.desconectar();
                }
        %>
        
        <div class="container">
            <h3>Red Social, Bienvenido</h3>
        </div>
        <jsp:include page="componentes/userMessages.jsp" />
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-login">
                        <h5>Ingresa tu usuario y contraseña</h5>
                        <form name="formLogin" action="auth.jsp" method="POST">
                            <input type="text" id="username" name="username" class="form-control input-sm chat-input text-uppercase" placeholder="USUARIO" required/>
                            <br>
                            <input type="password" id="password" name="password" class="form-control input-sm chat-input" placeholder="CONTRASEÑA" required/>
                            <br>
                            <div class="wrapper">
                                <span class="group-btn">     
                                    <input class="btn btn-primary btn-md" type="submit" value="Login" name="btLogin" />
                                    <a href="newUserPage.jsp"> Eres nuevo? Click aqui</a>
                                </span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
