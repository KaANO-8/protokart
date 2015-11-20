
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
<title>Signup Successful</title>
</head>
<body>
<%
  String user =  request.getParameter("username");
  String email = request.getParameter("email");
  String pwd = request.getParameter("password");
  String cnfpwd = request.getParameter("cnfpassword");
  String fname = request.getParameter("fname");
  String lname = request.getParameter("lname");
  String gender = request.getParameter("gender");
  
  
  
  
  if(pwd.equals(cnfpwd))
  {
	// The following try catch statements are for encrypting the password  
	try
	{
	  		MessageDigest mdAlgorithm = MessageDigest.getInstance("MD5");
	  		ByteArrayOutputStream baos = new ByteArrayOutputStream();
	  		ObjectOutputStream oos = new ObjectOutputStream(baos);
	  		oos.writeObject(pwd);
	  		mdAlgorithm.update(baos.toByteArray());

	  		byte[] digest = mdAlgorithm.digest();
	  		StringBuffer hexString = new StringBuffer();

	  		for (int i = 0; i < digest.length; i++)
	  		{
	  			String x = Integer.toHexString(0xFF & digest[i]);
	  			if (x.length() < 2) x = "0" + x;
	  			hexString.append(x);
	  		}
	  		pwd=hexString.toString();
	  	}
	
	  	catch(NoSuchAlgorithmException e)
	    { out.println("No such algorithm!"); }
	  	
	    catch(IOException e)
	    { out.println("Exception encountered!"); }
  
	  
   Class.forName("com.mysql.jdbc.Driver");
	
   Connection conn  = DriverManager.getConnection("jdbc:mysql://localhost:3306/protokart","root","");
 
   Statement statement = conn.createStatement();
  
   int i = statement.executeUpdate("insert into users(username,email,password,first_name,last_name,gender) values('"+user+"','"+email+"','"+pwd+"','"+fname+"','"+lname+"','"+gender+"')");  
  
   out.println("Registered Successfully!");
  }
  else
  {
	  out.println("Error : Password and Confirm Password mismatch");
  }
  
%>
</body>
</html>