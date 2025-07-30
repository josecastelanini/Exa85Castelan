<%-- 
    Document   : editarUsuario
    Created on : 30/07/2025, 11:28:58 AM
    Author     : anton
--%>

<jsp:include page="includes/header.jsp"/>
<jsp:include page="includes/nav.jsp"/>
<%@include file="conexion.jsp" %> 


<% //variables desde programacion a aspectos boton editar en index.jsp             
    int id_empleado = Integer.parseInt(request.getParameter("id_empleado"));
    String nombre = request.getParameter("nombre");
    String puesto = request.getParameter("puesto");
    String dias_tra = request.getParameter("dias_tra");
    String sueldo_dias = request.getParameter("sueldo_dias");
%>

<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <form method="post" action="editarUsuario.jsp">
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
                        <h3 class="title">Editar Empleado </h3>
                    </div>
                    
                    <div class="form-group">
                        <label for="nombre">Modificar Nombre</label>
                        <input type="text" class="form-control" id="nombre" value="<%=nombre%>" name="nombre" placeholder="nombre editar" required="required">
                    </div>


                    <div class="form-group">
                        <label for="puesto">Editar Puesto</label>
                        <input type="text" class="form-control" id="puesto" value="<%=puesto%>"  name="puesto" placeholder="puesto editar" required="required">
                    </div>

                    <div class="form-group">
                        <label for="dias_tra">Editar dias trabajados</label>
                        <input type="text" class="form-control" id="dias_tra" value="<%=dias_tra%>"  name="dias_tra" placeholder="dias_tra editar" required="required">
                    </div>
                    
                    <div class="form-group">
                        <label for="sueldo_dias">Editar Sueldo</label>
                        <input type="text" class="form-control" id="sueldo_dias" value="<%=sueldo_dias%>"  name="sueldo_dias" placeholder="sueldo_dias editar" required="required">
                    </div>



                    <center><input type="submit" class="primary-btn order-submit" name="enviar" value="Editar"></center>
                    <input type="hidden" name="id_empleado" value="<%=id_empleado%>" >
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


<%
    if (request.getParameter("enviar") != null) {
        try {
            PreparedStatement ps;
            ps = conexion.prepareStatement("update usuarios set nombre='" + nombre + "', puesto='" + puesto + "', dias_tra='" + dias_tra + "', sueldo_dias='" + sueldo_dias + "' where id_empleado='" + id_empleado + "';");
            ps.executeUpdate();
            response.sendRedirect("index.jsp");
        } catch (Exception e) {
            out.print(e);
        }
    }
%>


<jsp:include page="includes/footer.jsp"/>

