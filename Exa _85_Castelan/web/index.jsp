<%-- 
    Document   : index
    Created on : 30/07/2025, 11:21:09 AM
    Author     : anton
--%>
<jsp:include page="includes/header.jsp"/>
<jsp:include page="includes/nav.jsp"/>




<br> <%--salto de linea --%>    
<div class="container"> 
    <center>

        <h4>Empresa CASTELAN SA de CV</h4>
        <br>
    </center>  
    <%@include file="conexion.jsp"%><%--lalamda a la conexion BD --%>
   
    <%--maquetacion por row (filas) y col (columnas) --%>
   
    <div class="row col-md-12" > <!--inicia fila 1 -->
        <table class="table table-striped table-bordered table-hover" style="text-align: center">
            <thead><!--inicia cabesera de tabla -->
                <tr>
                    <th style="text-align: center">NO EMPLEADO</th>
                    <th style="text-align: center">NOMBRE</th>
                    <th style="text-align: center">PUESTO</th>
                    <th style="text-align: center">DIAS TRABAJO</th>
                    <th style="text-align: center">SUELDO X DIA</th>
                    
                    <th style="text-align: center">ELIMINAR</th>
                    <th style="text-align: center">EDICION</th>
                </tr>
            </thead><!--termina cabesera de tabla -->
            <tbody>

                <% //inicia scriplet (codigo java)                           
                    st = conexion.prepareStatement("select * from usuarios");
                    rs = st.executeQuery();
                    while (rs.next()) {//inicia while
                //termina scriplet (codigo java)
                %>  
                <tr>
                    <td><%=rs.getString("id_empleado")%></td>
                    <td><%=rs.getString("nombre")%></td>
                    <td><%=rs.getString("puesto")%></td>
                    <td><%=rs.getString("dias_tra")%></td>
                    <td><%=rs.getString("sueldo_dias")%></td>

                    <td><a class="btn btn-danger" href="eliminar.jsp?id_empleado=<%=rs.getString("id_empleado")%>">Eliminar</a></td>
                    <td><a class="btn btn-success" href="editarUsuario.jsp?id_empleado=<%= rs.getString(1)%>&nombre=<%= rs.getString(2)%>&puesto=<%= rs.getString(3)%>&dias_tra=<%= rs.getString(4)%>&sueldo_dias=<%= rs.getString(5)%>">Editar</a></td>
                </tr>
                <%
                            }//termina while  
                %>
            </tbody>
        </table> <!--termina cuerpo de la tabla -->
    </div> <!--termina fila 1 -->
<%--termina maquetacion filas y columnas --%>
</div>          <%--termina contenedors pricncipal --%>  

<center>  <h4>Fecha y hora del sistema : <%= new java.util.Date()%></h4></center>    


</center>
<jsp:include page="includes/footer.jsp"/>
