<!doctype html>


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
							<li><a  href="Index.jsp">Home</a></li>
							<li><a class="active" href="Register.jsp">Register</a></li>
							<li><a href="Login.jsp">Login</a></li>
							<li><a href="Adminlogin.jsp">Admin Login</a></li>
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
		<section class="page-banner-section">
			<div class="container">
				<h1 style="float: left;">REGISTER PAGE</h1>
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
      <form action="Customerreg" method="post">
      <div class="col-md-6 right-side">
        <span class="input input--hoshi">
          <input class="input__field input__field--hoshi" type="text" id="Username"  name="Username" required="required"/>
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="Username">
            <span class="input__label-content input__label-content--hoshi">Name</span>
          </label>
        </span>
        <span class="input input--hoshi">
          <input class="input__field input__field--hoshi" type="text" id="email" name="email" required="required" />
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="email">
            <span class="input__label-content input__label-content--hoshi">E-mail</span>
          </label>
        </span>
        <span class="input input--hoshi">
          <input class="input__field input__field--hoshi" type="password" id="password"  name="password" required="required"/>
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="password">
            <span class="input__label-content input__label-content--hoshi">Password</span>
          </label>
        </span>
        <span class="input input--hoshi">
          <input class="input__field input__field--hoshi" type="password" id="Confirmpassword" name="Confirmpassword" required="required" />
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="Confirmpassword">
            <span class="input__label-content input__label-content--hoshi">Repeat Passowrd</span>
          </label>
        </span>
 
        <span class="input input--hoshi">
          <input class="input__field input__field--hoshi" type="text" id="Mobile" name="Mobile" required="required" />
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="Mobile">
            <span class="input__label-content input__label-content--hoshi">Mobile</span>
          </label>
        </span>
        <div class="cta">
          <button class="btn btn-primary pull-left">
            Sign-Up Now
          </button>
         <span><a href="customer.jsp">I am already a member</a></span> 
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
<!-- 		<section class="about-section"> -->
<!-- 			<div class="container"> -->
<!-- 				<div class="row"> -->
<!-- 					<div class="col-md-6"> -->
<!-- 						<div class="about-post"> -->
<!-- 							<img src="upload/others/5.jpg" alt=""> -->
<!-- 							<h2>Present A Life To A Child</h2> -->
<!-- 							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod -->
<!-- 							tempor incididunt ut labore et dolore magna aliqua.</p> -->
<!-- 							<p>Ut enim ad minim veniam,	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo -->
<!-- 							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse -->
<!-- 							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non -->
<!-- 							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="col-md-6"> -->
<!-- 						<div class="container"> -->
<!-- 				<div class="row"> -->
<!-- 					<div class="col-md-6"> -->
<!-- 						<div class="about-post"> -->
<!-- 							<img src="upload/others/4.jpg" alt=""> -->
<!-- 							<h2>Let's Help Children Together</h2> -->
<!-- 							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod -->
<!-- 							tempor incididunt ut labore et dolore magna aliqua.</p> -->
<!-- 							<p>Ut enim ad minim veniam,	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo -->
<!-- 							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse -->
<!-- 							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non -->
<!-- 							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</section> -->
		<!-- End about section -->

		<!-- choose section 
			================================================== -->
<!-- 		<section class="choose-section"> -->
<!-- 			<div class="container"> -->
<!-- 				<div class="row"> -->
<!-- 					<div class="col-md-6"> -->

<!-- 						<div class="accordion-box"> -->
<!-- 							<h1>Why choose us ?</h1> -->
<!-- 							<p>Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede. </p> -->
<!-- 							<div class="accord-elem active"> -->
<!-- 								<div class="accord-title"> -->
<!-- 									<a class="accord-link" href="#">Mediation & Crisis Management</a> -->
<!-- 								</div> -->
<!-- 								<div class="accord-content"> -->
<!-- 									<p>Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede. Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.</p> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="accord-elem"> -->
<!-- 								<div class="accord-title"> -->
<!-- 									<a class="accord-link" href="#">Adoption & Fostering</a> -->
<!-- 								</div> -->
<!-- 								<div class="accord-content"> -->
<!-- 									<p>Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede. Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.</p> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="accord-elem"> -->
<!-- 								<div class="accord-title"> -->
<!-- 									<a class="accord-link" href="#">Taking Care Of Old People</a> -->
<!-- 								</div> -->
<!-- 								<div class="accord-content"> -->
<!-- 									<p>Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede. Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.</p> -->
<!-- 								</div> -->
<!-- 							</div> -->

<!-- 						</div> -->

<!-- 					</div> -->

<!-- 					<div class="col-md-6"> -->
<!-- 						<div class="banner-consult"> -->
<!-- 							<h1><span>Help multifarious people</span>with your little donation</h1> -->
<!-- 							<p>Have an idea, a dream? We can make it happen.</p> -->
<!-- 							<a href="#">Donate</a> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</section> -->
		<!-- End choose section -->

		<!-- team-section 
			================================================== -->
<!-- 		<section class="team-section"> -->
<!-- 			<div class="container"> -->

<!-- 				<div class="team-box owl-wrapper"> -->
<!-- 					<div class="owl-carousel" data-num="3"> -->
					
<!-- 						<div class="item team-post"> -->
<!-- 							<div class="gallery-team"> -->
<!-- 								<img src="upload/team/1.jpg" alt=""> -->

<!-- 								<ul class="social-list"> -->
<!-- 									<li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li> -->
<!-- 									<li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li> -->
<!-- 									<li><a class="google" href="#"><i class="fa fa-google-plus"></i></a></li> -->
<!-- 									<li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li> -->
<!-- 								</ul> -->
<!-- 							</div> -->

<!-- 							<div class="team-content"> -->
<!-- 								<h2>Besim Dauti</h2> -->
<!-- 								<span>Company Menager</span> -->
<!-- 								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> -->
<!-- 							</div> -->

<!-- 						</div> -->
					
<!-- 						<div class="item team-post"> -->
<!-- 							<div class="gallery-team"> -->
<!-- 								<img src="upload/team/2.jpg" alt=""> -->

<!-- 								<ul class="social-list"> -->
<!-- 									<li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li> -->
<!-- 									<li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li> -->
<!-- 									<li><a class="google" href="#"><i class="fa fa-google-plus"></i></a></li> -->
<!-- 									<li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li> -->
<!-- 								</ul> -->
<!-- 							</div> -->

<!-- 							<div class="team-content"> -->
<!-- 								<h2>John Smith</h2> -->
<!-- 								<span>Architect</span> -->
<!-- 								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> -->
<!-- 							</div> -->

<!-- 						</div> -->
					
<!-- 						<div class="item team-post"> -->
<!-- 							<div class="gallery-team"> -->
<!-- 								<img src="upload/team/3.jpg" alt=""> -->

<!-- 								<ul class="social-list"> -->
<!-- 									<li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li> -->
<!-- 									<li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li> -->
<!-- 									<li><a class="google" href="#"><i class="fa fa-google-plus"></i></a></li> -->
<!-- 									<li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li> -->
<!-- 								</ul> -->
<!-- 							</div> -->

<!-- 							<div class="team-content"> -->
<!-- 								<h2>Kenan Januzi</h2> -->
<!-- 								<span>Krye shef</span> -->
<!-- 								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> -->
<!-- 							</div> -->

<!-- 						</div> -->
					
<!-- 						<div class="item team-post"> -->
<!-- 							<div class="gallery-team"> -->
<!-- 								<img src="upload/team/4.jpg" alt=""> -->

<!-- 								<ul class="social-list"> -->
<!-- 									<li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li> -->
<!-- 									<li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li> -->
<!-- 									<li><a class="google" href="#"><i class="fa fa-google-plus"></i></a></li> -->
<!-- 									<li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li> -->
<!-- 								</ul> -->
<!-- 							</div> -->

<!-- 							<div class="team-content"> -->
<!-- 								<h2>Pajazit Hallaqi</h2> -->
<!-- 								<span>Puntor shpine</span> -->
<!-- 								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> -->
<!-- 							</div> -->

<!-- 						</div> -->

<!-- 					</div> -->
<!-- 				</div> -->

<!-- 			</div> -->
<!-- 		</section> -->
		<!-- End team section -->

		<!-- subcribe-section 
			================================================== -->
<!-- 		<section class="subcribe-section"> -->
<!-- 			<div class="container"> -->
<!-- 				<div class="title-section white"> -->
<!-- 					<h1>Subscribe to our news letter</h1> -->
<!-- 				</div> -->
<!-- 				<form class="subscribe"> -->
<!-- 					<input type="text" name="name-subs" id="name-subs" placeholder="name"/> -->
<!-- 					<input type="text" name="email-subs" id="email-subs" placeholder="your email address"/> -->
<!-- 					<input type="submit" id="submit-subscribe" value="subscribe"/> -->
<!-- 				</form> -->
<!-- 				<p>Please contact us if you want to do charity through the mailbox.</p> -->
<!-- 			</div> -->
<!-- 		</section> -->
		<!-- End subscribe section -->

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