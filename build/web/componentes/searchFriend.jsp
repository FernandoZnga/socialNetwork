<%-- 
    Document   : searchFriend
    Created on : Sep 1, 2018, 5:24:08 PM
    Author     : fernando
--%>

<%
    if (request.getParameter("searchFriend") != null) {
%>
<br>
<div class="container">
    <form class="form-inline">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
</div>
</form>
<br>
<div class="container">
    <div class="row">
        <div class="card-deck">
            <div class="col-sm-3">
                <div class="card">
                    <img class="card-img-top" src="https://robohash.org/find" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        <button type="button" class="btn btn-success btn-sm btn-block">Agregar Amigo</button>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="card">
                    <img class="card-img-top" src="https://robohash.org/text" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        <button type="button" class="btn btn-success btn-sm btn-block">Agregar Amigo</button>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="card">
                    <img class="card-img-top" src="https://robohash.org/new" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text additional content. This card has even longer content than the first to show that equal height action.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        <button type="button" class="btn btn-success btn-sm btn-block">Agregar Amigo</button>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="card">
                    <img class="card-img-top" src="https://robohash.org/other" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer action.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        <button type="button" class="btn btn-success btn-sm btn-block">Agregar Amigo</button>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="card">
                    <img class="card-img-top" src="https://robohash.org/random" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural longer content than the first to show that equal height action.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        <button type="button" class="btn btn-success btn-sm btn-block">Agregar Amigo</button>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="card">
                    <img class="card-img-top" src="https://robohash.org/window" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content than the first to show that equal height action.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        <button type="button" class="btn btn-success btn-sm btn-block">Agregar Amigo</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%
    }
%>
