<%@page import="java.io.IOException"%>
<%@page import="java.security.NoSuchAlgorithmException"%>
<%@page import="java.io.ObjectOutputStream"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.security.MessageDigest"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	
<%
			   		if(session.getAttribute("user") == null)
			   		{
			   			String site = new String("../html/login.html");
			   		   	response.setStatus(response.SC_MOVED_TEMPORARILY);
			   		   	response.setHeader("Location", site); 
			   		}
			   		
					String product_id = request.getParameter("product_id");
			   		Class.forName("com.mysql.jdbc.Driver");
					Connection conn  = DriverManager.getConnection("jdbc:mysql://localhost:3306/protokart","root","");
					PreparedStatement statement = conn.prepareStatement("delete from cart where username='" + session.getAttribute("user")+"' and product_id='" + product_id + "'");
					statement.executeUpdate();
					String site = new String("cart.jsp");
		   		   	response.setStatus(response.SC_MOVED_TEMPORARILY);
		   		   	response.setHeader("Location", site); 
%>