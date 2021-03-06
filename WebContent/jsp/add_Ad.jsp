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
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add a new Ad</title>
</head>
<body>
<%


    String name=null; 
    String desc=null;
    
  File file ;
  int maxFileSize = 5000 * 1024;
  int maxMemSize = 5000 * 1024;
  ServletContext context = pageContext.getServletContext();
  String filePath = context.getInitParameter("file-upload");
  
//Verify the content type
  String contentType = request.getContentType();

  if ((contentType.indexOf("multipart/form-data") >= 0)) {
	 DiskFileItemFactory factory = new DiskFileItemFactory();
     // maximum size that will be stored in memory
     factory.setSizeThreshold(maxMemSize);
     // Location to save data that is larger than maxMemSize.
     factory.setRepository(new File("c:\\temp"));

     // Create a new file upload handler
     ServletFileUpload upload = new ServletFileUpload(factory);
     // maximum file size to be uploaded.
     upload.setSizeMax( maxFileSize );
     try
     {
        // Parse the request to get file items.
        List fileItems = upload.parseRequest(request);
  
        // Process the uploaded file items
        Iterator i = fileItems.iterator();

        while ( i.hasNext () ) 
        {
           FileItem fi = (FileItem)i.next();
           if ( !fi.isFormField () )	
           {
           // Get the uploaded file parameters
           String fieldName = fi.getFieldName();
           String fileName = fi.getName();
           boolean isInMemory = fi.isInMemory();
           long sizeInBytes = fi.getSize();
           // Write the file
           if( fileName.lastIndexOf("\\") >= 0 ){
           file = new File( filePath + 
           fileName.substring( fileName.lastIndexOf("\\"))) ;
           }else{
           file = new File( filePath + 
           fileName.substring(fileName.lastIndexOf("\\")+1)) ;
           }
           fi.write( file ) ;
           filePath = fileName;
           }
           else
           {
        	    String fieldName = fi.getFieldName();
        	    if(fieldName.equals("name"))
        	    {
        	    	name = fi.getString();
        	    }
        	    else if(fieldName.equals("desc"))
        	    {
        	    	desc = fi.getString();
        	    }
           }
        }
     }catch(Exception ex) {
        System.out.println(ex);
     }
  }else{
	  out.println("No file to upload");
   }
  
  Class.forName("com.mysql.jdbc.Driver");
	
  Connection conn  = DriverManager.getConnection("jdbc:mysql://localhost:3306/protokart","root","");

  Statement statement = conn.createStatement();
  
  int i = statement.executeUpdate("insert into ad(name,description,image) values('"+name+"','"+desc+"','"+filePath+"')");  
 
  String site = new String("../jsp/admin.jsp");
  response.setStatus(response.SC_MOVED_TEMPORARILY);
  response.setHeader("Location", site);
%>
</body>
</html>