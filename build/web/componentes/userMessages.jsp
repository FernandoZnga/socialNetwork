<%-- 
    Document   : userMessages
    Created on : Sep 1, 2018, 2:23:51 PM
    Author     : fernando
--%>


<%
    if (request.getParameter("message") != null) {
        if (request.getParameter("message").equals("201")) {
%>
<div class="alert alert-success alert-dismissible fade show" role="alert">
    <strong>Exito!</strong> Proyecto agregado satisfactoriamente.
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<%
        }
        if (request.getParameter("message").equals("202")) {
%>
<div class="alert alert-success alert-dismissible fade show" role="alert">
    <strong>Exito!</strong> Usuario agregado satisfactoriamente.
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<%
        }
        if (request.getParameter("message").equals("203")) {
%>
<div class="alert alert-success alert-dismissible fade show" role="alert">
    <strong>Exito!</strong> Usuario actualizado satisfactoriamente.
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<%
        }
        if (request.getParameter("message").equals("204")) {
%>
<div class="alert alert-success alert-dismissible fade show" role="alert">
    <strong>Exito!</strong> Usuario eliminado satisfactoriamente.
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<%
        }
        if (request.getParameter("message").equals("205")) {
%>
<div class="alert alert-success alert-dismissible fade show" role="alert">
    <strong>Exito!</strong> Solicitud de amistad enviada satisfactoriamente.
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<%
        }
        if (request.getParameter("message").equals("501")) {
%>
<div class="alert alert-danger alert-dismissible fade show" role="alert">
  <strong>Error!</strong> Usuario o Contraseña incorrectos.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
<%
        }
        if (request.getParameter("message").equals("502")) {
%>
<div class="alert alert-danger alert-dismissible show " role="alert">
    <strong>Error!</strong> Error interno, favor reportar a su administrador.
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<%
        }
        if (request.getParameter("message").equals("503")) {
%>
<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Error!</strong> Usuario debe estar activo para continuar. Contacte a su administrador.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
<%
        }
        if (request.getParameter("message").equals("504")) {
%>
<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong>Error!</strong> No tiene sesión activa, por favor proceda a hacer Login.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
<%
        }
    }
%>
