<%@page import="com.aroundog.model.domain.Adoptboard"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	List<Adoptboard> adoptboardList= (List)request.getAttribute("adoptboardList");
%>
	<!DOCTYPE html>
	<html lang="zxx" class="no-js">
	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="/user/img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="codepixer">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Animal Shelter</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="/user/css/linearicons.css">
			<link rel="stylesheet" href="/user/css/font-awesome.min.css">
			<link rel="stylesheet" href="/user/css/bootstrap.css">
			<link rel="stylesheet" href="/user/css/magnific-popup.css">
			<link rel="stylesheet" href="/user/css/nice-select.css">							
			<link rel="stylesheet" href="/user/css/animate.min.css">
			<link rel="stylesheet" href="/user/css/owl.carousel.css">
			<link rel="stylesheet" href="/user/css/main.css">
			
<!-- 자바스크립트 부분 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
function goDetail(adoptboard_id){
	location.href="/user/adopt/adoptboardDetail?adoptboard_id="+adoptboard_id;
} 
</script>
			
		</head>
		<body>
			<%@include file="/user/inc/header.jsp" %>

			<!-- start banner Area -->
			<section class="banner-area relative" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								사랑스러운 아이들이 보호자님을 기다리고 있어요			
							</h1>	
							<p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="dogs.html"> dogs</a></p>
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->	
				
			<!-- Start cat-list Area -->
			<section class="cat-list-area section-gap">
				<div class="container">
					<div class="row">
					
					<%for(int i=0;i<adoptboardList.size();i++){ %>
					<%Adoptboard board=adoptboardList.get(i); %>
						<div class="col-lg-3 col-md-6">
							<div class="single-cat-list"  onClick='goDetail(<%=board.getAdoptboard_id() %>)'>
							  <img src="/data/dogs/<%=board.getAdoptdog().getImg() %>" alt="" class="img-fluid">
							  <div class="overlay">
							    <div class="text"><%=board.getAdoptdog().getType().getInfo() %></div>
							  </div>
							</div>
						</div>
					<%} %>
								
					</div>
				</div>	
			</section>
			<!-- End cat-list Area -->
					

														
				
			<!-- start footer Area -->		
			<footer class="footer-area">
				<div class="container">
					<div class="row pt-120 pb-80">
						<div class="col-lg-4 col-md-6">
							<div class="single-footer-widget">
								<h6>About Us</h6>
								<p>
									Few would argue that, despite the advanc ements off eminism over the past three decades, women still face a double standard when it comes to their behavior. While men’s borderline-inappropriate behavior. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
								</p>
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="single-footer-widget">
								<h6>Useful Links</h6>
								<div class="row">
									<ul class="col footer-nav">
										<li><a href="#">Home</a></li>
										<li><a href="#">Service</a></li>
										<li><a href="#">About</a></li>
										<li><a href="#">Case Study</a></li>
									</ul>
									<ul class="col footer-nav">
										<li><a href="#">Pricing</a></li>
										<li><a href="#">Team</a></li>
										<li><a href="#">Blog</a></li>
									</ul>									
								</div>
							</div>
						</div>						
						<div class="col-lg-4  col-md-6">
							<div class="single-footer-widget mail-chimp">
								<h6 class="mb-20">Contact Us</h6>
								<ul class="list-contact">
									<li class="flex-row d-flex">
										<div class="icon">
											<span class="lnr lnr-home"></span>
										</div>
										<div class="detail">
											<h4>Binghamton, New York</h4>
											<p>
												4343 Hinkle Deegan Lake Road
											</p>
										</div>	
									</li>
									<li class="flex-row d-flex">
										<div class="icon">
											<span class="lnr lnr-phone-handset"></span>
										</div>
										<div class="detail">
											<h4>00 (953) 9865 562</h4>
											<p>
												Mon to Fri 9am to 6 pm
											</p>
										</div>	
									</li>
									<li class="flex-row d-flex">
										<div class="icon">
											<span class="lnr lnr-envelope"></span>
										</div>
										<div class="detail">
											<h4>support@colorlib.com</h4>
											<p>
												Send us your query anytime!
											</p>
										</div>	
									</li>																		
								</ul>
							</div>
						</div>						
					</div>
				</div>
				<div class="copyright-text">
					<div class="container">
						<div class="row footer-bottom d-flex justify-content-between">
							<p class="col-lg-8 col-sm-6 footer-text m-0 text-white"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
							<div class="col-lg-4 col-sm-6 footer-social">
								<a href="#"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-dribbble"></i></a>
								<a href="#"><i class="fa fa-behance"></i></a>
							</div>
						</div>						
					</div>
				</div>
			</footer>
			<!-- End footer Area -->	

			<script src="js/vendor/jquery-2.2.4.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
			<script src="js/vendor/bootstrap.min.js"></script>			
			<!-- <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script> -->
  			<script src="/user/js/easing.min.js"></script>			
			<script src="/user/js/hoverIntent.js"></script>
			<script src="/user/js/superfish.min.js"></script>	
			<script src="/user/js/jquery.ajaxchimp.min.js"></script>
			<script src="/user/js/jquery.magnific-popup.min.js"></script>	
			<script src="/user/js/owl.carousel.min.js"></script>						
			<script src="/user/js/jquery.nice-select.min.js"></script>							
			<script src="/user/js/mail-script.js"></script>	
			<script src="/user/js/main.js"></script>	
		</body>
	</html>