<%@page import="java.io.IOException"%>
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
<title>Protokart</title>
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="../js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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


 <script src="../js/jquery.etalage.min.js"></script> 
<link rel="stylesheet" href="../css/etalage.css">

		<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 900,
					source_image_height: 1200,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});

			});
		</script>

</head>



<body> 



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
				<li ><a href="products.html" >  brands</a></li>
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
				      <li class="active grid"><a  href="products.jsp?category=fashion">fashion</a>
					    <div class="megapanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="products.html">Accessories</a></li>
										<li><a href="products.html">Bags</a></li>
										<li><a href="products.html">Caps & Hats</a></li>
										<li><a href="products.html">Hoodies & Sweatshirts</a></li>
										<li><a href="products.html">Jackets & Coats</a></li>
										<li><a href="products.html">Jeans</a></li>
										<li><a href="products.html">Jewellery</a></li>
										<li><a href="products.html">Jumpers & Cardigans</a></li>
										<li><a href="products.html">Leather Jackets</a></li>
										<li><a href="products.html">Long Sleeve T-Shirts</a></li>
										<li><a href="products.html">Loungewear</a></li>
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="products.html">Shirts</a></li>
										<li><a href="products.html">Shoes, Boots & Trainers</a></li>
										<li><a href="products.html">Shorts</a></li>
										<li><a href="products.html">Suits & Blazers</a></li>
										<li><a href="products.html">Sunglasses</a></li>
										<li><a href="products.html">Sweatpants</a></li>
										<li><a href="products.html">Swimwear</a></li>
										<li><a href="products.html">Trousers & Chinos</a></li>
										<li><a href="products.html">T-Shirts</a></li>
										<li><a href="products.html">Underwear & Socks</a></li>
										<li><a href="products.html">Vests</a></li>
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>Popular Brands</h4>
									<ul>
										<li><a href="products.html">Levis</a></li>
										<li><a href="products.html">Persol</a></li>
										<li><a href="products.html">Nike</a></li>
										<li><a href="products.html">Edwin</a></li>
										<li><a href="products.html">New Balance</a></li>
										<li><a href="products.html">Jack & Jones</a></li>
										<li><a href="products.html">Paul Smith</a></li>
										<li><a href="products.html">Ray-Ban</a></li>
										<li><a href="products.html">Wood Wood</a></li>
									</ul>	
								</div>												
							</div>
						  </div>
						</div>
					</li>
					<li><a   href="products.jsp?category=furniture">furniture & decor</a>
					 <div class="megapanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="decor.html">Bed</a></li>
										<li><a href="decor.html">Chest</a></li>
										<li><a href="decor.html">Stool & Reider</a></li>
										<li><a href="decor.html">Chair & Carpet</a></li>
										<li><a href="decor.html">Curtain & Brix</a></li>
										<li><a href="decor.html">Shelf</a></li>
										<li><a href="decor.html">Desk</a></li>
										<li><a href="decor.html">Sofa & Anson</a></li>
										<li><a href="decor.html">Bench</a></li>
										<li><a href="decor.html">Sink</a></li>
										<li><a href="decor.html">Lamp</a></li>
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="decor.html">Armchair</a></li>
										<li><a href="decor.html">Reider Bench</a></li>
										<li><a href="decor.html">Carpet & Desk</a></li>
										<li><a href="decor.html">Wardrobe & Lamp</a></li>
										<li><a href="decor.html">Car seat</a></li>
										<li><a href="decor.html">Lounger</a></li>
										<li><a href="decor.html">Anson</a></li>
										<li><a href="decor.html">Karlstad</a></li>
										<li><a href="decor.html">Camilla & Wardrobe</a></li>
										<li><a href="decor.html">Colton</a></li>
										<li><a href="decor.html">Brix</a></li>
									</ul>	
								</div>							
							</div>
						  </div>
						</div></li>
				    <li class="grid"><a  href="products.jsp?category=mobiles">mobiles & tablets</a>
					   <div class="megapanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="mobile.html">Lenovo Tablets</a></li>
										<li><a href="mobile.html">Motorola</a></li>
										<li><a href="mobile.html">Samsung </a></li>
										<li><a href="mobile.html">Htc Tab</a></li>
										<li><a href="mobile.html">Dell & Compaq</a></li>
										<li><a href="mobile.html">Asus Tablets</a></li>
										<li><a href="mobile.html">Microsoft</a></li>
										<li><a href="mobile.html">Moto E & Moto G</a></li>
										<li><a href="mobile.html">Intex</a></li>
										<li><a href="mobile.html">Hauwei Lumia</a></li>
										<li><a href="mobile.html">Loungewear</a></li>
									</ul>	
								</div>							
							</div>
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="mobile.html">Asus Zenfone 2</a></li>
										<li><a href="mobile.html">Nikon & Sony</a></li>
										<li><a href="mobile.html">Shorts</a></li>
										<li><a href="mobile.html">Olymplus</a></li>
										<li><a href="mobile.html">Sunglasses</a></li>
										<li><a href="mobile.html">Samsung Nx</a></li>
										<li><a href="mobile.html">Printers & Monitors</a></li>
										<li><a href="mobile.html">Routers</a></li>
										<li><a href="mobile.html">Data Cards</a></li>
										<li><a href="mobile.html">Mouse & Keyboard</a></li>
										<li><a href="mobile.html">Ink Cartridges</a></li>
									</ul>	
								</div>							
							</div>
						  </div>
						</div>
			    </li>
						 <li class="grid"><a  href="products.jsp?category=health">health & beauty</a>					  
			    </li>		
			    
				<li><a  href="products.jsp?category=tgc">tvs, gaming & cameras</a>
				  </li>
			
				
			  </ul> 
				</div>
			<div class="cart box_1">
						<a href="checkout.html">
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



	<div class="container">
	
		<div class="single" >
		
			<%
					
					String productid =  request.getParameter("productid");
					
					Class.forName("com.mysql.jdbc.Driver");
			
					
					Connection conn  = DriverManager.getConnection("jdbc:mysql://localhost:3306/protokart","root","");
					
					PreparedStatement statement = conn.prepareStatement("select * from products where product_id='"+productid+"'");
					
					ResultSet result = statement.executeQuery();
					
					
					while(result.next())
					{
		
		
					
					
			%>
		
								<div class="col-md-9 top-in-single" style="padding-top:40px;">
								
								
									<div class="col-md-5 single-top">	
										<ul id="etalage">
											<li>
												<a href="optionallink.html">
													<img id="etalage" class="etalage_thumb_image img-responsive" src="../images/<%out.println(result.getString(8));%>" alt="" >
													<img class="etalage_source_image img-responsive" src="../images/<%out.println(result.getString(8));%>" alt="" >
												</a>
											</li>
										</ul>
				
									</div>	
									
									
									
									<div class="col-md-7 single-top-in">
										<div class="single-para">
											<h4><%out.println(result.getString(2));%></h4>
											<p><%out.println(result.getString(5));%></p>
											<div class="star-on">
												<ul>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
													<li><a href="#"><i> </i></a></li>
												</ul>
												<div class="review">
													<a href="#"> 3 reviews </a>/
													<a href="#">  Write a review</a>
												</div>
											<div class="clearfix"> </div>
											</div>
											
												<label  class="add-to">Rs. <%out.println(result.getString(3));%></label>
											
											<div class="available">
												<h6>Available Options :</h6>
												<ul>
													
												<li>Size:<select>
													<option>Large</option>
													<option>Medium</option>
													<option>small</option>
													<option>Large</option>
													<option>small</option>
												</select></li>
												<li>Cost:
														<select>
														<option>U.S.Dollar</option>
														<option>Euro</option>
													</select></li>
											</ul>
										</div>
											
											<a href="cart.jsp?productid=<%request.getParameter("productid");%>" class="cart ">Add to cart</a>
											
										</div>
									</div>
								<div class="clearfix"> </div>
								  <!----- tabs-box ---->
						<div class="sap_tabs">	
								     <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
										  <ul class="resp-tabs-list">
										  	  <li class="resp-tab-item "><span>Product Reviews</span></li>
											  <div class="clearfix"></div>
										  </ul>				  	 
											<div class="resp-tabs-container">
											    <h2 class="resp-accordion resp-tab-active"><span class="resp-arrow"></span>Product Description</h2>
											    	<div class="tab-1 resp-tab-content resp-tab-content-active" style="display:block">
													<div class="facts">
													  <p > <%out.println(result.getString(10));%></p>       
											        </div>
											    	</div>
											      
									      </div>
									 </div>
				</div>
								</div>
								<div class="col-md-3 at-single">
									<div class="single-bottom">
										<h4>Brands</h4>
										<ul>
										<li>
											<input type="checkbox"  id="brand" value="">
											<label for="brand"><span></span> Contrary belief</label>
										</li>
										<li>
											<input type="checkbox"  id="brand1" value="">
											<label for="brand1"><span></span> Lorem Ipsum</label>
										</li>
										<li>
											<input type="checkbox"  id="brand2" value="">
											<label for="brand2"><span></span> Fusce feugiat</label>
										</li>
										<li>
											<input type="checkbox"  id="brand3" value="">
											<label for="brand3"><span></span> Contrary belief</label>
										</li>
										<li>
											<input type="checkbox"  id="brand4" value="">
											<label for="brand4"><span></span>Injected humour</label>
										</li>
										</ul>
									</div>
									<div class="single-bottom">
										<h4>Colors</h4>
										<ul>
										<li>
											<input type="checkbox"  id="color" value="">
											<label for="color"><span></span> Red</label>
										</li>
										<li>
											<input type="checkbox"  id="color1" value="">
											<label for="color1"><span></span> Blue</label>
										</li>
										<li>
											<input type="checkbox"  id="color2" value="">
											<label for="color2"><span></span> Black</label>
										</li>
										<li>
											<input type="checkbox"  id="color3" value="">
											<label for="color3"><span></span> White</label>
										</li>
										<li>
											<input type="checkbox"  id="color4" value="">
											<label for="color4"><span></span>Green</label>
										</li>
										</ul>
									</div>
									
									
									<div class="single-bottom">
										<h4>Product Categories</h4>
										
										<%
										
										String category = result.getString(6);
										PreparedStatement statement2 = conn.prepareStatement("select * from products where categ='"+category+"' limit 2");
										
										ResultSet result2 = statement2.executeQuery();
										
										while(result2.next())
										{
											%>
											<div class="product-go">
												<img class="img-responsive fashion" src="../images/<%out.println(result2.getString(8));%>" alt="">
											<div class="grid-product">
												<a href="single.jsp?productid=<% out.println(result2.getString(1));%>" class="elit"><%out.println(result2.getString(2));%></a>
												<span>Rs. <%out.println(result2.getString(3));%></span>
											</div>
											<div class="clearfix"> </div>
										<%} %>
											
								</div>
								</div>
								<div class="clearfix"> </div>		
								
			<%
			}
			%>					
								
			</div>
			<!---->	
	</div>




	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="col-md-3 footer-left">
				<a href="index.html"><img src="../images/logo.png" alt=""></a>
				<p class="footer-class">� 2015 Markito All Rights Reserved | Template by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
			</div>
			<div class="col-md-2 footer-middle">
				<ul>
					<li><a href="404.html">about us</a> </li>
					<li><a href="contact.html">   contact us</a></li>
					<li ><a href="products.html" >  our stores</a></li>
				</ul>
			</div>
			<div class="col-md-4 footer-left">
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
							
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</div>

</body>
</html>