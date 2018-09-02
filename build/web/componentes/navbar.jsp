<%-- 
    Document   : navbar
    Created on : Sep 1, 2018, 12:52:06 PM
    Author     : fernando
--%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="home.jsp?projectList=1">Red Social</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active" hidden>
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item dropdown active">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Administracion
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="home.jsp?usersList=1">Listar Cuentas de Usuarios</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="newUserPage.jsp?editUser=1">Crear Usuario</a>
                </div>
            </li>
            <li class="nav-item dropdown active">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Proyectos
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="home.jsp?projectList=1">Mis Proyectos</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="addProject.jsp">Agregar Nuevo</a>
                </div>
            </li>
            <li class="nav-item dropdown active">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Amigos
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="home.jsp?friendsList=1">Mis Amigos</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="home.jsp?searchFriend=1">Buscar Amigo</a>
                </div>
            </li>
            <li class="nav-item dropdown active">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Mensajes
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Mis Mensajes</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Enviar Mensaje</a>
                </div>
            </li>
        </ul>
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="#">Mi Cuenta <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="index.jsp">Salir <span class="sr-only">(current)</span></a>
            </li>
        </ul>
    </div>
</nav>