<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
/* Outer */
.popup {
width:100%;
height:100%;
display:none;
position:fixed;
top:0px;
left:0px;
background:rgba(0,0,0,0.75);
}
/* Inner */
.popup-inner {
max-width:700px;
width:90%;
padding:40px;
position:absolute;
top:50%;
left:50%;
-webkit-transform:translate(-50%, -50%);
transform:translate(-50%, -50%);
box-shadow:0px 2px 6px rgba(0,0,0,1);
border-radius:3px;
background:#fff;
}
/* Close Button */
.popup-close {
width:30px;
height:30px;
padding-top:4px;
display:inline-block;
position:absolute;
top:0px;
right:0px;
transition:ease 0.25s all;
-webkit-transform:translate(50%, -50%);
transform:translate(50%, -50%);
border-radius:1000px;
background:rgba(0,0,0,0.8);
font-family:Arial, Sans-Serif;
font-size:20px;
text-align:center;
line-height:100%;
color:#fff;
}
.popup-close:hover {
-webkit-transform:translate(50%, -50%) rotate(180deg);
transform:translate(50%, -50%) rotate(180deg);
background:rgba(0,0,0,1);
text-decoration:none;
}

</style>

</head>
<body>
<a class="btn" data-popup-open="popup-1" href="#">Open Popup #1</a>
<div class="popup" data-popup="popup-1">
<div class="popup-inner">
<h2>Wow! This is Awesome! (Popup #1)</h2>
<p>Donec in volutpat nisi. In quam lectus, aliquet rhoncus cursus a, congue et arcu. Vestibulum tincidunt neque id nisi pulvinar aliquam. Nulla luctus luctus ipsum at ultricies. Nullam nec velit dui. Nullam sem eros, pulvinar sed pellentesque ac, feugiat et turpis. Donec gravida ipsum cursus massa malesuada tincidunt. Nullam finibus nunc mauris, quis semper neque ultrices in. Ut ac risus eget eros imperdiet posuere nec eu lectus.</p>
<p><a data-popup-close="popup-1" href="#">Close</a></p>
<a class="popup-close" data-popup-close="popup-1" href="#">x</a>
</div>
</div>




	<div class="swiper-slide swiper-slide-duplicate"
		data-swiper-slide-index="3" style="width: 295px;">
		<div class="forHomeCOl card_shadow">
			<a href="#" class="btn" data-popup-open="popup-1">
				<div>
					<i class="fa fa-phone" style="font-size: 24px;"></i><b
						class="calShowLink" style="color: #b71c1c; font-size: 20px">
						Contact</b>
				</div>


			</a>
			<div class="popup" data-popup="popup-1">
				<div class="popup-inner">
					<h2>NEEDx Contact</h2>

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


					<p>
						<a data-popup-close="popup-1" href="#">Close</a>
					</p>
					<a class="popup-close" data-popup-close="popup-1" href="#">x</a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>