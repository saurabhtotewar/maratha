<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="zxx">

<head>
	
	<link rel="icon" type="image/x-icon" href="images/slider/Kalash.png">
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Wedding Ceremony web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
	/>
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--// Meta tag Keywords -->
	<!-- css files -->
	<link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="all">
	<!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="css/font-awesome.css" type="text/css" media="all">
	<!-- Font-Awesome-Icons-CSS -->
	<link rel="stylesheet" href="css/lightbox.css" type="text/css" media="all">
	<link href="css/easy-responsive-tabs.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<!-- //css files -->
	<!-- web fonts -->
	<!-- <link href="//fonts.googleapis.com/css?family=Arizonia&amp;subset=latin-ext" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Droid+Sans:400,700" rel="stylesheet"> -->
	<!-- //web fonts -->
</head>

<body>
	<div class="w3l-main" id="home">
		<!--navigation-->
		<%@include file="header.jsp"%>
		<!--//navigation-->
<hr>

	<!-- contact -->
	<div class="about_section" id="about">
		<div class="container">
			<h2 class="wthree_title_agile"><span>About Us</span></h2>
			<div class="inner_w3l_agile_grids">
				<h4>Dear Guest ,
A warm welcome to our website www.marathavadhuvar.com. Maratha Vadhu Var Kendra is one of the renowned marriage bureaus working exclusively for the Maratha community since 1959. One of the oldest and most successful of its kind , we are committed for finding the best matrimonial match and thus helping you in finding your soul mate. Since then, we have never looked back and have touched the lives of millions of people not just in Maharashtra but round the globe. In Our organization, hardworking and dedicated people's are working with a mission, direction and a promise. We thank you for choosing us and been given the opportunity we specialize in.</h4>
			
			</div>
		</div>
		<div class="banner-bottom">
			<!--//screen-gallery-->
			<div class="inner_w3l_agile_grids">
				<div class="sreen-gallery-cursual">
					<div id="owl-demo" class="owl-carousel">
						<div class="item-owl">
							<div class="test-review">
								<img src="images/s2.jpg" alt="image" />
							</div>
						</div>
						<div class="item-owl">
							<div class="test-review">
								<img src="images/s1.jpg" alt="" />
							</div>
						</div>
						<div class="item-owl">
							<div class="test-review">
								<img src="images/s3.jpg" alt="" />
							</div>
						</div>
						<div class="item-owl">
							<div class="test-review">
								<img src="images/s7.jpg" alt="" />
							</div>
						</div>
						<div class="item-owl">
							<div class="test-review">
								<img src="images/s5.jpg" alt="" />
							</div>
						</div>
						<div class="item-owl">
							<div class="test-review">
								<img src="images/s8.jpg" alt="" />
							</div>
						</div>
						<div class="item-owl">
							<div class="test-review">
								<img src="images/s6.jpg" alt="" />
							</div>
						</div>
						<div class="item-owl">
							<div class="test-review">
								<img src="images/s4.jpg" alt="" />
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--//screen-gallery-->
		</div>
		<!-- //story -->
		<div class="w3l-poi">
			<img src="images/a3.png" alt=" ">
		</div>
	</div>
	<!-- footer -->
	 <%@include file="footer.jsp"%>
	<!-- //footer -->
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<!-- Necessary-JavaScript-File-For-Bootstrap -->
	<!-- //js -->
	<!--  light box js -->
	<script src="js/lightbox-plus-jquery.min.js">
	</script>
	<!-- //light box js-->

	<!-- video-js -->
	<script src="js/jquery.vide.min.js"></script>
	<!-- //video-js -->


	<!-- Baneer-js -->
	<!--responsive slider-->
	<script src="js/responsiveslides.min.js"></script>
	<!--//responsive slider-->

	<!--banner Slider starts Here-->
	<script>
		// You can also use "$(window).load(function() {"
		$(function () {
			// Slideshow 3
			$("#slider3").responsiveSlides({
				auto: true,
				pager: false,
				nav: true,
				speed: 500,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	<!--//End-slider-script-->

	<!-- //Baneer-js -->
	<!-- search-jQuery -->
	<script src="js/main.js"></script>
	<!-- //search-jQuery -->

	<!-- required-js-files-->
	<link href="css/owl.carousel.css" rel="stylesheet">
	<script src="js/owl.carousel.js"></script>
	<script>
		$(document).ready(function () {
			$("#owl-demo").owlCarousel({
				items: 1,
				itemsDesktop: [768, 4],
				itemsDesktopSmall: [414, 3],
				lazyLoad: true,
				autoPlay: true,
				navigation: true,

				navigationText: false,
				pagination: true,

			});

		});
	</script>
	<!--//required-js-files-->

	<!-- script for responsive tabs -->
	<script src="js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion           
				width: 'auto', //auto or any width like 600px
				fit: true, // 100% fit in a container
				closed: 'accordion', // Start closed if in accordion view
				activate: function (event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type: 'vertical',
				width: 'auto',
				fit: true
			});
		});
	</script>
	<!-- start-smooth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();

				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smooth-scrolling -->
	<!-- smooth scrolling -->
	<script src="js/SmoothScroll.min.js"></script>
	<!-- //smooth scrolling -->



</body>

</html>