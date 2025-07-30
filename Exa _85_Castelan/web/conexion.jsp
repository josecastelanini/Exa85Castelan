<%-- 
    Document   : conexion
    Created on : 30/07/2025, 11:21:09 AM
    Author     : anton
--%>
<%@page language="java" import="java.sql.*" %>

<%
       Connection conexion=null;
       PreparedStatement st=null;
       ResultSet rs=null;
    
       Class.forName("com.mysql.jdbc.Driver");
       conexion=DriverManager.getConnection("jdbc:mysql://localhost/base_1erexam_web","root","");

%>

