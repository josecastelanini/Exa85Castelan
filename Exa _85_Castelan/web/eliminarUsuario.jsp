<%-- 
    Document   : eliminarUsuario
    Created on : 30/07/2025, 11:21:09 AM
    Author     : anton
--%>

<%@include file="conexion.jsp" %> 
<% 
    int numeroCodigo=Integer.parseInt(request.getParameter("id_empleado"));
        PreparedStatement ps;
        ps=conexion.prepareCall("DELETE from usuarios WHERE id_empleado = '"+numeroCodigo+"'");
        ps.executeUpdate();
        response.sendRedirect("index.jsp");
        

%>
