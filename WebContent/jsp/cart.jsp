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

<!DOCTYPE html>
<html>
<head>
<title>Markito A Ecommerce Category Flat Bootstarp Resposive Website Template | Home :: w3layouts</title>
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="../js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Markito Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Amaranth:400,700' rel='stylesheet' type='text/css'>
<!--//fonts-->

<script type="text/javascript" src="../js/move-top.js"></script>
<script type="text/javascript" src="../js/easing.js"></script>
<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
				</script>
<!-- start menu -->
<link href="../css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="../js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>

<script src="../js/simpleCart.min.js"> </script>
</head>


<body> 
<%
 		if(session.getAttribute("user") == null)
 		{
 			String site = new String("../html/login.html");
 		   	response.setStatus(response.SC_MOVED_TEMPORARILY);
 		   	response.setHeader("Location", site); 
 		}
  		
  		Class.forName("com.mysql.jdbc.Driver");
	Connection conn  = DriverManager.getConnection("jdbc:mysql://localhost:3306/protokart","root","");
	String product_id;// = request.getParameter("productid");
	if(request.getParameter("productid")!=null)
	{
		product_id = request.getParameter("productid");
		PreparedStatement statement = conn.prepareStatement("insert into cart values ('" + session.getAttribute("user") + "', '" + product_id +"')");
		statement.executeUpdate();
	}
	/*PreparedStatement statement = conn.prepareStatement("select * from cart where username='" + session.getAttribute("user")+"'");
	ResultSet result = statement.executeQuery();
	int total = 0;
	int discount = 0;		
	while(result.next())
	{
		
		int product_id = result.getInt("product_id");
		PreparedStatement query = conn.prepareStatement("select * from products where product_id='" + product_id + "'");
		ResultSet query_result = query.executeQuery();
		while(query_result.next())
		{
			total += query_result.getInt("price");
			discount += query_result.getInt("price") * query_result.getInt("discount") / 100;
		}
	}*/
	
	
	
	
	
%>



<!--header-->	
<div class="header" >
	<div class="top-header" >		
		<div class="container">
		<div class="top-head" >
			<div class="header-para">
				<ul class="social-in">
					<li><a href="#"><i> </i></a></li>						
					<li><a href="#"><i class="ic"> </i></a></li>
					<li><a href="#"><i class="ic1"> </i></a></li>
					
				</ul>			
			</div>	
			
			<ul class="header-in">
				<li ><a href="products.jsp" >  brands</a></li>
				<li><a href="404.html">about us</a> </li>
				<li><a href="contact.html">   contact us</a></li>
				<li ><a href="#" >   how to use</a></li>
			</ul>
			<div class="search-top">
				<div class="search">
					<form>
						<input type="text" value="search about something ?" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'search about something ?';}" >
						<input type="submit" value="" >
					</form>
				</div>
				
				<div class="world">
					<ul >
						<li><a href="#"><span> </span></a> </li>
						<li><select class="in-drop">
							  <option>EN</option>
							  <option>DE</option>
							  <option>ES</option>
							</select>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
				<div class="clearfix"> </div>
		</div>
		</div>
	</div>
		<!---->
	
		<div class="header-top">
		<div class="container">
		<div class="head-top">
			<div class="logo">
				<a href="../index.jsp"><img src="../images/logo.png" alt="" ></a>
			</div>
		<div class="top-nav">
			  <ul class="megamenu skyblue">
				      <li class="active grid"><a  href="products.jsp">fashion</a> </li>
					<li><a   href="decor.html">furniture & decor</a> </li>
				    <li class="grid"><a  href="mobile.html">mobiles & tablets</a> </li>
					<li class="grid"><a  href="health.html">health & beauty</a> </li>		
				<li><a  href="products.jsp">tvs, gaming & cameras</a> </li>
			
				
			  </ul> 
				</div>
				<div class="cart box_1">
						<a href="cart.jsp">
						<h3> <div class="total">
							<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
							<img src="../images/cart.png" alt=""/></h3>
						</a>
						<p><a href="javascript:;" class="simpleCart_empty"><img src="../images/cart-c.png"  alt=""></a></p>
						<div class="clearfix"> </div>
					</div>

				<div class="clearfix"> </div>
		</div>
		</div>
	</div>
</div>
<!--banner-->
<div class="container">
	<div class="check">	 
		<div class="col-md-3 cart-total">
			 <a class="continue" href="#">Continue to basket</a>
			 <div class="price-details">
				 <h3>Price Details</h3>
				 <span>Total</span>
				 <span class="total1">2298</span>
				 <span>Discount</span>
				 <span class="total1">229</span>
				 <span>Delivery Charges</span>
				 <span class="total1">100</span>
				 <div class="clearfix"></div>				 
			 </div>	
			 <ul class="total_price">
			   <li class="last_price"> <h4>TOTAL</h4></li>	
			   <li class="last_price"><span>2169</span></li>
			   <div class="clearfix"> </div>
			 </ul>
			
			 
			 <div class="clearfix"></div>
			 <a class="order" href="checkout.jsp">Place Order</a>
			 <div class="total-item">
				 <h3>OPTIONS</h3>
				 <h4>COUPONS</h4>
				 <a class="cpns" href="#">Apply Coupons</a>
				 <p><a href="#">Log In</a> to use accounts - linked coupons</p>
			 </div>
			</div>
		 <div class="col-md-9 cart-items">
			 <h1>My Shopping Cart</h1>
			   
			   <%
			   		
					PreparedStatement nstatement = conn.prepareStatement("select * from cart where username='" + session.getAttribute("user")+"'");
					ResultSet nresult = nstatement.executeQuery();
					int total = 0;
					int discount = 0;
					int delivery = 0;
						
				while(nresult.next())
				{
					
					int nproduct_id = nresult.getInt("product_id");
					PreparedStatement nquery = conn.prepareStatement("select * from products where product_id='" + nproduct_id + "'");
					ResultSet nquery_result = nquery.executeQuery();
					while(nquery_result.next())
					{
						
						total += nquery_result.getInt("price");
						discount += nquery_result.getInt("price") * nquery_result.getInt("discount") / 100;
						delivery += 50;
			%>
			<div class="cart-header">
				<a href="delete_cart.jsp?product_id=<% out.println(nproduct_id); %>"> <div class="close1"></div> </a>
				 <div class="cart-sec simpleCart_shelfItem">
						<div class="cart-item cyc">
							 <img src="../images/<% out.println("../images/" + nquery_result.getString("image")); %>" class="img-responsive" alt=""/>
						</div>
					   <div class="cart-item-info">
						<h3><a href="#"><% out.println(nquery_result.getString("name") + "(ID: " + nquery_result.getString("product_id") + ")"); %></a><span>Tags: <% out.println(nquery_result.getString("tags")); %></span></h3>
						<ul class="qty">
							<li><p>Discount : <% out.println(nquery_result.getString("discount") + "%"); %></p></li>
							<li><p>Qty : 1</p></li>
						</ul>
						
							 <div class="delivery">
							 <p>Price : <% out.println(nquery_result.getString("price")); %></p>
							 <span>Delivered in 2-3 business days</span>
							 <div class="clearfix"></div>
				        </div>	
					   </div>
					   <div class="clearfix"></div>
				<% 
					} 
				}
				%>					
				  </div>
			 </div>		
		 </div>			
		
			<div class="clearfix"> </div>
	 </div>
	 </div>

	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="col-md-3 footer-left">
				<a href="../index.jsp"><img src="../images/logo.png" alt=""></a>
				<p class="footer-class">© 2015 Markito All Rights Reserved </p>
			</div>
			<div class="col-md-2 footer-middle">
				<ul>
					<li><a href="404.html">about us</a> </li>
					<li><a href="contact.html">   contact us</a></li>
					<li ><a href="products.jsp" >  our stores</a></li>
				</ul>
			</div>
			<div class="col-md-4 footer-left-in">
				<ul class="term">
					<li><a href="#">terms and conditions</a> </li>
					<li><a href="#">  markito in the press</a></li>
					<li ><a href="#" >  testimonials</a></li>	
				</ul>
				<ul class="term">
					<li><a href="#">join us</a> </li>
					<li><a href="#">  markito videos</a></li>
					
				</ul>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-3 footer-right">
				<h5>WE SUPPORT</h5>
				<ul>
					<li><a href="#"><i> </i></a> </li>
					<li><a href="#"><i class="we"> </i></a></li>
					<li ><a href="#" ><i class="we-in"> </i></a></li>
					<li ><a href="#" ><i class="we-at"> </i></a></li>
					<li ><a href="#" ><i class="we-at-at"> </i></a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
		<script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

	</div>

</body>
</html>