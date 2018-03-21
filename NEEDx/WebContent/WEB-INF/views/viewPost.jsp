<%@page import="com.demo.service.LikeService"%>
<%@page import="org.springframework.web.servlet.ModelAndView"%>
<%@page import="com.demo.model.Comment"%>
<%@page import="com.demo.model.Profile"%>
<%@page import="com.demo.dao.CommentDao"%>
<%@page import="com.demo.model.Post"%>
<%@page import="java.util.List"%>
<%@page import="java.beans.Customizer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.demo.model.Customer"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NEEDx</title>
<link rel="shortcut icon" sizes="57x57" type="image/x-icon"
	href="images/favicon.ico">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdn.staticmb.com/cssGroup/homeGroup.css?03132018.105453">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#add_post1").click(function() {
			$("#add_post").slideToggle();
		});
		$("#add_comment1").click(function() {
			$("#add_comment").slideDown();
		});
		$("#btn1").click(function() {
			var txt = $("#txt1").val();
			var file = $("#file1").val();

			/* 	  alert(txt);
				  alert(file); */

			if (txt == "" && file == "") {
				alert("Please Enter post");
				return false;
			}
		});
		$('.dropdown-submenu a.test').on("click", function(e) {
			$(this).next('ul').toggle();
			e.stopPropagation();
			e.preventDefault();
		});

	});
</script>
<style>
/* For 980px or less */
@media screen and (max-width:600px) {
	#main {
		height: auto;
		width: 1000px;
		margin: 0 auto;
	}
	body {
		padding: 0;
		margin: 0;
	}
}

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
	}
}

.bg-1 {
	background: #2d2d30;
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

.ib {
	background-color: white;
	display: inline-block;
}

div.ib {
	padding: 1px 14px;
	margin-top: 50px;
	line-height: 1.3em;
	vertical-align: top;
	padding: 1em;
}

.button1 {
	border-radius: 8px;
	background-color: #2B60DE;
	color: white;
}

.button1:hover {
	border: 1px solid red;
}

.inline {
	background-color: white;
	display: inline-block;
}

div.inline {
	padding: 0.2px 0.01px;
	line-height: 1.3em;
	vertical-align: top;
	padding: 0.5em;
}

div.pst {
	padding: 1px 5px;
	margin-top: 5px;
	line-height: 1.1em;
	vertical-align: top;
	padding: 0.5em;
}

.card {
	background-color: #D5DDE9;
	box-shadow: 0 4px 8px #888888;
	max-width: 300px;
	margin: auto;
	text-align: center;
	font-family: arial;
}

.bt {
	border: none;
	outline: 0;
	display: inline-block;
	padding: 8px;
	color: white;
	background-color: #3b5998;
	text-align: center;
	cursor: pointer;
	width: 100%;
	font-size: 18px;
}

.ad-container {
	width: 100%;
}

.advertise:hover {
	border: 1px solid red;
}

#d1:hover {
	border-top: 1px solid red;
}

#t1:hover {
	border-bottom: 1px solid white;
}

#p1:hover {
	background-color: #3b5998;
}

#l1:hover {
	background-color: #3b5998;
}

.dropdown-submenu {
	position: relative;
}

.dropdown-submenu>.dropdown-menu {
	top: 0;
	left: -159%;
	max-width: 250px;
	margin-top: -6px;
	margin-right: -1px;
	-webkit-border-radius: 6px 6px 6px 6px;
	-moz-border-radius: 6px 6px 6px 6px;
	border-radius: 6px 6px 6px 6px;
}

.dropdown-submenu:hover>.dropdown-menu {
	display: block;
}

.dropdown-submenu>a:after {
	display: block;
	content: " ";
	float: left;
	width: 0;
	height: 0;
	border-color: transparent;
	border-style: solid;
	border-width: 5px 5px 5px 0;
	border-right-color: #999;
	margin-top: 5px;
	margin-right: 10px;
}

.dropdown-submenu:hover>a:after {
	border-left-color: #ffffff;
}

.dropdown-submenu.pull-left {
	float: none;
}

.dropdown-submenu.pull-left>.dropdown-menu {
	left: -100%;
	margin-left: 10px;
	-webkit-border-radius: 6px 6px 6px 6px;
	-moz-border-radius: 6px 6px 6px 6px;
	border-radius: 6px 6px 6px 6px;
}

.dropdown-menu-right {
	margin-left: 0;
}

.inl {
	display: inline-block;
	vertical-align: top;
}

.panel-body {
	display: inline-block;
	vertical-align: top;
}

/* background video */
* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family: Arial;
	font-size: 17px;
}

#myVideo {
	position: absolute;
	right: 0;
	bottom: 35%;
	min-width: 100%;
	height: 400px;
}

.content {
	position: absolute;
	bottom: 50%;
	background: rgba(0, 0, 0, 0);
	color: black;
	margin-left: 100px;
	width: 1165px;
	padding: 20px;
	height: 370px;
}

#add_post {
	display: inline-block;
}
#myImg {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
        display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 10; /* Sit on top */
    padding-top: 60px; /* Location of the box */
    left:300px;
    top: 70px;
    width: 450px; /* Full width */
    height: 630px; /* Full height */
    /* overflow: auto; */ /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
    position: absolute;
}

/* Modal Content (image) */
.modal-content {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 400px;
}

/* Caption of Modal Image */
#caption {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
    text-align: center;
    color: #ccc;
    padding: 10px 0;
    height: 150px;
}

/* Add Animation */
.modal-content, #caption {    
    -webkit-animation-name: zoom;
    -webkit-animation-duration: 0.6s;
    animation-name: zoom;
    animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
    from {-webkit-transform:scale(0)} 
    to {-webkit-transform:scale(1)}
}

@keyframes zoom {
    from {transform:scale(0)} 
    to {transform:scale(1)}
}

/* The Close Button */
.close {
    position: absolute;
    top: 15px;
    right: 35px;
    color: #f1f1f1;
    font-size: 40px;
    font-weight: bold;
    transition: 0.3s;
}

.close:hover,
.close:focus {
    color: #bbb;
    text-decoration: none;
    cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
    .modal-content {
        width: 100%;
    }
}
</style>


<script type="text/javascript">

$(function() {
	//----- OPEN
	$('[data-popup-open]').on('click', function(e)  {
	var targeted_popup_class = jQuery(this).attr('data-popup-open');
	$('[data-popup="' + targeted_popup_class + '"]').fadeIn(350);
	e.preventDefault();
	});
	//----- CLOSE
	$('[data-popup-close]').on('click', function(e)  {
	var targeted_popup_class = jQuery(this).attr('data-popup-close');
	$('[data-popup="' + targeted_popup_class + '"]').fadeOut(350);
	e.preventDefault();
	});
	});
</script>
<style>
/* Popup container - can be anything you want */
.popup {
    position: relative;
    display: inline-block;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    margin-top: 5px;
    height:50%;
    

}

/* The actual popup */
.popup .popuptext {
    visibility: hidden;
    width: 400px;
    height:500px;
    background-color: #989898;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 8px 0;
    position: relative;
    z-index: 1;
    bottom: 125%;
    left: 5%;
    margin-left: -80px;
    
}

/* Popup arrow */
.popup .popuptext::after {
    content: "";
    position: absolute;
    top: 100%;
    left: 50%;
    margin-left: -5px;
    border-width: 5px;
    border-style: solid;
    border-color: #555 transparent transparent transparent;
}

/* Toggle this class - hide and show the popup */
.popup .show {
    visibility: visible;
    -webkit-animation: fadeIn 1s;
    animation: fadeIn 1s;
}

/* Add animation (fade in the popup) */
@-webkit-keyframes fadeIn {
    from {opacity: 0;} 
    to {opacity: 1;}
}

@keyframes fadeIn {
    from {opacity: 0;}
    to {opacity:1 ;}
}

</style>



</head>
<body style="background-color: #f2f2f2">
	<%
		/* List<Post> posts = (List<Post>) session.getAttribute("posts"); */
		Customer cust = (Customer) session.getAttribute("cust");
		/* String img = (String) session.getAttribute("images"); */
		session.setAttribute("custom", cust.getCustId());
	%>
	<div id="main">
		<nav class="navbar navbar-default navbar-fixed-top"
			style="border-color:#b71c1c">
		<div class="container-fluid" style="background-color: #b71c1c">
			<div class="navbar-header">

				<img alt="NEEDx" src="/NewProject/images/logo.png" height="50px"
					width="120px">
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#" style="color: white" id="t1">
							MYACCOUNT <span class="caret"></span>
					</a>
						<ul class="dropdown-menu" style="background-color: #b71c1c">
							<li class="dropdown-submenu dropdown-menu-right"><a
								tabindex="-1" href="#" id="p1" style="color: white">Profile</a>
								<ul class="dropdown-menu">
									<li>
										<div class="inl" align="left" style="margin: 10px 10px;">
											<img class='imagem_artigo'
												src="data:image;base64,${sessionScope.finalimg}"
												alt="Image Description" width="50px" height="55px"></img>
										</div>
										<div class="inl" style="margin: 10px 10px; width: 150px;">
											Name:<b style="font-size: 15"><%=cust.getName()%></b>
											<hr>
											User Name:<b style="font-size: 15"><%=cust.getUsername()%></b>
											<!-- <a href="image/display">Upload Profile</a>  -->
										</div>
									</li>
								</ul></li>
							<li><a href="/NewProject/logout" id="l1"
								style="color: white"> <i class="fa fa-fw fa-sign-out"></i>Logout
							</a></li>
						</ul></li>
					<li></li>
				</ul>
			</div>
		</div>
		</nav>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>

		<div>
			<video autoplay muted loop id="myVideo"> <source
				src="https://files.brightcove.com/why-brightcove-bg-video.mp4"
				type="video/mp4"> Your browser does not support HTML5
			video. </video>

			<div class="content">
				<br> <br> <br>
				<h2 align="left"
					style="color: white; margin-left: 140px; font-family: cursive; font-size: 35px">
					<br>
					<%=cust.getName()%>
				</h2>
				<div id="add_post">

					<img id="myImg" class='imagem_artigo'
						src="data:image;base64,${sessionScope.finalimg}"
						alt="<%=cust.getName()%>" width="130px" height="160px"></img>
					<!-- The Modal -->
					<div id="myModal" class="modal">
						<span class="close">&times;</span> <img class="modal-content"
							id="img01">
						<div id="caption"></div>
					</div>

					<script>
						// Get the modal
						var modal = document.getElementById('myModal');

						// Get the image and insert it inside the modal - use its "alt" text as a caption
						var img = document.getElementById('myImg');
						var modalImg = document.getElementById("img01");
						var captionText = document.getElementById("caption");
						img.onclick = function() {
							modal.style.display = "block";
							modalImg.src = this.src;
							captionText.innerHTML = this.alt;
						}

						// Get the <span> element that closes the modal
						var span = document.getElementsByClassName("close")[0];

						// When the user clicks on <span> (x), close the modal
						span.onclick = function() {
							modal.style.display = "none";
						}
					</script>
				</div>
				<div id="add_post" class="pst" align="left"
					style="opacity: 0.9; margin-top: 0px; margin-left: 20px; width: 700px;">
					<form action="addPost" method="post" enctype="multipart/form-data"
						modelAttribute="post">
						<font color="white">Write Post here:</font><br> <br>
						<textarea rows="3" cols="60" name="post" id="txt1"></textarea>
						<br> <br> <input type="file" name="file" size="100"
							id="file1" style="color:white"/>
						<hr>
						<button id="btn1" type="submit" name="btn1" class="button1"
							style="float: right; color: black">Add Post</button>
						<br>
					</form>
					<br>
				</div>

			</div>
		</div>

		<div class="ib"
			style="margin-left: 5%; width: 950px; padding: 1px 40px; background-attachment: fixed; background-color: #f2f2f2">


			<!-- slider start -->
			<div style="margin-top: 50px; position: relative;">
				<div class="buyNRentBlock">
					<div class="collectionNPosition homeCollection">
						<div id="buySlider" class="hiddenAnim showContainer active">
							<div
								class="sliderForColl swiper-container homeBuySwiper swiper-container-horizontal">
								<div class="swiper-wrapper" id="homeForSale"
									style="transform: translate3d(-1180px, 0px, 0px); transition-duration: 0ms;">
									<div class="swiper-slide" data-swiper-slide-index="10"
										style="width: 295px;"></div>
									<div class="swiper-slide" data-swiper-slide-index="11"
										style="width: 295px;"></div>
									<div class="swiper-slide" data-swiper-slide-index="12"
										style="width: 295px;"></div>
									<div class="swiper-slide swiper-slide-duplicate-prev"
										data-swiper-slide-index="13" style="width: 295px;"></div>
									<!-- <div
										class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active"
										data-swiper-slide-index="0" style="width: 295px;">
										<div class="forHomeCOl card_shadow">
											<a href="#">
												<div>
													<i class="fa fa-navicon" style="font-size: 24px;"></i><b
														class="calShowLink"
														style="color: #b71c1c; font-size: 20px"> Posts</b>
												</div>

											</a>
										</div>
									</div> -->
									<div class="swiper-slide swiper-slide-duplicate"
										data-swiper-slide-index="3" style="width: 295px;">
										<div class="forHomeCOl card_shadow" >
										
											<a href="#"  >
												<div class="popup" onclick="myFunction3()">
													<i class="fa fa-navicon" style="font-size: 24px;"></i><b
														class="calShowLink"
														style="color: #b71c1c; font-size: 20px"> Post</b>
													<div class="popuptext" id="myPopup3" style="height:500px">
														
														<p>
															<span class="glyphicon glyphicon-cab"></span>   You can post on NEEDx about getting<br> flatmate.It wil provide ease <br>to both Needy.
														</p>
														
													</div>
												</div>
												<script>
													// When the user clicks on div, open the popup
													function myFunction3() {
														var popup = document.getElementById("myPopup3");
														popup.classList.toggle("show");
													}
												</script>

											</a>
										</div>
										
									</div> 
									
									
									<!-- <div
										class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next"
										data-swiper-slide-index="1" style="width: 295px;">
										<div class="forHomeCOl card_shadow">
											<a href="#">

												<div>
													<i class="fa fa-cab" style="font-size: 24px;"></i><b
														class="calShowLink"
														style="color: #b71c1c; font-size: 20px"> Share Cab</b>
												</div>

											</a>
										</div>
									</div> -->
									
									<div class="swiper-slide swiper-slide-duplicate"
										data-swiper-slide-index="3" style="width: 295px;">
										<div class="forHomeCOl card_shadow" >
										
											<a href="#"  >
												<div class="popup" onclick="myFunction2()">
													<i class="fa fa-cab" style="font-size: 24px;"></i><b
														class="calShowLink"
														style="color: #b71c1c; font-size: 20px"> Share Cab</b>
													<div class="popuptext" id="myPopup2" style="height:500px">
														
														<p>
															<span class="glyphicon glyphicon-cab"></span>    Sharing a cab and saving money is<br> a great service.
														</p>
														
													</div>
												</div>
												<script>
													// When the user clicks on div, open the popup
													function myFunction2() {
														var popup = document.getElementById("myPopup2");
														popup.classList.toggle("show");
													}
												</script>

											</a>
										</div>
										
									</div> 
									
									<!-- <div class="swiper-slide swiper-slide-duplicate"
										data-swiper-slide-index="2" style="width: 295px;">
										<div class="forHomeCOl card_shadow">
											<a href="#">

												<div>
													<i class="fa fa-home" style="font-size: 24px;"></i><b
														class="calShowLink"
														style="color: #b71c1c; font-size: 20px"> Rental Flats</b>
												</div>

											</a>
										</div>
									</div> -->
									<div class="swiper-slide swiper-slide-duplicate"
										data-swiper-slide-index="3" style="width: 295px;">
										<div class="forHomeCOl card_shadow" >
										
											<a href="#"  >
												<div class="popup" onclick="myFunction1()">
													<i class="fa fa-home" style="font-size: 24px;"></i><b
														class="calShowLink"
														style="color: #b71c1c; font-size: 20px"> Rental Flats</b>
													<div class="popuptext" id="myPopup1" style="height:500px">
														
														<p>
															<span class="glyphicon glyphicon-home"></span>    We are attempting to provide better <br>rental solutions
														</p>
														
													</div>
												</div>
												<script>
													// When the user clicks on div, open the popup
													function myFunction1() {
														var popup = document.getElementById("myPopup1");
														popup.classList.toggle("show");
													}
												</script>

											</a>
										</div>
										
									</div> 
									 <div class="swiper-slide swiper-slide-duplicate"
										data-swiper-slide-index="3" style="width: 295px;">
										<div class="forHomeCOl card_shadow" >
										
											<a href="#"  >
												<div class="popup" onclick="myFunction()">
													<i class="fa fa-phone" style="font-size: 24px;"></i><b
														class="calShowLink"
														style="color: #b71c1c; font-size: 20px"> Contact</b>
													<div class="popuptext" id="myPopup" style="height:500px">
														<!-- <p>
															<span class="glyphicon glyphicon-map-marker"></span>India
														</p> -->
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
												<script>
													// When the user clicks on div, open the popup
													function myFunction() {
														var popup = document.getElementById("myPopup");
														popup.classList.toggle("show");
													}
												</script>

											</a>
										</div>
										
									</div> 
									
								</div>
							</div>

						</div>
						<div id="rentSlider" class="showContainer hiddenAnim">
							<div class="sliderForColl swiper-container homeRentSwiper">
								<div id="homeForRent" class="swiper-wrapper"></div>
							</div>
							<div class="arrow swiper-button-next">
								<a href="#"><span></span></a>
							</div>
							<div class="arrow swiper-button-prev">
								<a href="#"><span></span></a>
							</div>
						</div>
					</div>
				</div>

			</div>

			<!-- slider end -->





			<hr>
			<br> <br>
			<div style="margin-left: 24px; width: 540px;">
				<a target="_blank" href="https://www.magicbricks.com/bbhc/Pune">
					<img
					src="https://cdn.staticmb.com/searchstatic/images/Web-SRP-top@2x.jpg"
					height="65" width="800px">
				</a>
			</div>
			<br>
			<c:forEach var="post" items="${clist}">
				<div class="col-sm-10">
					<div class="panel panel-default"
						style="margin-left: 10px; width: 800px; box-shadow: 5px 10px 8px #888888;">

						<div class="panel-heading" style="font-size: 12px;" id="d1">${post.custName}</div>
						<div class="panel-body">
							<img style="width: 120px; height: 117px;" class='imagem_artigo'
								src="data:image;base64,${post.encodedPostImage}"
								alt="Image Description"><br> <a
								href="deletePost?custId=<%=cust.getCustId()%>&postId=${post.postid}">Delete</a>
						</div>
						<div class="panel-body">
							<div class="pst" style="font-size: 12px; height: 30px;">
								${post.post} <br>
							</div>
							<hr>
							<div class="inline">
								${post.likes} <a
									href="like?custId=<%=cust.getCustId()%>&postId=${post.postid}"
									name="btn2"> <i class="fa fa-thumbs-o-up"
									style="font-size: 18px; color: #2525a7"></i>
								</a>
							</div>
							<font style="color: lightgray; font-size: 24px">.</font>
							<div class="inline">
								<div>Comment</div>
								<i class="fa fa-comments-o"
									style="font-size: 18px; color: #2525a7"></i>
								<div id="add_comment">
									<form action="addcomment" method="post">
										<input type="hidden" name="postId" value="${post.postid}" />
										<input type="text" name="comment" /> <input type="submit"
											value="Comment" class="button1">
									</form>
								</div>




								<a href="getComment/${post.postid}"> View All Comments<i
									class="fa fa-comments-o"></i>
								</a>
							</div>
						</div>
					</div>
					<!-- end of panelbody -->
				</div>
				<!-- end of panel -->

			</c:forEach>
		</div>

		<div class="ib" style="background-color: #f2f2f2; width: 240px;">
			<div class="l-srp__sidebar flex__item SRBanList">
				<div class="SkyScrapper">
					<div class="txt_align_rht">
						<div
							style="border: 0px solid black; margin-top: 55px; width: 182px"
							align="center">
							<br> <br> <u>ADVERTISEMENTS</u>
						</div>
						<div
							style="border: 0px solid black; margin-top: 10px; width: 182px">
							<div class="banBlock">
								<div onclick="" class="advertise">
									<div class="imgBlk">
										<img width="134" border="0" height="87" alt="Omega Paradise"
											class="lazy"
											src="https://cdn.staticmb.com/property/microsite/new-banners/sky-scraper/omegaparadise-sonigarahomes-pune/img.jpg"
											style="display: inline;">
									</div>
									<div class="bnrCont" align="center"
										style="background-color: white; padding: 5px; font-size: 13px">
										<div class="proName" style="font-weight: bold">
											<a target="_blank"
												href="http://property.magicbricks.com/mb-microsite/omegaparadise-sonigarahomes-pune/index.html">
												Omega Paradise</a>
										</div>
										<div class="buidName">Sonigara Homes</div>
										<div class="proLov">Wakad, Pune</div>
										<div class="bhkInfo">2 BHK Flats</div>
										<div class="priceInfo">
											<span class="rsIco"></span><b>62.1 Lac</b><span>
												onwards</span>
										</div>
										<div class="marketedBy" style="color: lightgray;">
											Marketed by<br>Sonigara Homes
										</div>
									</div>
								</div>
							</div>
						</div>
						<div
							style="border: 0px solid black; margin-top: 10px; width: 138px;"
							class="advertise">
							<div class="banBlock">
								<div onclick="" class="advertise">
									<div class="imgBlk">
										<img width="134" border="0" height="87" alt="Omega Paradise"
											class="lazy"
											src="http://www.indiancarsbikes.in/wp-content/uploads/2016/06/olacabs-taxi.jpg?3a87fd"
											style="display: inline;">
									</div>
									<div class="bnrCont" align="center"
										style="background-color: white; padding: 5px; font-size: 13px">
										<div class="proName" style="font-weight: bold">
											<a target="_blank" href="https://www.olacabs.com"> Ola
												Cabs</a>
										</div>
										<div class="buidName">Ola Cabs</div>
										<div class="proLov">Book a ride</div>
										<div class="bhkInfo">Flat @Rs100/10km</div>
										<div class="priceInfo">
											<span class="rsIco">Dial:</span><b>3355 3355</b>
										</div>
										<div class="marketedBy" style="color: lightgray;">
											Marketed by<br>Ola
										</div>
									</div>
								</div>
							</div>
						</div>
						<div
							style="border: 1px solid black; margin-top: 10px; width: 138px"
							class="advertise">
							<div class="banBlock">
								<div onclick="" class="advertise">
									<div class="imgBlk">
										<img width="134" border="0" height="87" alt="Paytm"
											class="lazy"
											src="https://i2.wp.com/www.cutecharge.com/wp-content/uploads/2017/05/hhii.jpg?fit=696%2C397"
											style="display: inline;">
									</div>
									<div class="bnrCont" align="center"
										style="background-color: white; padding: 5px; font-size: 13px">
										<div class="proName" style="font-weight: bold">
											<a target="_blank" href="https://paytm.com/"> Paytm</a>
										</div>
										<div class="buidName">E-payments</div>
										<div class="proLov">100% cashback</div>
										<div class="bhkInfo">Recharge ,Shopping</div>
										<div class="priceInfo">
											<span class="rsIco"></span><b>Bill Payment,Bus tickets</b><span></span>
										</div>
										<div class="marketedBy" style="color: lightgray;">
											Marketed by<br>Paytm
										</div>
									</div>
								</div>
							</div>
						</div>
						<div
							style="border: 1px solid black; margin-top: 10px; width: 138px"
							class="advertise">
							<div class="banBlock">
								<div onclick="" class="advertise">
									<div class="imgBlk">
										<img width="134" border="0" height="87" alt="Myntra"
											class="lazy"
											src="http://4.bp.blogspot.com/-btM9uVbg9N0/Vi_H0-PNY_I/AAAAAAAAIkg/7SlYxhIg7MI/s1600/swYPc6e.jpg"
											style="display: inline;">
										<div class="proName">
											<a target="_blank" href="https://www.myntra.com"> <img
												src="http://www.rapidsofttechnologies.com/blog/wp-content/uploads/2015/04/Myntra-Logo1.jpg"
												width="134" height="35px"></img></a>
										</div>
									</div>
									<div class="bnrCont" align="center"
										style="background-color: #FFC0CB; padding: 5px">
										<div class="buidName"
											style="color: #FF1493; font-weight: bold">AMAZING DEAL</div>
										<div class="proLov" style="color: #FF4500; font-weight: bold">DOWNLOAD
											THE APP</div>
										<div class="bhkInfo">NOW</div>
										<div class="priceInfo">
											<span class="rsIco">Get </span><b style="color: #FF4500;">30-80%
												OFF </b>on Shopping
										</div>
										<div class="marketedBy" style="color: gray;">
											Marketed by<br>Myntra
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>