<%-- 
    Document   : usersList
    Created on : Sep 2, 2018, 1:11:48 AM
    Author     : fernando
--%>

<%
    if (request.getParameter("usersList") != null) {
%>
<div class="container">
    <h2>Lista de Usuarios del Sistema</h2>
</div>
<div class="container">
    <div class="">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">Fila</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Apellido</th>
                    <th scope="col">Usuario</th>
                    <th scope="col">Email</th>
                    <th scope="col">País</th>
                    <th scope="col">Fecha de Nacimiento</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>MOTTO</td>
                    <td>motto@mail.com</td>
                    <td>Honduras</td>
                    <td>01-05-1980</td>
                    <td><a class="btn btn-outline-info btn-sm" href="#" role="button">Ver</a></td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>JTHORTON</td>
                    <td>jthorton@mail.com</td>
                    <td>Honduras</td>
                    <td>09-08-1990</td>
                    <td><a class="btn btn-outline-info btn-sm" href="#" role="button">Ver</a></td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td>Larry the Bird</td>
                    <td>On the air</td>
                    <td>LARRYFLY</td>
                    <td>fly@mail.com</td>
                    <td>Honduras</td>
                    <td>10-02-1995</td>
                    <td><a class="btn btn-outline-info btn-sm" href="#" role="button">Ver</a></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<%
    }
%>