<%@page import="com.itextpdf.text.log.SysoCounter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
 <%@page import="com.servlet.*" %>
    <%@page import="com.dbcon.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">


<html lang="en" class="no-js">


<head>
	<title>Charicen</title>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href='http://fonts.googleapis.com/css?family=Montserrat:300,400,700' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,400italic' rel='stylesheet' type='text/css'>
	
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" media="screen">	
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css" media="screen">
	<link rel="stylesheet" type="text/css" href="css/style.css" media="screen">

</head>
<body>

	<!-- Container -->
	<div id="container">
		<!-- Header
		    ================================================== -->
		<header class="clearfix">
			<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
				<div class="top-line">
					<div class="container">
						<div class="row">
							<div class="col-md-8">
<!-- 								<ul class="info-list"> -->
<!-- 									<li> -->
<!-- 										<i class="fa fa-globe"></i> -->
<!-- 										Language: <span>English</span> -->
<!-- 									</li> -->
<!-- 									<li> -->
<!-- 										<i class="fa fa-phone"></i> -->
<!-- 										Call us: -->
<!-- 										<span>+1 223 334 3434</span> -->
<!-- 									</li> -->
<!-- 									<li> -->
<!-- 										<i class="fa fa-clock-o"></i> -->
<!-- 										working time: -->
<!-- 										<span>08:00 - 19:00</span> -->
<!-- 									</li> -->
<!-- 								</ul> -->
							</div>	
							<div class="col-md-4">
<!-- 								<ul class="social-icons"> -->
<!-- 									<li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li> -->
<!-- 									<li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li> -->
<!-- 									<li><a class="google" href="#"><i class="fa fa-google-plus"></i></a></li> -->
<!-- 									<li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li> -->
<!-- 									<li><a class="dribble" href="#"><i class="fa fa-dribbble"></i></a></li> -->
<!-- 								</ul> -->
							</div>	
						</div>
					</div>
				</div>
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<!-- <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt=""></a> -->
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
<!-- 							<li><a class="active" href="index.html">Home</a></li> -->
							<li><a href="view.jsp">BACK</a></li>
							<li><a  href="share.jsp">share</a></li> 
							<li><a href="Logout.jsp">Logout</a></li>
<!-- 							<li><a href="blog.html">blog</a></li> -->
							<li><a href="contact.html">Contact</a></li>
<!-- 							<li class="search"><a href="#" class="open-search"><i class="fa fa-search"></i></a> -->
<!-- 								<form class="form-search"> -->
<!-- 									<input type="search" placeholder="Search:"/> -->
<!-- 									<button type="submit"> -->
<!-- 										<i class="fa fa-search"></i> -->
<!-- 									</button> -->
<!-- 								</form> -->
<!-- 							</li> -->
						</ul>
					</div><!-- /.navbar-collapse -->
				</div><!-- /.container-fluid -->
			</nav>
		</header>
		<!-- End Header -->

		<!-- page-banner-section 
			================================================== -->
		<section class="page-banner-section" >
			<div class="container">
			
 				<h1 style="float: left;">share page</h1> 
			</div>
		</section>
		<!-- End page-banner section -->

		<!-- services-section 
			================================================== -->

						
							
							<h1 style="font-size: 30px;">
				<center>
					YOU ARE SUCESSFULLY <span style="color: red">ENCRYPTED</span>
				</center>
			</h1>
			<h1 style="font-size: 30px;">
				
							
				<% String file=request.getParameter("file"); 
				
				System.out.println("66666666666668888888888888888888"+file);
				
				HttpSession see=request.getSession();
				response.getContentType();
				see.setAttribute("file", file);
				
				%>			
							
							
				
							
							
				
		<br><br><br><br><br><br><br><br>
		<br><br><br><br><br><br>
		<!-- footer 
			================================================== -->
		<footer>
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="contact-info">
<!-- 							<h2><i class="fa fa-location-arrow"></i> Our Address</h2> -->
<!-- 							<p>Your Company Name JSC1332 Your Street,</br>City World, US49 Chameleon, CA.</p> -->
						</div>
					</div>
					<div class="col-md-4">
						<div class="contact-info">
<!-- 							<h2><i class="fa fa-envelope-o"></i> Contact Us</h2> -->
<!-- 							<p>+1 223 334 3434 <br> info@yourcompany.com</p> -->
						</div>
					</div>
					<div class="col-md-4">
						<div class="contact-info">
<!-- 							<h2><i class="fa fa-clock-o"></i> Office hours</h2> -->
<!-- 							<p>Monday to Friday: 8:00 - 19:00 <br> Saturday, Sunday: 9:00 - 14:00</p> -->
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- End footer -->

	</div>
	<!-- End Container -->
	
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.migrate.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.imagesloaded.min.js"></script>
	<script type="text/javascript" src="js/retina-1.1.0.min.js"></script>
	<script type="text/javascript" src="js/script.js"></script>

</body>
</html>