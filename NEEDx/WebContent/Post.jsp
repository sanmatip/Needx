<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NEEDx</title>
<link rel="shortcut icon" sizes="57x57" type="image/x-icon" href="images/favicon.ico" >
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link
	href='https://fonts.googleapis.com/css?family=Roboto:100,400,300,500,700'
	rel='stylesheet' type='text/css'>
<!-- <link rel="stylesheet" href="css/main.css"> -->
<style>
.container {
	padding: 80px 120px;
}

.person {
	border: 10px solid transparent;
	margin-bottom: 25px;
	width: 80%;
	height: 80%;
	opacity: 0.7;
}

.person:hover {
	border-color: #f1f1f1;
}

.carousel-inner img {
	width: 100%; /* Set width to 100% */
	margin: auto;
}

.carousel-caption h3 {
	color: #fff !important;
}

@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
		/* Hide the carousel text when the screen is less than 600 pixels wide */
	}
}

.bg-1 {
	background: lightgray;
	color: #bdbdbd;
}

.bg-1 h3 {
	color: #fff;
}

.bg-1 p {
	font-style: italic;
}

.list-group-item:first-child {
	border-top-right-radius: 0;
	border-top-left-radius: 0;
}

.list-group-item:last-child {
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.thumbnail {
	padding: 0 0 15px 0;
	border: none;
	border-radius: 0;
}

.thumbnail p {
	margin-top: 15px;
	color: #555;
}

.btn {
	padding: 10px 20px;
	background-color: #333;
	color: #f1f1f1;
	border-radius: 0;
	transition: .2s;
}

.btn:hover, .btn:focus {
	border: 1px solid #333;
	background-color: #fff;
	color: #000;
}

.modal-header, h4, .close {
	background-color: #333;
	color: #fff !important;
	text-align: center;
	font-size: 30px;
}

.modal-header, .modal-body {
	padding: 40px 50px;
}

.nav-tabs li a {
	color: #777;
}

.navbar {
	font-family: Montserrat, sans-serif;
	margin-bottom: 0;
	background-color: #2d2d30;
	border: 0;
	font-size: 11px !important;
	letter-spacing: 4px;
	opacity: 0.9;
}

.navbar li a, .navbar .navbar-brand {
	color: #d5d5d5 !important;
}

.navbar-nav li a:hover {
	color: #fff !important;
}

.navbar-nav li.active a {
	color: #fff !important;
	background-color: #29292c !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
}

.open .dropdown-toggle {
	color: #fff;
	background-color: #555 !important;
}

.dropdown-menu li a {
	color: #000 !important;
}

.dropdown-menu li a:hover {
	background-color: red !important;
}

footer {
	background-color: #b71c1c;
	color: #f5f5f5;
	padding: 32px;
}

footer a {
	color: #f5f5f5;
}

footer a:hover {
	color: #777;
	text-decoration: none;
}

.form-control {
	border-radius: 0;
}

textarea {
	resize: none;
}

#style_prevu_kit {
	display: inline-block;
	border: 0;
	width: 180px;
	height: 200px;
	position: relative;
	-webkit-transition: all 200ms ease-in;
	-webkit-transform: scale(0.5);
	-ms-transition: all 200ms ease-in;
	-ms-transform: scale(0.5);
	-moz-transition: all 200ms ease-in;
	-moz-transform: scale(0.5);
	transition: all 200ms ease-in;
	transform: scale(0.5);
}

#style_prevu_kit:hover {
	z-index: 2;
	-webkit-transition: all 200ms ease-in;
	-webkit-transform: scale(1);
	-ms-transition: all 200ms ease-in;
	-ms-transform: scale(1);
	-moz-transition: all 200ms ease-in;
	-moz-transform: scale(1);
	transition: all 200ms ease-in;
	transform: scale(1);
}

#t1:hover {
	border-bottom: 1px solid white;
}

#t2:hover {
	border-bottom: 1px solid #3b5998;
}
</style>
</head>
<body id="myPage">
	<!-- header -->
	<header>
	<div class="row">
		<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid" style="background-color: #b71c1c">
			<div class="navbar-header">
				<!-- <button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button> -->
				<!-- <a class="navbar-brand" href="/NewProject/Post.jsp"> --> <!-- <font
					size="6px" style="font-family: arial; color: white" id="t1">NEEDx</font> -->
					<img alt="NEEDx" src="/NewProject/images/logo.png" height="50px" width="120px">
					<!-- </a> -->
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/NewProject/Post.jsp" style="color: white"
						id="t1">HOME</a></li>
					<li><a href="#band" style="color: white" id="t1">ABOUT</a></li>
					<li><a href="viewloginform" style="color: white" id="t1">LOGIN</a></li>
					<li><a href="viewform" style="color: white" id="t1">REGISTER</a></li>
					<li><a href="#contact" style="color: white" id="t1">CONTACT</a></li>
				</ul>
			</div>
		</div>
		</nav>
	</div>
	<header> <!-- header ends --> <!-- slider -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img
					src="https://seaofficehome.msocdn.com/s/bd34d329/images/hero-still-image-mobile.jpg"
					alt="New York" style="width: 1000; height: 650px" width="">
				<div class="carousel-caption">
					<h1 class="">
						Welcome to <span>NEEDx</span>.<br>Your NEEDs Our
						NEEDx......!!!
					</h1>
				</div>
			</div>
			<div class="item">
				<img
					src="http://www.sing4business.co.uk/_webedit/cached-images/14-0-0-855-10000-7496-850.jpg "
					alt="Chicago" width="1000" style="height: 650px">
				<div class="carousel-caption">
					<h1 class="">We are a Service provider to our people to live
						in hassle free and easy way.</h1>
				</div>
			</div>
			<div class="item">
				<img
					src="https://dinersclub.ch/wp-content/uploads/2017/11/business-welcome.jpg "
					alt="Los Angeles" width="1000" style="height: 650px">
				<div class="carousel-caption">
					<h1 class="">
						Take a look at some of <a class="smoothscroll" href="#t2"
							title="portfolio">our services</a>
				</div>
			</div>
		</div>
		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<!-- slider ends --> <!-- Container -->
	<div id="band" class="container text-center">
		<h1 style="font-weight: bold; color: #3b5998" id="t2">
			Who Are We<span>?</span>
		</h1>
		<p>We are a fresher team of developers who are passionate about
			what we do. Our primary focus is to give services with easiness
			combined with a pocket-friendly experience. We are providing platform
			for your Needs for your trouble-free life.</p>
		<br>
		<div class="row">
			<div class="col-sm-6">
				<p class="text-center">
				<h3 style="color: #3b5998" id="t2">Our Process</h3>
				</p>
				<br>
				<p>You can post on NEEDx about getting flatmate . It wil provide
					ease to both Needy. Also posts related share your cab with your

					comapanymate along your route, saving your time and money as well,
					in a secure way.</p>
			</div>
			<div class="col-sm-6">
				<p class="text-center">
				<h3 style="color: #3b5998" id="t2">Our Goal</h3>
				</p>
				<br>
				<p>Our Goal is to provide the very best services to employees of
					Finastra and to do this with the utmost regard to each employee.
					And to make each employee's life hassle-free and convinient.</p>
			</div>
		</div>
		<hr>
		<h1 style="font-weight: bold; color: #3b5998;" id="t2">Our
			Services</h1>
		<br>
		<div class="row">
			<div class="col-sm-6">
				<br>
				<p>
					<img
						src="https://img.newatlas.com/drivenow.jpg?auto=format%2Ccompress&ch=Width%2CDPR&crop=entropy&fit=crop&h=347&q=60&w=616&s=4b49207fc3e9d2f065504d9adf5e6f4c"
						width="300px" height="220px" style="border: 0px solid black;"></img>
				</p>
			</div>
			<div class="col-sm-6">
				<br>
				<p>
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRKxxkvLYxgPdZejk8k-t3zTaBbvvP3ODHEf7o3BWe0dXQV61i"
						width="300px" height="220px" style="border: 0px solid black;"></img>
				</p>
			</div>
			<div class="col-sm-6">
				<br>
				<p>
					<!-- <img
                        src="http://www.advancedbuildersproperties.com/images/houses-for-rent-san-diego.png"
                        width="300px" height="220px"></img> -->
				</p>
			</div>
			<div class="col-sm-6">
				<br>
				<p>
					<!-- <img
                        src="https://amangupta369.files.wordpress.com/2015/02/taxi-service.jpg"
                        width="300px" height="220px"></img> -->
				</p>
			</div>
		</div>
		<hr>
		<br>
		<div class="row">
			<div class="col-sm-6">
				<p class="text-center">
				<h3 style="color: #3b5998" id="t2">Share Cab</h3>
				</p>
				<br>
				<p>Sharing a cab and saving money is a great service.</p>
			</div>
			<div class="col-sm-6">
				<p class="text-center">
				<h3 style="color: #3b5998" id="t2">Share Flat</h3>
				</p>
				<br>
				<p>We are attempting to provide better rental solutions. We help
					you find, book & move-in to a rental home of choice across Pune.
					Whatever is your budget, whatever you call home (a bed, a room or
					an entire house), we have something for you.</p>
			</div>
		</div>
		<hr>
	</div>
	<!-- Container (TOUR Section) -->
	<div id="tour" class="bg-1" style="height: 520px">
		<div class="container">
			<h1 style="font-weight: bold; color: #3b5998; text-align: center;"
				id="t2">Our Team</h1>
			<div class="row text-center">
				<!-- <div class="col-sm-8"> -->
				<div id="style_prevu_kit">
					<br>
					<p>
						<img src="/NewProject/images/IMG-20180213-WA0016.jpg"
							width="230px" height="300px"><b
							style="font-family: cursive; font-size: xx-large; color: black">Dhananjay</b></img>
					</p>
				</div>
				<div id="style_prevu_kit">
					<br>
					<p>
						<img src="/NewProject/images/IMG_20180213_180554.jpg"
							width="230px" height="300px"><b
							style="font-family: cursive; font-size: xx-large; color: black">Kalyani</b></img>
					</p>
				</div>
				<div id="style_prevu_kit">
					<!-- class="col-sm-4" -->
					<br>
					<p>
						<img src="/NewProject/images/IMG_1.png" width="230px"
							height="300px"><b
							style="font-family: cursive; font-size: xx-large; color: black">Ruchika</b></img>
					</p>
				</div>
				<div id="style_prevu_kit">
					<br>
					<p>
						<img src="/NewProject/images/IMG_3.jpg" width="230px"
							height="300px"><b
							style="font-family: cursive; font-size: xx-large; color: black">Sanmati</b></img>
					</p>
				</div>
				<div id="style_prevu_kit">
					<br>
					<p>
						<img src="/NewProject/images/IMG_2.jpg" alt='title' width="230px"
							height="300px"><b
							style="font-family: cursive; font-size: xx-large; color: black">Supriya</b></img>
					</p>
				</div>
				<!-- </div> -->
			</div>
		</div>
	</div>

	<!-- Container (Contact Section) -->
	<div id="contact" class="container">
		<h3 class="text-center" id="t2">Contact</h3>
		<p class="text-center">
			<em>We love our fans!</em>
		</p>
		<div class="row">
			<div class="text-center">

				<p>
					<span class="glyphicon glyphicon-map-marker"></span>India
				</p>
				<p>
					<span class="glyphicon glyphicon-phone"></span>Phone: +91
					1515151515
				</p>
				<p>
					<span class="glyphicon glyphicon-envelope"></span>Email:
					mail@mail.com
				</p>
			</div>

		</div>
		<br>
	</div>
	<br>
	<!-- Footer --> <footer class="text-center"> <a
		class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
		<span class="glyphicon glyphicon-chevron-up"></span>
	</a> <br>
	<br>
	<p>
		<a href="/NewProject/Post.jsp" data-toggle="tooltip"
			title="Visit Needx">www.Needx.com</a>
	</p>
	</footer> <script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();
      // Store hash
      var hash = this.hash;
      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
           // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})
</script>
</body>
</html>