<%-- 
    Document   : index
    Created on : Sep 1, 2018, 12:00:47 PM
    Author     : fernando
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Page</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
    </head>
    <body>
        <div class="container">
            <h2>Red Social, Bienvenido</h2>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-login">
                        <h4>Ingresa tu usuario y contraseña</h4>
                        <form name="formLogin" action="home.jsp?projectsList=1" method="POST">
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
    </body>
</html>
