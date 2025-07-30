<%-- 
    Document   : rUsuario1
    Created on : 30/07/2025, 11:21:09 AM
    Author     : anton
--%>
<%@include file="conexion.jsp" %>


<% 
    String nombre = request.getParameter("nombre");//valores vienen desde formulario
    String puesto = request.getParameter("puesto");//VALORES VIENEN DESE FORMULARIO
    String dias_tra = request.getParameter("dias_tra");//valores vienen desde formulario
    String sueldo_dias = request.getParameter("sueldo_dias");//valores vienen desde formulario
    
    st=conexion.prepareStatement("INSERT INTO usuarios values (null,?,?,?,?)");
    st.setString(1, nombre);
    st.setString(2, puesto);
    st.setString(3, dias_tra);
    st.setString(4, sueldo_dias);
    
    st.execute();
    conexion.close();
    //response.sendRedirect("index.jsp"); 
     response.sendRedirect("index.jsp");
        out.println("<meta http-equiv='refresh' content='0;url=menu.jsp'"); //actualizar pagina

    
%>


   

