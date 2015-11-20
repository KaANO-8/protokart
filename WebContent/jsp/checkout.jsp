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
<title> Order Successful </title>
</head>

<body>
<%

	Class.forName("com.mysql.jdbc.Driver");
	Connection conn  = DriverManager.getConnection("jdbc:mysql://localhost:3306/protokart","root","");
	PreparedStatement statement = conn.prepareStatement("select * from cart where username='" + session.getAttribute("user") + "'");
	ResultSet result = statement.executeQuery();
	
	while(result.next())
	{
		PreparedStatement query = conn.prepareStatement("insert into orders values('" + result.getString("username") + "', '" + result.getInt("product_id") + "')");
		query.executeUpdate();
		PreparedStatement nquery = conn.prepareStatement("delete from cart where username='" + result.getString("username") + "' and product_id='" + result.getInt("product_id") + "'");
		nquery.executeUpdate();
	}
%>

<h2>
Your order has been successfully placed. <a href="../index.jsp">Click here to shop again.</a></h2>


</body>

</html>