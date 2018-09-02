<%-- 
    Document   : addProject
    Created on : Sep 1, 2018, 2:08:14 PM
    Author     : fernando
--%>

<html>
    <head>
        <title>Editor de Texto</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <script type="text/javascript" src="js/jquery-1.12.0.js"></script>
        <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>-->
        <script type="text/javascript" src="js/editor.js"></script>

        <link rel="stylesheet" type="text/css" href="css/editor.css">
        <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

        <script type="text/javascript">
            $(document).ready(function () {
                $('#txt-content').Editor();
                $('#btn-enviar').click(function (e) {
                    e.preventDefault();
                    var texto = $('#txt-content').Editor('getText');
                    $('#texto').html(texto);
                });
            });
        </script>
    </head>
    <body>
        <jsp:include page="/componentes/navbar.jsp" />
        <br>
        <div class="container">
            <form role="form" method="POST" action="home.jsp?projectList=1&message=201" id="frNewProject">
                <div class="row">
                    <fieldset>
                        <legend>Datos del Proyecto</legend>

                        <div class="col-sm-6">
                            <label for="projectName">Nombre</label>
                            <input type="text" class="form-control" name="projectName" id="projectName" placeholder="ingrese el nombre del proyecto" required>
                        </div>
                        <div class="col-sm-6">
                            <label for="description">Descripción</label>
                            <textarea type="text" class="form-control" name="description" id="description" placeholder="ingrese una breve descripción del proyecto..." rows="2" required></textarea>
                        </div>

                        <div class="col-md-12">
                            <label for="readme">Readme.txt</label>
                            <textarea id="txt-content" class="form-control" name="txt-content"></textarea>
                        </div>
                    </fieldset>
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="submit" value="Agregar" name="btAgregar" id="btAgregar" class="btn btn-primary"/>
                            <a href="home.jsp?projectList=1">Cancelar</a>
                        </div>
                    </div>

                </div>
            </form>
        </div>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <!--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>-->
        <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>-->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    </body>
</html>
