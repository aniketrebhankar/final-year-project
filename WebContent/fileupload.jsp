<!doctype html>
<%@ page import="com.servlet.Login" %>
<%@ page import="java.util.*" %>

<html lang="en" class="no-js">
<head>
	<title>LOGIN</title>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href='http://fonts.googleapis.com/css?family=Montserrat:300,400,700' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,400italic' rel='stylesheet' type='text/css'>
	
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" media="screen">	
	<link rel="stylesheet" type="text/css" href="css/owl.carousel.css" media="screen">
    <link rel="stylesheet" type="text/css" href="css/owl.theme.css" media="screen">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css" media="screen">
	<link rel="stylesheet" type="text/css" href="css/style.css" media="screen">
<link rel="stylesheet" href="css/style1.css">
  <link rel="stylesheet" href="css/set1.css">

  <!--Google Fonts-->
  <link href='https://fonts.googleapis.com/css?family=Playfair+Display' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>

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
								<ul class="info-list">
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
								</ul>
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
<!-- 						<a class="navbar-brand" href="index.html"><img src="images/logo.png" alt=""></a> -->
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav navbar-right">
<!-- 							<li><a  href="Index.jsp">Home</a></li> -->
							<li><a  href="login.jsp">Back</a></li> 
							<li><a href="view.jsp">view</a></li>
							<li><a href="Inbox.jsp">Inbox</a></li>
							<li><a href="Logout.jsp">Logout</a></li>
							
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
			<%Random r= new Random(); 
				
				String key="ABCDEF123456789";
				char c=key.charAt(r.nextInt(key.length()));
				char c1=key.charAt(r.nextInt(key.length()));
				char c2=key.charAt(r.nextInt(key.length()));
				char c3=key.charAt(r.nextInt(key.length()));
				char c4=key.charAt(r.nextInt(key.length()));
				char c5=key.charAt(r.nextInt(key.length()));
				
				String Secretkey=""+c+""+c1+""+c2+""+c3+""+c4+""+c5;
				System.out.print(Secretkey);
				
				HttpSession session2=request.getSession();
				session.setAttribute( "key",Secretkey);
				
				
				%>
			
			
			
			
		<section class="page-banner-section">
			<div class="container">
				<h1 style="float: left;">FILE UPLOAD PAGE</h1>
			</div>
		</section>
		
		<div id="main-wrapper">

  <div class="container-fluid">
    <div class="row">
      <div class="col-md-6 left-side">
        <header>
          <span>Need an account?</span>
          <h3>Create Account<br>Make Profits</h3>
        </header>
      </div>
      <form action="Upload" method="post" enctype="multipart/form-data">
      <div class="col-md-6 right-side">
        <span class="input input--hoshi">
          <input class="input__field input__field--hoshi" type="text" id="productid"  name="productid" required="required"/>
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="productid">
            <span class="input__label-content input__label-content--hoshi">PRODUCTID</span>
          </label>
        </span>
        <span class="input input--hoshi">
          <input class="input__field input__field--hoshi" type="text" id="productname" name="productname" required="required" />
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="productname">
            <span class="input__label-content input__label-content--hoshi">PRODUCTNAME</span>
          </label>
        </span>
        <span class="input input--hoshi">
          <input class="input__field input__field--hoshi" type="text" id="cost"  name="cost" required="required"/>
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="cost">
            <span class="input__label-content input__label-content--hoshi">COST</span>
          </label>
        </span>
        <span class="input input--hoshi">
          <input class="input__field input__field--hoshi" type="text" id="netweight" name="netweight" required="required" />
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="netweight">
            <span class="input__label-content input__label-content--hoshi">NETWEIGHT</span>
          </label>
        </span>
 
        <span class="input input--hoshi">
          <input class="input__field input__field--hoshi" type="text" id="expirydate" name="expirydate" required="required" />
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="expirydate">
            <span class="input__label-content input__label-content--hoshi">EXPIRYDATE</span>
          </label>
        </span>
        <span class="input input--hoshi">
          <input class="input__field input__field--hoshi" type="text" id="maxpieces" name="maxpieces" required="required" />
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="maxpieces">
            <span class="input__label-content input__label-content--hoshi">MAXPIECES</span>
          </label>
        </span>
        <span class="input input--hoshi">
          <input class="input__field input__field--hoshi" type="text" id="customsname" name="customsname" required="required" />
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="customsname">
            <span class="input__label-content input__label-content--hoshi">CUSTOMSNAME</span>
          </label>
        </span>
        <span class="input input--hoshi">
          <input class="input__field input__field--hoshi" type="text" id="company" name="company" required="required" />
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="company">
            <span class="input__label-content input__label-content--hoshi">COMPANY</span>
          </label>
        </span>
        <span class="input input--hoshi">
          <input class="input__field input__field--hoshi" type="text" id="country" name="country" required="required" />
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="country">
            <span class="input__label-content input__label-content--hoshi">COUNTRY</span>
          </label>
        </span>
        <h5>File Secret Key:</h5><input type="text" readonly="readonly" name="secretkey" value="<%=Secretkey%>"/><br> <br>
        <input type="file" name="file"> <br> <br>
        <div class="cta">
          <button class="btn btn-primary pull-left">
           Upload Now
          </button>
<!--          <span><a href="Login.jsp">I am already a member</a></span>  -->
        </div>
<!--         <ul class="social list-inline"> -->
<!--           <li><a href="#">Facebook</a></li> -->
<!--           <li><a href="#">Twitter</a></li> -->
<!--           <li><a href="#">Linkedin</a></li> -->
<!--         </ul> -->
      </div>
      </form>
    </div>
  </div>

</div> <!-- end #main-wrapper -->

<!-- Scripts -->

		
		
		
		
		
		
		
		
		
		
		<!-- End page-banner section -->

		<!-- about section 
			================================================== -->
<!-- 		
		<!-- End team section -->

		<!-- subcribe-section 
			================================================== -->
<!-- 		

		<!-- footer 
			================================================== -->
<!-- 		<footer> -->
<!-- 			<div class="container"> -->
<!-- 				<div class="row"> -->
<!-- 					<div class="col-md-4"> -->
<!-- 						<div class="contact-info"> -->
<!-- 							<h2><i class="fa fa-location-arrow"></i> Our Address</h2> -->
<!-- 							<p>Your Company Name JSC1332 Your Street,</br>City World, US49 Chameleon, CA.</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-md-4"> -->
<!-- 						<div class="contact-info"> -->
<!-- 							<h2><i class="fa fa-envelope-o"></i> Contact Us</h2> -->
<!-- 							<p>+1 223 334 3434 <br> info@yourcompany.com</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-md-4"> -->
<!-- 						<div class="contact-info"> -->
<!-- 							<h2><i class="fa fa-clock-o"></i> Office hours</h2> -->
<!-- 							<p>Monday to Friday: 8:00 - 19:00 <br> Saturday, Sunday: 9:00 - 14:00</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</footer> -->
		<!-- End footer -->

	</div>
	<!-- End Container -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="js/scripts.js"></script>
<script src="js/classie.js"></script>
<script>
  (function() {
    // trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
    if (!String.prototype.trim) {
      (function() {
        // Make sure we trim BOM and NBSP
        var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
        String.prototype.trim = function() {
          return this.replace(rtrim, '');
        };
      })();
    }

    [].slice.call( document.querySelectorAll( 'input.input__field' ) ).forEach( function( inputEl ) {
      // in case the input is already filled..
      if( inputEl.value.trim() !== '' ) {
        classie.add( inputEl.parentNode, 'input--filled' );
      }

      // events:
      inputEl.addEventListener( 'focus', onInputFocus );
      inputEl.addEventListener( 'blur', onInputBlur );
    } );

    function onInputFocus( ev ) {
      classie.add( ev.target.parentNode, 'input--filled' );
    }

    function onInputBlur( ev ) {
      if( ev.target.value.trim() === '' ) {
        classie.remove( ev.target.parentNode, 'input--filled' );
      }
    }
  })();
</script>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.migrate.js"></script>
	<script type="text/javascript" src="js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.imagesloaded.min.js"></script>
	<script type="text/javascript" src="js/retina-1.1.0.min.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	
</body>
</html>