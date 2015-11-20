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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Products</title>
</head>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
}
</style>
<body>

<table style="width:100%">
  <tr>
    <th>Product_id</th>
    <th>Name</th>		
    <th>Price</th>
    <th>Quantity</th>
    <th>Description</th>
    <th>Category</th>
    <th>Tags</th>
    <th>Options</th>
  </tr>
  <%
Class.forName("com.mysql.jdbc.Driver");

Connection conn  = DriverManager.getConnection("jdbc:mysql://localhost:3306/protokart","root","");

PreparedStatement statement = conn.prepareStatement("select * from products");

ResultSet result = statement.executeQuery();

while(result.next())
{
	
%>
  <tr>
    <td><% out.println(result.getString(1));%></td>
    <td><%out.println(result.getString(2));%></td>
    <td><%out.println(result.getString(3));%></td>
    <td><%out.println(result.getString(4));%></td>
    <td><%out.println(result.getString(5));%></td>
    <td><%out.println(result.getString(6));%></td>
    <td><%out.println(result.getString(7));%></td>
    <td><%out.println(result.getString(9));%></td>
    <td><p><a href="delete_product.jsp?productid=<% out.println(result.getString(1));%>">Delete</a></p></td>
    <td><p><a href="update_product.jsp?productid=<% out.println(result.getString(1));%>">Update</a></p></td>
  </tr>
  
  
  <%} %>
</table>

</body>
</html>