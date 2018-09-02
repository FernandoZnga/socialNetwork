<%-- 
    Document   : projectsList
    Created on : Sep 1, 2018, 1:34:29 PM
    Author     : fernando
--%>

<%
    if (request.getParameter("projectsList") != null) {
        if (request.getParameter("friendProjectList") != null) {
%>
<div class="container">
    <h2>Proyectos de Mi Amigo</h2>
</div>
<%
    }
%>
<div class="container"><br>
    <div class="row">
        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Proyecto Pagina Web</h5>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur lectus arcu, condimentum eget est eget, lobortis scelerisque risus. Curabitur sed pharetra lorem.</p>
                    <a href="viewProject.jsp" class="btn btn-primary">Ver Proyecto</a>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Proyecto Applicación Web</h5>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur lectus arcu, condimentum eget est eget, lobortis scelerisque risus. Curabitur sed pharetra lorem.</p>
                    <a href="viewProject.jsp" class="btn btn-primary">Ver Proyecto</a>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Pagina de Inicio (ejemplo)</h5>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur lectus arcu, condimentum eget est eget, lobortis scelerisque risus. Curabitur sed pharetra lorem.</p>
                    <a href="viewProject.jsp" class="btn btn-primary">Ver Proyecto</a>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Formatos mas utilizados</h5>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur lectus arcu, condimentum eget est eget, lobortis scelerisque risus. Curabitur sed pharetra lorem.</p>
                    <a href="viewProject.jsp" class="btn btn-primary">Ver Proyecto</a>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Formatos especiales</h5>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur lectus arcu, condimentum eget est eget, lobortis scelerisque risus. Curabitur sed pharetra lorem.</p>
                    <a href="viewProject.jsp" class="btn btn-primary">Ver Proyecto</a>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Proyecto de clase</h5>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur lectus arcu, condimentum eget est eget, lobortis scelerisque risus. Curabitur sed pharetra lorem.</p>
                    <a href="viewProject.jsp" class="btn btn-primary">Ver Proyecto</a>
                </div>
            </div>
        </div>
    </div>
</div>
<%
    }
%>