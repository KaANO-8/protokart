
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
<title>Login Successful</title>
</head>
<body>
<%

 String user =  request.getParameter("username");
 String pwd = request.getParameter("password");

  //The following try catch statements are for encrypting the password  
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
	
	PreparedStatement statement = conn.prepareStatement("select * from users where username='"+user+"'");
	
	ResultSet result = statement.executeQuery();
	
	while(result.next())
	{
	   if(pwd.equals(result.getString(4)))
	   {
		   session.setAttribute( "user", user ); 
		   if(user.equals("admin"))
		   {
			   String site = new String("../jsp/admin.jsp");
			   response.setStatus(response.SC_MOVED_TEMPORARILY);
			   response.setHeader("Location", site);  
		   }
		   else
		   {
			   String site = new String("../index.jsp");
			   response.setStatus(response.SC_MOVED_TEMPORARILY);
			   response.setHeader("Location", site);
		   }
	   }
	   else
	   {
		  out.println("Incorrect Login Credentials!");
	   }
	}
%>


</body>
</html>