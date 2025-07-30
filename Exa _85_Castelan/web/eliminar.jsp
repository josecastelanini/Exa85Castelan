<%-- 
    Document   : eliminar
    Created on : 30/07/2025, 11:16:10 AM
    Author     : anton
--%>

<jsp:include page="includes/header.jsp"/>
<jsp:include page="includes/nav.jsp"/>
<%@include file="conexion.jsp" %> 

<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <form method="post" action="eliminarUsuario.jsp">
            <!-- row -->
            <div class="row">
                <!-- Order Details -->
                <div class="col-md-4">

                </div>
                <div class="col-md-4 order-details">
                    <div class="section-title text-center">
                        <a class="logo">
                            <img src="./img/icon/inisesionalum2.jpg" alt="">
                        </a>
                        <br>
                        <h3 class="title">Eliminar Usuario 'CASTELAN'</h3>
                    </div>
                    <div class="form-group">
                        <label>Confirma Id usuario a Borrar</label>
                        <% 
                            int id_usuario = Integer.parseInt(request.getParameter("id_empleado"));
                        %>
                        <input class="input" type="text" value="<%= id_usuario%>" required name="id_empleado">
                    </div>
                    <center><input type="submit" class="primary-btn order-submit" name="btnEliminar" value="Eliminar"></center>
                </div>
                <!-- /Order Details -->
            </div>
            <!-- /row -->
        </form>
    </div>
    <!-- /container -->
    <div>
        <p><center>¿Quieres cancelar? Presiona <a href="index.jsp">Aquí</a></center></p>
    </div>
</div>
<!-- /SECTION -->
