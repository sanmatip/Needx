<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.demo.model.Post"%>
<%@page import="com.demo.model.Customer"%>
<%@page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NEEDx</title>
<link rel="shortcut icon" sizes="57x57" type="image/x-icon" href="images/favicon.ico" >
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.dropdown-submenu a.test').on("click", function(e){
		    $(this).next('ul').toggle();
		    e.stopPropagation();
		    e.preventDefault();
		  });
		
	});
	
	
	</script>
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
	-webkit-filter: grayscale(90%);
	filter: grayscale(90%); /* make all photos black and white */
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
	padding: 1px 16px;
	margin-top: 50px;
	line-height: 1.3em;
	vertical-align: top;
	padding: 1em;
}

.button1 {
	border-radius: 8px;
	background-color: #2B60DE;
	color: white
}

.inline {
	background-color: white;
	display: inline-block;
}

div.inline {
	padding: 0.5px 0.1px;
	margin-top: 0.2px;
	line-height: 1.3em;
	vertical-align: top;
	padding: 0.5em;
}

div.cmt {
	padding: 1px 5px;
	margin-top: 5px;
	line-height: 1.3em;
	vertical-align: top;
	padding: 0.5em;
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
</style>

</head>
<body style="background-color: #F8F8F8;">
	<nav class="navbar navbar-default navbar-fixed-top"
		style="border-color:#3b5998">
	<div class="container-fluid" style="background-color:#b71c1c ">
		<div class="navbar-header">
			<!-- <button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"><font size="6px"
				style="font-family: arial; color: white" id="t1">NEEDx</font></a> -->
	<img alt="NEEDx" src="/NewProject/images/logo.png" height="50px" width="120px">
		</div>
		<%
        List<Post> posts = (List<Post>) session.getAttribute("posts");
        Customer cust = (Customer) session.getAttribute("cust");
        session.setAttribute("custom", cust.getCustId());
      %>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">

				<!-- <li><a href="/NewProject/logout" style="color: white" id="t1"><i
						class="fa fa-fw fa-sign-out"></i>LOGOUT</a></li> -->


				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#" style="color: white" id="t1">MY
						ACCOUNT <span class="caret"></span>
				</a>
					<ul class="dropdown-menu" style="background-color: #b71c1c">
						<li class="dropdown-submenu dropdown-menu-right"><a
							tabindex="-1" href="#" id="p1" style="color: white"></i>Profile</a>
							<ul class="dropdown-menu">
								<li>
									<div class="inl" align="left" style="margin: 10px 10px;">
										<!-- <img class="img-circle"
											src="http://www.gravatar.com/avatar/f6112e781842d6a2b4636b35451401ff?s=125"
											width="50px" height="55px"></img> -->
											<img class='imagem_artigo' src="data:image;base64,${sessionScope.finalimg}" alt="Image Description" width="50px" height="55px"></img>
									</div>
									<div class="inl" style="margin: 10px 10px; width: 150px;">
										Name:<b style="font-size: 15"><%=cust.getName()%></b>
										<hr>
										Mob no:<b style="font-size: 15">12345</b>
									</div>
								</li>
							</ul></li>
						<li><a href="/NewProject/logout" style="color: white" id="l1">
								<i class="fa fa-fw fa-sign-out"></i>Logout
						</a></li>
					</ul></li>
				<li></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="ib"
		style="width: 12%; height: 1000px; position: fixed; color: white; background-color: #F8F8F8">
		<br> <a href="/NewProject/viewPost" style="color: #3b5998">Back
			to View Posts</a>
	</div>
	<div class="ib" style="margin-left: 15%; background-color: #F8F8F8">

		<h3 style="color: red">
			<i class="fa fa-comments" style="color: #2B60DE"></i>All Comments..
		</h3>

		<c:forEach var="comment" items="${com}">
			<div class="panel panel-default"
				style="margin-left: 10px; width: 600px; box-shadow: 5px 10px 8px #888888;">
				<div class="panel-heading" style="font-size: large;" id="d1">${comment.custName}</div>
				<div class="panel-body">
					${comment.custName}:${comment.comment} <br>
					<hr>
					<i class=" fa fa-reply" style="font-size: 12px"></i>Reply
					<form action="/NewProject/addReply" method="post">
						<input type="hidden" name="commentId" value="${comment.commentId}" />
						<input type="text" name="reply" /> <input type="submit"
							value="Reply" style="border-radius: 8px;" class="button1">
					</form>

					<a href="/NewProject/getAllReply/${comment.commentId}">View All
						replies<i class="fa fa-comments-o"></i>
					</a> <br>
				</div>
			</div>
		</c:forEach>

		<br> <br>
	</div>
	<div class="ib" style="background-color: #F8F8F8; width: 240px;">
		<div class="l-srp__sidebar flex__item SRBanList">
			<div class="SkyScrapper">
				<div class="txt_align_rht">
					<div
						style="border: 0px solid black; margin-top: 55px; width: 182px"
						align="center">
						<u>ADVERTISEMENTS</u>
					</div>
					<div
						style="border: 0px solid black; margin-top: 10px; width: 182px">
						<div class="banBlock">
							<div onclick="" class="advertise">
								<div class="imgBlk">
									<img width="180" border="0" height="110" alt="Omega Paradise"
										class="lazy"
										src="https://cdn.staticmb.com/property/microsite/new-banners/sky-scraper/omegaparadise-sonigarahomes-pune/img.jpg"
										style="display: inline;">
								</div>
								<div class="bnrCont" align="center"
									style="background-color: white; padding: 5px">
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
						style="border: 0px solid black; margin-top: 10px; width: 182px">
						<div class="banBlock">
							<div onclick="" class="advertise">
								<div class="imgBlk">
									<img width="180" border="0" height="110" alt="Omega Paradise"
										class="lazy"
										src="http://www.indiancarsbikes.in/wp-content/uploads/2016/06/olacabs-taxi.jpg?3a87fd"
										style="display: inline;">
								</div>
								<div class="bnrCont" align="center"
									style="background-color: white; padding: 5px">
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
						style="border: 0px solid black; margin-top: 10px; width: 182px">
						<div class="banBlock">
							<div onclick="" class="advertise">
								<div class="imgBlk">
									<img width="180" border="0" height="110" alt="Paytm"
										class="lazy"
										src="https://i2.wp.com/www.cutecharge.com/wp-content/uploads/2017/05/hhii.jpg?fit=696%2C397"
										style="display: inline; width: 168px">
								</div>
								<div class="bnrCont" align="center"
									style="background-color: white; padding: 5px">
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
						style="border: 0px solid black; margin-top: 10px; width: 182px">
						<div class="banBlock">
							<div onclick="" class="advertise">
								<div class="imgBlk">
									<img width="180" border="0" height="110" alt="Myntra"
										class="lazy"
										src="http://4.bp.blogspot.com/-btM9uVbg9N0/Vi_H0-PNY_I/AAAAAAAAIkg/7SlYxhIg7MI/s1600/swYPc6e.jpg"
										style="display: inline;">
									<div class="proName">
										<a target="_blank" href="https://www.myntra.com"> <img
											src="http://www.rapidsofttechnologies.com/blog/wp-content/uploads/2015/04/Myntra-Logo1.jpg"
											width="180" height="35px"></img></a>
									</div>
								</div>
								<div class="bnrCont" align="center"
									style="background-color: #FFC0CB; padding: 5px">
									<div class="buidName" style="color: #FF1493; font-weight: bold">AMAZING
										DEAL</div>
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