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
    }
%>
