<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="p"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NEEDx Registration</title>
<link rel="shortcut icon" sizes="57x57" type="image/x-icon" href="images/favicon.ico" >
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
	background-color: #fff;
	color: #fff;
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

#t1:hover {
	border-bottom: 1px solid white;
}
</style>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid" style="background-color: #b71c1c;">
		<div class="navbar-header">
			<!-- <button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"> <font size="6px"
				style="font-family: arial; color: white" id="t1">NEEDx</font>
			</a> -->
			<img alt="NEEDx" src="/NewProject/images/logo.png" height="50px" width="120px">
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/NewProject/Post.jsp" style="color: white" id="t1">HOME</a></li>
				<li><a href="viewloginform" style="color: white" id="t1">LOGIN</a></li>
				<li><a href="viewform" style="color: white" id="t1">REGISTER</a></li>
			</ul>
		</div>
	</div>
	</nav>
	
	
		<div >
	
	<!-- #region Jssor Slider Begin -->
    <!-- Generator: Jssor Slider Maker -->
    <!-- Source: https://www.jssor.com -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jssor-slider/27.1.0/jssor.slider.min.js" type="text/javascript"></script>
    <script type="text/javascript">
       var jssor_1_slider_init = function() {

             jssor_1_SlideoTransitions = [
              [{b:0,d:600,y:-290,e:{y:27}}],
              [{b:0,d:1000,y:185},{b:1000,d:500,o:-1},{b:1500,d:500,o:1},{b:2000,d:1500,r:360},{b:3500,d:1000,rX:30},{b:4500,d:500,rX:-30},{b:5000,d:1000,rY:30},{b:6000,d:500,rY:-30},{b:6500,d:500,sX:1},{b:7000,d:500,sX:-1},{b:7500,d:500,sY:1},{b:8000,d:500,sY:-1},{b:8500,d:500,kX:30},{b:9000,d:500,kX:-30},{b:9500,d:500,kY:30},{b:10000,d:500,kY:-30},{b:10500,d:500,c:{x:125.00,t:-125.00}},{b:11000,d:500,c:{x:-125.00,t:125.00}}],
              [{b:0,d:600,x:535,e:{x:27}}],
              [{b:-1,d:1,o:-1},{b:0,d:600,o:1,e:{o:5}}],
              [{b:-1,d:1,c:{x:250.0,t:-250.0}},{b:0,d:800,c:{x:-250.0,t:250.0},e:{c:{x:7,t:7}}}],
              [{b:-1,d:1,o:-1},{b:0,d:600,x:-570,o:1,e:{x:6}}],
              [{b:-1,d:1,o:-1,r:-180},{b:0,d:800,o:1,r:180,e:{r:7}}],
              [{b:0,d:1000,y:80,e:{y:24}},{b:1000,d:1100,x:570,y:170,o:-1,r:30,sX:9,sY:9,e:{x:2,y:6,r:1,sX:5,sY:5}}],
              [{b:2000,d:600,rY:30}],
              [{b:0,d:500,x:-105},{b:500,d:500,x:230},{b:1000,d:500,y:-120},{b:1500,d:500,x:-70,y:120},{b:2600,d:500,y:-80},{b:3100,d:900,y:160,e:{y:24}}],
              [{b:0,d:1000,o:-0.4,rX:2,rY:1},{b:1000,d:1000,rY:1},{b:2000,d:1000,rX:-1},{b:3000,d:1000,rY:-1},{b:4000,d:1000,o:0.4,rX:-1,rY:-1}]
            ];

             var jssor_1_options = {
              $AutoPlay: 1,
              $Idle: 2000,
              $CaptionSliderOptions: {
                $Class: $JssorCaptionSlideo$,
                $Transitions: jssor_1_SlideoTransitions,
                $Breaks: [
                  [{d:2000,b:1000}]
                ]
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
              }
            }; 

             var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options); 

            /*#region responsive code begin*/

            var MAX_WIDTH = 980;

            function ScaleSlider() {
                var containerElement = jssor_1_slider.$Elmt.parentNode;
                var containerWidth = containerElement.clientWidth;

                if (containerWidth) {

                    var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);

                    jssor_1_slider.$ScaleWidth(expectedWidth);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }

            ScaleSlider();

            $Jssor$.$AddEvent(window, "load", ScaleSlider);
            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            /*#endregion responsive code end*/
        };
    </script>
    <link href="https://fonts.googleapis.com/css?family=Oswald:200,300,regular,500,600,700&subset=latin-ext,vietnamese,latin,cyrillic" rel="stylesheet" type="text/css" />
    <style>
        /*jssor slider loading skin spin css*/
        .jssorl-009-spin img {
            animation-name: jssorl-009-spin;
            animation-duration: 0.8s;
            animation-iteration-count: infinite;
            animation-timing-function: linear;
        }

        @keyframes jssorl-009-spin {
            from { transform: rotate(0deg); }
            to { transform: rotate(360deg); }
        }

        /*jssor slider bullet skin 052 css*/
        .jssorb052 .i {position:absolute;cursor:pointer;}
        .jssorb052 .i .b {fill:#000;fill-opacity:0.0;}
        .jssorb052 .i:hover .b {fill-opacity:.0;}
        .jssorb052 .iav .b {fill-opacity: 0;}
        .jssorb052 .i.idn {opacity:.0;}

        /*jssor slider arrow skin 053 css*/
        .jssora053 {display:block;position:absolute;cursor:pointer;}
        .jssora053 .a {fill:none;stroke:#fff;stroke-width:640;stroke-miterlimit:10;}
        .jssora053:hover {opacity:.0;}
        .jssora053.jssora053dn {opacity:.0;}
        .jssora053.jssora053ds {opacity:.0;pointer-events:none;}
    </style>
    <div id="jssor_1" style="position:relative;margin:0 auto;top:100px;left:-100px;right:5000px;width:980px;height:380px;overflow:hidden;visibility:hidden;">
        <!-- Loading Screen -->
         <div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
            <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="img/spin.svg" />
        </div> 
        <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:520px;height:380px;overflow:hidden;border: 1px solid lightgray">
            <div data-p="170.00">
                <img data-u="image" src="images/001.jpg" />
                </div>
          
             <div data-p="170.00">
                <img data-u="image" src="images/003.png" />
                </div> 
            <div data-p="170.00">
                <img data-u="image" src="images/004.jpg" />
                </div>
            <div data-p="170.00">
                <img data-u="image" src="images/005.jpg" />
                 </div>
            <div data-p="170.00">
                <img data-u="image" src="images/006.jpg" />
                </div>
            <div data-p="170.00">
                <img data-u="image" src="images/007.jpg" />
                 </div>
            <div data-b="0" data-p="170.00">
                <img data-u="image" src="images/008.jpg" />
                </div>
            <div data-p="170.00">
                <img data-u="image" src="images/009.jpg" />
                
            </div>
           
        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb052" style="position:absolute;bottom:12px;right:12px;" data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
            <div data-u="prototype" class="i" style="width:16px;height:16px;">
                <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                   
                </svg>
            </div>
        </div>
        <!-- Arrow Navigator -->
        <div data-u="arrowleft" class="jssora053" style="width:55px;height:55px;top:0px;left:25px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
            <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
               
            </svg>
        </div>
        <div data-u="arrowright" class="jssora053" style="width:55px;height:55px;top:0px;right:25px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
            <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
               
            </svg>
        </div>
    </div>
    <script type="text/javascript">jssor_1_slider_init();</script>
    <!-- #endregion Jssor Slider End -->
    <br><br><br><br><br><br><br>
	<div class="carousel-caption" style="color:#FA5882;margin-left: -600px;height:100px;font-size: x-large;">
		<p><b>We are a Service provider to our people to live <br>in hassle free and easy way.</b></p>
	</div>
	</div>
	
	
	<div class="container" align="center"
		style="margin-top: 80px; margin-top: -500px; margin-right: 70px; width: 500px">
		<div class="panel panel-default" style="width: 300px">
			<div class="panel-heading">
				<b style="font-size: 20px">Sign Up</b>
			</div>
			<br>
			<div class="panel-body">
				<p:form class="form-horizontal" action="addCustomer" method="post" enctype="multipart/form-data" modelAttribute="customer">
					<div class="input-group">
						<span class="input-group-addon"> <i
							class="glyphicon glyphicon-user"></i>
						</span> <input id="name" type="text" class="form-control" name="name"
							placeholder="Name" style="width: 225px">
					</div>
					<br>
					<div class="row">
						<div class="col-md-8">
							<label class="radio-inline"> <input name="gender"
								id="input-gender-male" value="Male" type="radio" />Male
							</label> <label class="radio-inline"> <input name="gender"
								id="input-gender-female" value="Female" type="radio" />Female
							</label>
						</div>
					</div>
					<br>
					<div class="input-group">
						<span class="input-group-addon"> <i
							class="glyphicon glyphicon-user"></i>
						</span> <input id="username" type="text" class="form-control"
							name="username" placeholder="Username" style="width: 225px">
					</div>
					<br>
					<div class="input-group">
						<span class="input-group-addon"> <i
							class="glyphicon glyphicon-lock"></i>
						</span> <input id="password" type="password" class="form-control"
							name="password" placeholder="Password" style="width: 225px;">
					</div>
					<br>
					<!-- <div class="input-group">
						<span class="input-group-addon"> <i
							class="glyphicon glyphicon-lock"></i>
						</span> <input id="imageName" type="text" class="form-control"
							name="imageName" placeholder="Imagename" style="width: 225px;">
					</div> --> 
					<br>
					<div class="input-group">
						<span class="input-group-addon"> <i
							class="glyphicon glyphicon-lock"></i>
						</span> <input id="file" type="file" class="form-control"
							name="fileUpload" placeholder="Select Image" style="width: 225px;">
					</div> 
					<br>
					<div>
						<button class="btn btn-primary btn-block btn-large" type="submit"
							name="btn1" style="border-radius: 8px; background-color: #b71c1c">Register</button>
					</div>
					<hr>
					Already have an account?<a href="/NewProject/viewloginform">
						Sign In</a>
				</p:form>
			</div>
		</div>
	</div>
	<br>
</body>
</html>