<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<!-- 时间插件 -->
<link rel="stylesheet" href="jquery-ui-1.12.1.custom/jquery-ui.css">
  <script src="jquery-ui-1.12.1.custom/external/jquery/jquery.js"></script>
  <script src="jquery-ui-1.12.1.custom/jquery-ui.js"></script>
  <link rel="stylesheet" href="http://jqueryui.com/resources/demos/style.css">
  <script>
  $(function() {
    $( "#datepicker" ).datepicker({dateFormat: "yy-mm-dd"});
  });
  </script>
<!-- Latest Bootstrap min CSS -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<!-- Dropdownhover CSS -->
<link rel="stylesheet" href="assets/css/bootstrap-dropdownhover.min.css" type="text/css">
<!-- latest fonts awesome -->
<link rel="stylesheet" href="assets/font/css/font-awesome.min.css" type="text/css">
<!-- simple line fonts awesome -->
<link rel="stylesheet" href="assets/simple-line-icon/css/simple-line-icons.css" type="text/css">
<!-- stroke-gap-icons -->
<link rel="stylesheet" href="assets/stroke-gap-icons/stroke-gap-icons.css" type="text/css">
<!-- Animate CSS -->
<link rel="stylesheet" href="assets/css/animate.min.css" type="text/css">
<!-- Style CSS -->
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<!--  baguetteBox -->
<link rel="stylesheet" href="assets/css/baguetteBox.css">
<!-- Owl Carousel Assets -->
<link href="assets/owl-carousel/owl.carousel.css" rel="stylesheet">
<link href="assets/owl-carousel/owl.theme.css" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>

<body>
<!--  Preloader  -->
<div id="preloader">
	<div id="loading">
	</div>
</div>
<header>
	<!--  top-header  -->
	<div class="top-header">
		<div class="container">

			<div class="col-md-6">
				<div class="top-header-left">
					<ul>
						<li>
							<div class="dropdown">
								<a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
								   <img src="assets/images/eng-flg.jpg" alt="eng-flg"> English <i class="fa fa-angle-down" aria-hidden="true"></i>
								</a>
								<ul class="dropdown-menu">
									<li><a href="#">English</a></li>
									<li><a href="#">Aribic</a></li>
								</ul>
							</div>
						</li>
						<li>
							<div class="dropdown">
								<a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
									USD <i class="fa fa-angle-down" aria-hidden="true"></i>
								</a>
								<ul class="dropdown-menu">
									<li><a href="#">GBP</a></li>
									<li><a href="#">USD</a></li>									
								</ul>
							</div>
						</li>
						<li>
							<span>Hello Custumer - Login or Registe!</span>
						</li>
					</ul>
				</div>
			</div>
			<div class="col-md-6">
				<div class="top-header-right">
					<ul>
						<li><i class="icon-user-follow icons" aria-hidden="true"></i><a onclick="wer()">注册</a>
						</li>
						<c:choose>
							  <c:when test="${sessionScope.user.user_id==null}">
							  <li><i class="icon-user-unfollow icons" aria-hidden="true">
							   你好，请<a  onclick="qwe()" >登录</a>
							  </i>
       
    </c:when>
    <c:otherwise>
    <li><i class="icon-user-following icons" aria-hidden="true">
     你好，${sessionScope.user.user_name}
    </i>
       
    </c:otherwise>
						</c:choose> </li>
						<li>
							<div class="dropdown">
								<a href="" class="btn btn-default dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
									<i class="icon-settings icons" aria-hidden="true"></i> <a onclick="ert()">修改</a>
								</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!--  /top-header  -->
	</div>
	<section class="top-md-menu">
		<div class="container">
			<div class="col-sm-3">
				<div class="logo">
					<h6><img src="assets/images/logo.png" alt="logo" /></h6>
				</div>
			</div>
			<div class="col-sm-6">
				<!-- Search box Start -->
				<form>
					<div class="well carousel-search hidden-phone">
						<div class="btn-group">
							<a class="btn dropdown-toggle btn-select" data-toggle="dropdown" href="#">All Categories <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Item I</a></li>
								<li><a href="#">Item II</a></li>
								<li><a href="#">Item III</a></li>
								<li class="divider"></li>
								<li><a href="#">Other</a></li>
							</ul>
						</div>
						<div class="search">
							<input type="text" placeholder="Where prodect" />
						</div>
						<div class="btn-group">
							<button type="button" id="btnSearch" class="btn btn-primary"><i class="fa fa-search" aria-hidden="true"></i></button>
						</div>
					</div>
				</form>
				<!-- Search box End -->
			</div>
			<div class="col-sm-3">
				<!-- cart-menu -->
				<div class="cart-menu">
					<ul>
						<li><a href="UiBookServlet"><i class="icon-home icons" aria-hidden="true"></i></a><span ></span><strong>Home Page</strong></li>
						<li class="dropdown">
							<a href="/Book/shopping-cart.jsp"><i class="icon-basket icons" aria-hidden="true"></i></a><span ></span><strong>Your Cart</strong>
					</li>
					</ul>		
				
				</div>
				<!-- cart-menu End -->
			</div>
			<div class="main-menu">
				<!--  nav  -->
				<nav class="navbar navbar-inverse navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" data-hover="dropdown" data-animations=" fadeInLeft fadeInUp fadeInRight">
						<ul class="nav navbar-nav">
							<li class="all-departments dropdown">
								<a href="index.html" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span> Shop By Department</span> <i class="fa fa-bars" aria-hidden="true"></i> </a>
								<ul class="dropdown-menu dropdownhover-bottom all-open" role="menu">
									<li class="dropdown">
										<a href="index.html"><img src="assets/images/menu-icon1.png" alt="menu-icon1" /> Electronic & Digital <i class="fa fa-angle-right" aria-hidden="true"></i></a>
										<ul class="dropdown-menu right">
											<li><a href="grid.html">Electronic 01</a></li>
											<li><a href="list.html">Electronic 02</a></li>
										</ul>
									</li>
									<li class="dropdown">
										<a href="#"><img src="assets/images/menu-icon2.png" alt="menu-icon2" /> Phones & Accessories <i class="fa fa-angle-right" aria-hidden="true"></i></a>
										<ul class="dropdown-menu right">
											<li><a href="grid.html">Iphone 05</a></li>
											<li><a href="list.html">Iphone 06</a></li>
											<li><a href="grid.html">Iphone 07</a></li>
											<li><a href="list.html">Handfree</a></li>
											<li><a href="grid.html">Bettery</a></li>
										</ul>
									</li>
									<li>
										<a href="#"><img src="assets/images/menu-icon3.png" alt="menu-icon3" /> PHome & Kitchen <sup class="bg-red">hot!</sup></a>
									</li>
									<li class="dropdown">
										<a href="#"><img src="assets/images/menu-icon4.png" alt="menu-icon4" /> Fashion & Clothing <i class="fa fa-angle-right" aria-hidden="true"></i></a>
										<div class="dropdown-menu dropdownhover-bottom mega-menu" role="menu">

									<div class="col-sm-8 col-md-8">
										<ul>
											<li><strong>Women’s Fashion</strong></li>
											<li><a href="#">Flip-Flops</a></li>
											<li><a href="#">Fashion Scarves</a></li>
											<li><a href="#">Wallets</a></li>
											<li><a href="#">Evening Handbags</a></li>
											<li><a href="#">Wrist Watches</a></li>
										</ul>
										<ul>
											<li><strong>Women’s Accessories</strong></li>
											<li><a href="#">Flip-Flops</a></li>
											<li><a href="#">Fashion Scarves</a></li>
											<li><a href="#">Wallets</a></li>
											<li><a href="#">Evening Handbags</a></li>
											<li><a href="#">Wrist Watches</a></li>
										</ul>
										<ul>
											<li><strong>Men’s Fashion</strong></li>
											<li><a href="#">Flip-Flops</a></li>
											<li><a href="#">Fashion Scarves</a></li>
											<li><a href="#">Wallets</a></li>
											<li><a href="#">Evening Handbags</a></li>
											<li><a href="#">Wrist Watches</a></li>
										</ul>
										<ul>
											<li><strong>Men’s Accessories</strong></li>
											<li><a href="#">Flip-Flops</a></li>
											<li><a href="#">Fashion Scarves</a></li>
											<li><a href="#">Wallets</a></li>
											<li><a href="#">Evening Handbags</a></li>
											<li><a href="#">Wrist Watches</a></li>
										</ul>
									</div>

								</div>
									</li>
									<li class="dropdown">
										<a href="#"><img src="assets/images/menu-icon5.png" alt="menu-icon2" /> Sport & Outdoors <i class="fa fa-angle-right" aria-hidden="true"></i></a>
										<ul class="dropdown-menu right">
											<li><a href="grid.html">Sport 05</a></li>
											<li><a href="list.html">Sport 06</a></li>
											<li><a href="list.html">Outdoors 02</a></li>
											<li><a href="grid.html">Outdoors 01</a></li>
										</ul>
									</li>
									<li class="dropdown">
										<a href="#"><img src="assets/images/menu-icon6.png" alt="menu-icon2" /> Jewelry & Watches <i class="fa fa-angle-right" aria-hidden="true"></i></a>
										<ul class="dropdown-menu right">
											<li><a href="grid.html">Jewelry 05</a></li>
											<li><a href="grid.html">Watches 07</a></li>
											<li><a href="list.html">Watches 02</a></li>
										</ul>
									</li>
									<li>
										<a href="#"><img src="assets/images/menu-icon7.png" alt="menu-icon2" /> Health & Beauty <sup class="bg-blue">NEW</sup></a>
									</li>
									<li class="dropdown">
										<a href="#"><img src="assets/images/menu-icon8.png" alt="menu-icon2" /> Toys & Hobbies <i class="fa fa-angle-right" aria-hidden="true"></i></a>
										<ul class="dropdown-menu right">
											<li><a href="grid.html">Toys 05</a></li>
											<li><a href="list.html">Hobbies 02</a></li>
											<li><a href="grid.html">Toys 01</a></li>
										</ul>
									</li>
									<li class="dropdown">
										<a href="#"><img src="assets/images/menu-icon9.png" alt="menu-icon2" /> Book & Office <i class="fa fa-angle-right" aria-hidden="true"></i></a>
										<ul class="dropdown-menu right">
											<li><a href="grid.html">Book 05</a></li>
											<li><a href="list.html">Book 06</a></li>
											<li><a href="list.html">Office 02</a></li>
											<li><a href="grid.html">Office 01</a></li>
										</ul>
									</li>
									<li>
										<a href="#"><img src="assets/images/menu-icon10.png" alt="menu-icon2" /> Cameras & Camcorders</a>
									</li>
									<li>
										<a href="#"><img src="assets/images/menu-icon11.png" alt="menu-icon2" />All Categories</a>
									</li>
								</ul>
							</li>
							<li><a href="index.html">Home</a></li>
							<li><a href="list.html">List</a></li>
							<li><a href="grid.html">Grid</a></li>
							<li><a href="shop-detail.html">Shop-detail</a></li>
							<li><a href="contact.html">Contact</a></li>
							<li><a href="shopping-cart.html">Shopping-cart</a></li>
							<li><a href="checkout.html">Checkout</a></li>
						</ul>
						<!-- /.navbar-collapse -->
					</div>
				</nav>
				<!-- /nav end -->
			</div>
		</div>
	</section>
	<!-- header-outer -->
	<section class="header-outer">
		<!-- header-slider -->
			<div class="header-slider">					
					<div id="home-slider" class="carousel slide carousel-fade" data-ride="carousel">
						<!-- .home-slider -->
						<div class="carousel-inner">
							<div class="item active" style="background-image: url(assets/images/home-header1.jpg);  background-repeat: no-repeat; background-position: top;">
								<div class="container">		
									<div class="caption">
									<div class="caption-outer">
										<div class="col-xs-12 col-sm-12 col-md-4">												
										</div>
										<div class="col-xs-12 col-sm-6 col-md-6">
											<h3>samsung galaxy ON NXT</h3>
											<h2 class="animated wow slideInUp" data-wow-delay="0ms" data-wow-duration="1500ms">New Arrivals</h2>
											<h4>Only from $520 </h4>
											<p class="animated wow fadeInRight">iPhone 7 dramatically improves the most important aspects of the iPhone experience.</p>
											<a data-scroll class="btn get-start animated fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms" href="#">BUY NOW</a>
										</div>
										<div class="col-xs-12 col-sm-6 col-md-2">												
											<div class="save-price animated wow slideInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
												<span class="save-text">From</span>
												<span class="saveprice-no"><sup>$</sup>520</span>
											</div>
										</div>
									</div>
								</div>
								</div>
								
							</div>
							<div class="item" style="background-image: url(assets/images/home-header2.jpg);  background-repeat: no-repeat; background-position: top;">
								<div class="container">		
									<div class="caption">
									<div class="caption-outer">
										<div class="col-xs-12 col-sm-12 col-md-4">												
										</div>
										<div class="col-xs-12 col-sm-6 col-md-6">
											<h3>new collection</h3>
											<h2 class="animated wow slideInUp" data-wow-delay="0ms" data-wow-duration="1500ms">Phantom</h2>
											<h4>Only from $920 </h4>
											<p class="animated wow fadeInRight">iPhone 7 dramatically improves the most important aspects of the iPhone experience.</p>
											<a data-scroll class="btn get-start animated fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms" href="#">BUY NOW</a>
										</div>
										<div class="col-xs-12 col-sm-6 col-md-2">												
											<div class="save-price animated wow slideInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
												<span class="save-text">From</span>
												<span class="saveprice-no"><sup>$</sup>520</span>
											</div>
										</div>
									</div>
								</div>
								</div>
							</div>
							<div class="item" style="background-image: url(assets/images/home-header3.jpg);  background-repeat: no-repeat; background-position: top;">
								<div class="container">		
									<div class="caption">
									<div class="caption-outer">
										<div class="col-xs-12 col-sm-12 col-md-4">												
										</div>
										<div class="col-xs-12 col-sm-6 col-md-6">
											<h3>Divoom brands</h3>
											<h2 class="animated wow slideInUp" data-wow-delay="0ms" data-wow-duration="1500ms">Voombox 2.0</h2>
											<h4>Only from $69 </h4>
											<p class="animated wow fadeInRight">iPhone 7 dramatically improves the most important aspects of the iPhone experience.</p>
											<a data-scroll class="btn get-start animated fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms" href="#">BUY NOW</a>
										</div>
										<div class="col-xs-12 col-sm-6 col-md-2">												
											<div class="save-price animated wow slideInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
												<span class="save-text">From</span>
												<span class="saveprice-no"><sup>$</sup>520</span>
											</div>
										</div>
									</div>
								</div>
								</div>
							</div>
						</div>
						<!-- indicators -->
						<ol class="carousel-indicators">
							<li data-target="#home-slider" data-slide-to="0" class="active"></li>
							<li data-target="#home-slider" data-slide-to="1"></li>
							<li data-target="#home-slider" data-slide-to="2"></li>
						</ol>
						<!-- /indicators -->
						<!-- /.home-slider -->
					</div>					
			</div>
			<!-- /header-slider end -->			
	</section>
	<!-- /header-outer -->
</header>



<!-- deal-outer -->
<section class="deal-section">
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="deal-week">
					<div class="title">
						<h2>Deals Of The Week</h2>
					</div>
					<div class="owl-demo-outer">
						<!-- #owl-demo -->
						<div id="owl-demo" class="deals-wk">
							<div class="item">
								<div class="col-md-12">
									<!-- .pro-text -->
									<div class="pro-text text-center">
										<!-- .pro-img -->
										<div class="pro-img">
											<img src="assets/images/wk-deal-img.jpg" alt="2" />
										</div>
										<!-- /.pro-img -->
										<div class="text-text">
											<span>Macbook, Laptop</span>
											<h4> Apple Macbook Retina 23’’ </h4>
											<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.</p>
											<p class="wk-price">$290.00 <span>$290.00</span> </p>
											<p class="availalbe">Availalbe: <span>In Stock</span></p>
											<a href="#" class="add-btn">Add to cart</a>
										</div>
										<!-- clockdiv -->
										<div id="clockdiv">
											<h4>Hurry Up! Offer ends in:</h4>
											<div>
												<span class="days">14</span>
												<div class="smalltext">Days</div>
											</div>
											<div>
												<span class="hours">23</span>
												<div class="smalltext">Hours</div>
											</div>
											<div>
												<span class="minutes">59</span>
												<div class="smalltext">Minutes</div>
											</div>
											<div>
												<span class="seconds">47</span>
												<div class="smalltext">Seconds</div>
											</div>
										</div>
										<!-- /clockdiv -->
									</div>
									<!-- /.pro-text -->
								</div>
							</div>
							<div class="item">
								<div class="col-md-12">
									<!-- .pro-text -->
									<div class="pro-text text-center">
										<!-- .pro-img -->
										<div class="pro-img">
											<img src="assets/images/wk-deal-img.jpg" alt="2" />
										</div>
										<!-- /.pro-img -->
										<div class="text-text">
											<span>Macbook, Laptop</span>
											<h4> Apple Macbook Retina 23’’ </h4>
											<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.</p>
											<p class="wk-price">$290.00 <span>$290.00</span> </p>
											<p class="availalbe">Availalbe: <span>In Stock</span></p>
											<a href="#" class="add-btn">Add to cart</a>
										</div>
									</div>
									<!-- /.pro-text -->
								</div>
							</div>
							<div class="item">
								<div class="col-md-12">
									<!-- .pro-text -->
									<div class="pro-text text-center">
										<!-- .pro-img -->
										<div class="pro-img">
											<img src="assets/images/wk-deal-img.jpg" alt="2" />
										</div>
										<!-- /.pro-img -->
										<div class="text-text">
											<span>Macbook, Laptop</span>
											<h4> Apple Macbook Retina 23’’ </h4>
											<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.</p>
											<p class="wk-price">$290.00 <span>$290.00</span> </p>
											<p class="availalbe">Availalbe: <span>In Stock</span></p>
											<a href="#" class="add-btn">Add to cart</a>
										</div>
									</div>
									<!-- /.pro-text -->
								</div>
							</div>
							<div class="item">
								<div class="col-md-12">
									<!-- .pro-text -->
									<div class="pro-text text-center">
										<!-- .pro-img -->
										<div class="pro-img">
											<img src="assets/images/wk-deal-img.jpg" alt="2" />
										</div>
										<!-- /.pro-img -->
										<div class="text-text">
											<span>Macbook, Laptop</span>
											<h4> Apple Macbook Retina 23’’ </h4>
											<p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.</p>
											<p class="wk-price">$290.00 <span>$290.00</span> </p>
											<p class="availalbe">Availalbe: <span>In Stock</span></p>
											<a href="#" class="add-btn">Add to cart</a>
										</div>
									</div>
									<!-- /.pro-text -->
								</div>
							</div>
							<!-- /#owl-demo -->
						</div>
					</div>

				</div>
			</div>
				<div class="col-sm-8">
					<c:forEach items="${list}" var="book">
					<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img width="70" height="100" src="${book.book_img}" alt="img" />
												</div>
												<!-- /.pro-img -->
						<div class="pro-text-outer">
														<span>${book.book_writer}</span>
														<a href="UiSelectBookServlet?book_id=${book.book_id}">
															<h4> ${book.book_name} </h4>
														</a>
														<p class="wk-price">${book.book_price}</p>
														<a href="UiBookShoppingServlet?book_id=${book.book_id}" class="add-btn">Add to cart</a>
													</div>
													</div>
					</div>
					</c:forEach>
				</div>

			
						<div id="menu1" class="tab-pane fade">							
							<div class="owl-demo-outer">
								<!-- #owl-demo -->
								<div id="owl-demo7" class="deals-wk2">
									<div class="item">
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img2.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img3.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img4.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img5.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img6.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="#">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>

									</div>
									<div class="item">
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img2.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img3.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img4.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img5.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img6.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>

									</div>


									<!-- /#owl-demo -->
								</div>
							</div>
						</div>
						<div id="menu2" class="tab-pane fade">								
							<div class="owl-demo-outer">
								<!-- #owl-demo -->
								<div id="owl-demo6" class="deals-wk2">
									<div class="item">
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img2.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img3.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img4.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="shop-detail.html">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img5.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="#">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img6.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="#">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>

									</div>
									<div class="item">
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="#">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img2.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="#">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img3.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="#">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img4.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="#">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img5.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="#">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<!-- .pro-text -->
											<div class="pro-text text-center">
												<!-- .pro-img -->
												<div class="pro-img">
													<img src="assets/images/new-arrivals-img6.jpg" alt="2" />
												</div>
												<!-- /.pro-img -->
												<div class="pro-text-outer">
													<span>Macbook, Laptop</span>
													<a href="#">
														<h4> Apple Macbook Retina 23’ </h4>
													</a>
													<p class="wk-price">$290.00 </p>
													<a href="#" class="add-btn">Add to cart</a>
												</div>
											</div>
											<!-- /.pro-text -->
										</div>

									</div>


									<!-- /#owl-demo -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /new-arrivals -->

			</div>
		</div>
	</div>
</section>
<!-- /deal-outer -->
<!-- all-product -->
<section class="all-product">
	<div class="container">
		<div class="row">
			<!-- title -->
			<div class="title">
				<h2>
					ELECTRONICS & COMPUTERS						
				</h2>
				<ul class="nav nav-tabs etabs">
						<li class="active"><a data-toggle="tab" href="#phones">Cell Phones</a></li>
						<li><a data-toggle="tab" href="#laptop">Laptop</a></li>
						<li><a data-toggle="tab" href="#desktop">Desktop</a></li>
						<li><a data-toggle="tab" href="#tV">TV & Video</a></li>
						<li><a data-toggle="tab" href="#tablets">Tablets</a></li>
					</ul>
			</div>
			<!-- /title -->
			<!-- electonics -->
			<div class="electonics">

				<div class="brd2 col-xs-12 col-sm-3 col-md-3">
					<div id="home-slider2" class="carousel slide carousel-fade" data-ride="carousel">
						<!-- .home-slider -->
						<div class="carousel-inner">
							<div class="item active">
								<a class="ads" href="#">
									<img src="assets/images/add-banner.jpg" alt="add-banner" />
								</a>
							</div>
							<div class="item">
								<a class="ads" href="#">
									<img src="assets/images/add-banner.jpg" alt="add-banner" />
								</a>
							</div>
						</div>
						<!-- indicators -->
						<ol class="carousel-indicators">
							<li data-target="#home-slider2" data-slide-to="0" class="active"></li>
							<li data-target="#home-slider2" data-slide-to="1"></li>
						</ol>
						<!-- /indicators -->
						<!-- /.home-slider -->
					</div>
				</div>
				<div class="col-xs-12 col-sm-9 col-md-9">
					<div class="row">
						<!-- tab-content -->
						<div class="tab-content">
							<!-- tab-pane -->
							<div id="phones" class="tab-pane fade in active">									
								<div class="owl-demo-outer">
									<!-- #owl-demo -->
									<div id="owl-demo3" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
								</div>


							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="laptop" class="tab-pane fade in">
								<div id="owl-demo13" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="desktop" class="tab-pane fade in">
								<div id="owl-demo14" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="tV" class="tab-pane fade in">
								<div id="owl-demo15" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="tablets" class="tab-pane fade in">
								<div id="owl-demo16" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/elec-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/elec-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
							</div>
							<!-- /tab-pane -->
						</div>
						<!-- /tab-content -->

					</div>
				</div>
			</div>
			<!-- /electonics -->
			<!-- half-banner -->
			<div class="half-banner">
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-6">
						<a href="#" class="banner half-banner1">
							<div class="text">
								<h4>best digital</h4>
								<h3>sale smartwatch</h3>
								<div class="banner-price">
									$620.00 <span>$60.00  </span>
								</div>
							</div>
						</a>
					</div>
					<a href="#" class="col-xs-12 col-sm-6 col-md-6">
						<div class="banner half-banner2">
							<div class="text">
								<h4>strong prices</h4>
								<h3>Lenovo Yoga Tablet 2</h3>
								<div class="banner-price">
									$620.00 <span>$60.00  </span>
								</div>
							</div>
						</div>
					</a>
				</div>
			</div>
			<!-- /half-banner -->
			<!-- title -->
			<div class="title">
				<h2>
					FASHION & CLOTHING						
				</h2>
				<ul class="nav nav-tabs etabs">
						<li class="active"><a data-toggle="tab" href="#men">Men’s</a></li>
						<li><a data-toggle="tab" href="#women">Women’s</a></li>
						<li><a data-toggle="tab" href="#kid">Kid’s</a></li>
						<li><a data-toggle="tab" href="#clothing">Clothing</a></li>
						<li><a data-toggle="tab" href="#shoes">Shoes</a></li>
						<li><a data-toggle="tab" href="#handbag">Handbag</a></li>
					</ul>
			</div>
			<!-- /title -->
			<!-- FASHION -->
			<div class="electonics">

				<div class="brd2 col-xs-12 col-sm-3 col-md-3">
					<div id="home-slider3" class="carousel slide carousel-fade" data-ride="carousel">
						<!-- .home-slider -->
						<div class="carousel-inner">
							<div class="item active">
								<a class="ads" href="#">
									<img src="assets/images/fs-add-banner.jpg" alt="add-banner" />
								</a>
							</div>
							<div class="item">
								<a class="ads" href="#">
									<img src="assets/images/fs-add-banner.jpg" alt="add-banner" />
								</a>
							</div>
						</div>
						<!-- indicators -->
						<ol class="carousel-indicators">
							<li data-target="#home-slider3" data-slide-to="0" class="active"></li>
							<li data-target="#home-slider3" data-slide-to="1"></li>
						</ol>
						<!-- /indicators -->
						<!-- /.home-slider -->
					</div>
				</div>
				<div class="col-xs-12 col-sm-9 col-md-9">
					<div class="row">
						<!-- tab-content -->
						<div class="tab-content">
							<!-- tab-pane -->
							<div id="men" class="tab-pane fade in active">
									<div class="owl-demo-outer">
									<!-- #owl-demo -->
									<div id="owl-demo9" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/fc-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/fc-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/fc-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/fc-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
								</div>


							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="women" class="tab-pane fade in">
									<div class="owl-demo-outer">
									<!-- #owl-demo -->
									<div id="owl-demo17" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/fc-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/fc-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/fc-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/fc-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="kid" class="tab-pane fade in">
									<div class="owl-demo-outer">
									<!-- #owl-demo -->
									<div id="owl-demo18" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/fc-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/fc-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/fc-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/fc-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="clothing" class="tab-pane fade in">
									<div class="owl-demo-outer">
									<!-- #owl-demo -->
									<div id="owl-demo19" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/fc-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/fc-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/fc-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/fc-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="shoes" class="tab-pane fade in">
									<div class="owl-demo-outer">
									<!-- #owl-demo -->
									<div id="owl-demo20" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/fc-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/fc-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/fc-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/fc-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="handbag" class="tab-pane fade in">
									<div class="owl-demo-outer">
									<!-- #owl-demo -->
									<div id="owl-demo21" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/fc-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/fc-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/fc-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/fc-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/fc-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /tab-pane -->
						</div>
						<!-- /tab-content -->

					</div>
				</div>
			</div>
			<!-- /FASHION -->
			<!-- full-banner -->
			<div class="half-banner">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12">
						<a href="#" class="banner animated wow slideInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
							<img src="assets/images/add-banner-large.jpg" alt="add banner large">
						</a>
					</div>
				</div>
			</div>
			<!-- /full-banner -->
			<!-- title -->
			<div class="title">
				<h2>
					Home, Garden & Kitchen						
				</h2>
				<ul class="nav nav-tabs etabs">
						<li class="active"><a data-toggle="tab" href="#men2">Men’s</a></li>
						<li><a data-toggle="tab" href="#women2">Women’s</a></li>
						<li><a data-toggle="tab" href="#kid2">Kid’s</a></li>
						<li><a data-toggle="tab" href="#clothing2">Clothing</a></li>
						<li><a data-toggle="tab" href="#shoes2">Shoes</a></li>
						<li><a data-toggle="tab" href="#handbag2">Handbag</a></li>
					</ul>
			</div>
			<!-- /title -->
			<!-- Home-Garden-Kitchen -->
			<div class="electonics">

				<div class="brd2 col-xs-12 col-sm-3 col-md-3">
					<div id="home-slider4" class="carousel slide carousel-fade" data-ride="carousel">
						<!-- .home-slider -->
						<div class="carousel-inner">
							<div class="item active">
								<a class="ads" href="#">
									<img src="assets/images/hgk-add-banner.jpg" alt="add-banner" />
								</a>
							</div>
							<div class="item">
								<a class="ads" href="#">
									<img src="assets/images/hgk-add-banner.jpg" alt="add-banner" />
								</a>
							</div>
						</div>
						<!-- indicators -->
						<ol class="carousel-indicators">
							<li data-target="#home-slider4" data-slide-to="0" class="active"></li>
							<li data-target="#home-slider4" data-slide-to="1"></li>
						</ol>
						<!-- /indicators -->
						<!-- /.home-slider -->
					</div>
				</div>
				<div class="col-xs-12 col-sm-9 col-md-9">
					<div class="row">
						<!-- tab-content -->
						<div class="tab-content">
							<!-- tab-pane -->
							<div id="men2" class="tab-pane fade in active">
									<div class="owl-demo-outer">
									<!-- #owl-demo -->
									<div id="owl-demo10" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/hgk-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/hgk-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/hgk-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/hgk-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
								</div>


							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="women2" class="tab-pane fade in">
								<div class="owl-demo-outer">
									<!-- #owl-demo -->
									<div id="owl-demo22" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/hgk-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/hgk-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/hgk-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/hgk-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="kid2" class="tab-pane fade in">
								<div class="owl-demo-outer">
									<!-- #owl-demo -->
									<div id="owl-demo23" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/hgk-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/hgk-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/hgk-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/hgk-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="clothing2" class="tab-pane fade in">
								<div class="owl-demo-outer">
									<!-- #owl-demo -->
									<div id="owl-demo24" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/hgk-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/hgk-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/hgk-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/hgk-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="shoes2" class="tab-pane fade in">
								<div class="owl-demo-outer">
									<!-- #owl-demo -->
									<div id="owl-demo25" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/hgk-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/hgk-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/hgk-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/hgk-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="handbag2" class="tab-pane fade in">
								<div class="owl-demo-outer">
									<!-- #owl-demo -->
									<div id="owl-demo26" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/hgk-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/hgk-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/hgk-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/hgk-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/hgk-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /tab-pane -->
						</div>
						<!-- /tab-content -->

					</div>
				</div>
			</div>
			<!-- Home-Garden-Kitchen -->
			<!-- half-banner -->
			<div class="half-banner">
				<div class="row">
					<a href="#" class="col-xs-12 col-sm-6 col-md-6">
						<img src="assets/images/half-banner3.jpg" alt="half-banner3" />
					</a>
					<a href="#" class="col-xs-12 col-sm-6 col-md-6">						
							<img src="assets/images/half-banner4.jpg" alt="half-banner3" />
					</a>
				</div>
			</div>
			<!-- /half-banner -->
			<!-- title -->
			<div class="title">
				<h2>
					GIFT & HAND MADE						
				</h2>
				<ul class="nav nav-tabs etabs">
						<li class="active"><a data-toggle="tab" href="#men3">Men’s</a></li>
						<li><a data-toggle="tab" href="#women3">Women’s</a></li>
						<li><a data-toggle="tab" href="#kid3">Kid’s</a></li>
						<li><a data-toggle="tab" href="#clothing3">Clothing</a></li>
						<li><a data-toggle="tab" href="#shoes3">Shoes</a></li>
						<li><a data-toggle="tab" href="#handbag3">Handbag</a></li>
					</ul>
			</div>
			<!-- /title -->
			<!-- GIFT -->
			<div class="electonics">

				<div class="brd2 col-xs-12 col-sm-3 col-md-3">
					<div id="home-slider5" class="carousel slide carousel-fade" data-ride="carousel">
						<!-- .home-slider -->
						<div class="carousel-inner">
							<div class="item active">
								<a class="ads" href="#">
									<img src="assets/images/home-design-add-banner.jpg" alt="add-banner" />
								</a>
							</div>
							<div class="item">
								<a class="ads" href="#">
									<img src="assets/images/home-design-add-banner.jpg" alt="add-banner" />
								</a>
							</div>
						</div>
						<!-- indicators -->
						<ol class="carousel-indicators">
							<li data-target="#home-slider5" data-slide-to="0" class="active"></li>
							<li data-target="#home-slider5" data-slide-to="1"></li>
						</ol>
						<!-- /indicators -->
						<!-- /.home-slider -->
					</div>
				</div>
				<div class="col-xs-12 col-sm-9 col-md-9">
					<div class="row">
						<!-- tab-content -->
						<div class="tab-content">
							<!-- tab-pane -->
							<div id="men3" class="tab-pane fade in active">									
								<div class="owl-demo-outer">
									<!-- #owl-demo -->
									<div id="owl-demo11" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/ghm-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/ghm-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/ghm-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/ghm-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
								</div>


							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="women3" class="tab-pane fade in">
								<div class="owl-demo-outer">
									<!-- #owl-demo -->
									<div id="owl-demo27" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/ghm-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/ghm-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/ghm-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/ghm-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="kid3" class="tab-pane fade in">
								<div class="owl-demo-outer">
									<!-- #owl-demo -->
									<div id="owl-demo28" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/ghm-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/ghm-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/ghm-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/ghm-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="clothing3" class="tab-pane fade in">
								<div class="owl-demo-outer">
									<!-- #owl-demo -->
									<div id="owl-demo29" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/ghm-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/ghm-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/ghm-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/ghm-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="shoes3" class="tab-pane fade in">
								<div class="owl-demo-outer">
									<!-- #owl-demo -->
									<div id="owl-demo30" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/ghm-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/ghm-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/ghm-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/ghm-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /tab-pane -->
							<!-- tab-pane -->
							<div id="handbag3" class="tab-pane fade in">
								<div class="owl-demo-outer">
									<!-- #owl-demo -->
									<div id="owl-demo31" class="deals-wk2">
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/ghm-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/ghm-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="new-tag">NEW</sup>
														<img src="assets/images/ghm-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
										<div class="item">
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<sup class="sale-tag">sale!</sup>
														<img src="assets/images/ghm-img1.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
														<a href="#" class="add-btn2"><i class="icon-heart icons" aria-hidden="true"></i></a>
														<a href="#" class="add-btn2"><i class="icon-refresh icons"></i></a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img2.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img3.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
											<div class="bdr col-xs-12 col-sm-12 col-md-6">
												<!-- e-product -->
												<div class="e-product">
													<div class="pro-img">
														<img src="assets/images/ghm-img4.jpg" alt="2">
														<div class="hover-icon">
															<a href="#"><i class="fa fa-search" aria-hidden="true"></i></a>
														</div>
													</div>
													<div class="pro-text-outer">
														<span>Macbook, Laptop</span>
														<a href="#">
															<h4> Apple Macbook Retina 23’ </h4>
														</a>
														<p class="wk-price">$290.00 </p>
														<a href="#" class="add-btn">Add to cart</a>
													</div>
												</div>
												<!-- /e-product -->
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /tab-pane -->
						</div>
						<!-- /tab-content -->

					</div>
				</div>
			</div>
			<!-- /GIFT -->
			<!-- full-banner -->
			<div class="half-banner">
				<div class="row">
					<a href="#" class="col-xs-12 col-sm-12 col-md-12">
						<img src="assets/images/add-banner-large2.jpg" alt="add-banner-large2" />
					</a>
				</div>
			</div>
			<!-- /full-banner -->
			<!-- title -->
			<div class="title">
				<h2>
					LATEST POSTS BLOG
				</h2>
			</div>
			<!-- /title -->
			<!-- BLOG -->
			<div class="home-blog">
				<div class="col-xs-12 col-sm-12 col-md-12">
					<div class="row">							
						<div class="owl-demo-outer">
							<!-- #owl-demo -->
							<div id="owl-demo2" class="deals-wk2">
								<!-- item -->
								<div class="item">
									<div class="bdr col-xs-12 col-sm-6 col-md-4">
										<!-- blog-outer -->
										<div class="blog-outer">
											<div class="blog-img">
												<img src="assets/images/lt-blog-img1.jpg" alt="lt-blog-img1">
											</div>
											<div class="blog-text-outer">
												<a href="#">
													<h4>Nam liber tempor cum soluta nobis </h4>
												</a>
												<p><span class="dt">March 20, 2017</span> by <span class="ath">Zcubedesign</span></p>
												<p class="content-text">Typi non habent claritatem insitam est usus legentis in iis qui facit eorum claritatem. Investigationes...</p>
												<a href="#" class="add-btn">read more</a>
											</div>
										</div>
										<!-- /blog-outer -->
									</div>
									<div class="bdr col-xs-12 col-sm-6 col-md-4">
										<!-- blog-outer -->
										<div class="blog-outer">
											<div class="blog-img">
												<img src="assets/images/lt-blog-img2.jpg" alt="lt-blog-img1">
											</div>
											<div class="blog-text-outer">
												<a href="#">
													<h4>Nam liber tempor cum soluta nobis </h4>
												</a>
												<p><span class="dt">March 20, 2017</span> by <span class="ath">Zcubedesign</span></p>
												<p class="content-text">Typi non habent claritatem insitam est usus legentis in iis qui facit eorum claritatem. Investigationes...</p>
												<a href="#" class="add-btn">read more</a>
											</div>
										</div>
										<!-- /blog-outer -->
									</div>
									<div class="bdr col-xs-12 col-sm-6 col-md-4">
										<!-- blog-outer -->
										<div class="blog-outer">
											<div class="blog-img">
												<img src="assets/images/lt-blog-img3.jpg" alt="lt-blog-img1">
											</div>
											<div class="blog-text-outer">
												<a href="#">
													<h4>Nam liber tempor cum soluta nobis </h4>
												</a>
												<p><span class="dt">March 20, 2017</span> by <span class="ath">Zcubedesign</span></p>
												<p class="content-text">Typi non habent claritatem insitam est usus legentis in iis qui facit eorum claritatem. Investigationes...</p>
												<a href="#" class="add-btn">read more</a>
											</div>
										</div>
										<!-- /blog-outer -->
									</div>
								</div>
								<!-- /item -->
								<!-- item -->
								<div class="item">
									<div class="bdr col-xs-12 col-sm-6 col-md-4">
										<!-- blog-outer -->
										<div class="blog-outer">
											<div class="blog-img">
												<img src="assets/images/lt-blog-img1.jpg" alt="lt-blog-img1">
											</div>
											<div class="blog-text-outer">
												<a href="#">
													<h4>Nam liber tempor cum soluta nobis </h4>
												</a>
												<p><span class="dt">March 20, 2017</span> by <span class="ath">Zcubedesign</span></p>
												<p class="content-text">Typi non habent claritatem insitam est usus legentis in iis qui facit eorum claritatem. Investigationes...</p>
												<a href="#" class="add-btn">read more</a>
											</div>
										</div>
										<!-- /blog-outer -->
									</div>
									<div class="bdr col-xs-12 col-sm-6 col-md-4">
										<!-- blog-outer -->
										<div class="blog-outer">
											<div class="blog-img">
												<img src="assets/images/lt-blog-img2.jpg" alt="lt-blog-img1">
											</div>
											<div class="blog-text-outer">
												<a href="#">
													<h4>Nam liber tempor cum soluta nobis </h4>
												</a>
												<p><span class="dt">March 20, 2017</span> by <span class="ath">Zcubedesign</span></p>
												<p class="content-text">Typi non habent claritatem insitam est usus legentis in iis qui facit eorum claritatem. Investigationes...</p>
												<a href="#" class="add-btn">read more</a>
											</div>
										</div>
										<!-- /blog-outer -->
									</div>
									<div class="bdr col-xs-12 col-sm-6 col-md-4">
										<!-- blog-outer -->
										<div class="blog-outer">
											<div class="blog-img">
												<img src="assets/images/lt-blog-img3.jpg" alt="lt-blog-img1">
											</div>
											<div class="blog-text-outer">
												<a href="#">
													<h4>Nam liber tempor cum soluta nobis </h4>
												</a>
												<p><span class="dt">March 20, 2017</span> by <span class="ath">Zcubedesign</span></p>
												<p class="content-text">Typi non habent claritatem insitam est usus legentis in iis qui facit eorum claritatem. Investigationes...</p>
												<a href="#" class="add-btn">read more</a>
											</div>
										</div>
										<!-- /blog-outer -->
									</div>
								</div>
								<!-- /item -->
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /BLOG -->
			<div class="testimonal">
				<!-- .testimonal -->
				<div class="col-md-12 text-center">
					<div id="home-slider11" class="carousel slide carousel-fade" data-ride="carousel">
						<!-- .testimonal-slider -->
						<div class="carousel-inner">
							<div class="item">
								<div class="caption">
									<p class="animated fadeInRightBig">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit.
										<br>
										<br>
										<span>Zcubedesign</span> - Web designer
									</p>
								</div>
							</div>
							<div class="item">
								<div class="caption">
									<p class="animated fadeInRightBig">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit.
										<br>
										<br>
										<span>Zcubedesign</span> - Web designer
									</p>
								</div>
							</div>
							<div class="item active">
								<div class="caption">
									<p class="animated fadeInRightBig">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit.
										<br>
										<br>
										<span>Zcubedesign</span> - Web designer
									</p>
								</div>
							</div>
							<div class="item">
								<div class="caption">
									<p class="animated fadeInRightBig">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit.
										<br>
										<br>
										<span>Zcubedesign</span> - Web designer
									</p>
								</div>
							</div>
							<div class="item">
								<div class="caption">
									<p class="animated fadeInRightBig">Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit.
										<br>
										<br>
										<span>Zcubedesign</span> - Web designer
									</p>
								</div>
							</div>

							<ol class="carousel-indicators">
								<li data-target="#home-slider11" data-slide-to="0" class=""><img src="assets/images/test-img1.jpg" alt="11"></li>
								<li data-target="#home-slider11" data-slide-to="1" class=""><img src="assets/images/test-img1.jpg" alt="11"></li>
								<li data-target="#home-slider11" data-slide-to="2" class="active"><img src="assets/images/test-img1.jpg" alt="11"></li>
								<li data-target="#home-slider11" data-slide-to="3" class=""><img src="assets/images/test-img1.jpg" alt="11"></li>
								<li data-target="#home-slider11" data-slide-to="4" class=""><img src="assets/images/test-img1.jpg" alt="11"></li>
							</ol>
						</div>
						<!-- /.testimonal-slider -->
					</div>
				</div>
				<!-- /.testimonal -->
			</div>
			<!-- .free-shipping -->
			<div class="free-shipping">
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="icon-shipping">
							<i class="icon-rocket icons"></i>
						</div>
						<div class="shipping-text">
							<h4>free shipping </h4>
							<p>Free Shipping On All Order</p>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="icon-shipping">
							<i class="icon-earphones-alt icons"></i>
						</div>
						<div class="shipping-text">
							<h4>online support 24/7</h4>
							<p>Technical Support 24/7</p>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="icon-shipping">
							<i class="icon-refresh icons"></i>
						</div>
						<div class="shipping-text">
							<h4>MONEY BACK GUARANTEE </h4>
							<p>30 Day Money Back</p>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="icon-shipping">
							<i class="icon-badge icons"></i>
						</div>
						<div class="shipping-text">
							<h4>MEMBER DISCOUNT</h4>
							<p>Upto 40% Discount</p>
						</div>
					</div>

				</div>
			</div>
			<!-- /.free-shipping -->
		</div>
	</div>
</section>
<!-- /all-product -->
<!-- newsletter -->
<section class="newsletter">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6">
				<h6 class="sing-up-text">sign up to
					<strong>newsletter</strong> &
					<strong>free shipping</strong> for first shopping</h6>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6">
				<div class="sing-up-input">
					<input name="singup" type="text" placeholder="Your email address...">
					<input name="submit" type="button" value="Submit" />
				</div>
			</div>
		</div>
	</div>
</section>
<!-- /newsletter -->
<footer>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<!-- f-weghit -->
				<div class="f-weghit">
					<img src="assets/images/logo.png" alt="logo" />
					<p><strong>Complex</strong> is a premium Templates theme with advanced admin module. It’s extremely customizable, easy to use and fully responsive and retina ready.</p>
					<ul>
						<li><i class="icon-location-pin icons" aria-hidden="true"></i> <strong>Add:</strong> 1234 Heaven Stress, Beverly Hill, Melbourne, USA.</li>
						<li><i class="icon-envelope-letter icons"></i> <strong>Email:</strong> Contact@erentheme.com</li>
						<li><i class="icon-call-in icons"></i> <strong>Phone Number:</strong> (800) 123 456 789</li>
					</ul>
				</div>
				<!-- /f-weghit -->
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<!-- f-weghit2 -->
				<div class="f-weghit2">
					<h4>INFORMATION</h4>
					<ul>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Contact Us</a></li>
						<li><a href="#">All Collection</a></li>
						<li><a href="#">Privacy policy</a></li>
						<li><a href="#">Terms & conditio</a></li>
					</ul>
				</div>
				<!-- /f-weghit2 -->
				<!-- f-weghit2 -->
				<div class="f-weghit2">
					<h4>CATEGORIES</h4>
					<ul>
						<li><a href="#">Fashion</a></li>
						<li><a href="#">Electronics</a></li>
						<li><a href="#">Furnitured & Decor</a></li>
						<li><a href="#">Jewelry & Watches</a></li>
						<li><a href="#">Health & Beauty</a></li>
					</ul>
				</div>
				<!-- /f-weghit2 -->
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<!-- f-weghit -->
				<div class="f-weghit">
					<h4>On-Sale Products</h4>
					<!-- e-product -->
					<div class="e-product">
						<div class="pro-img">
							<img src="assets/images/on-seal-img1.jpg" alt="2">
						</div>
						<div class="pro-text-outer">
							<span>Macbook, Laptop</span>
							<a href="#">
								<h4> Apple Macbook Retina 23’ </h4>
							</a>
							<p class="wk-price">$290.00 </p>
						</div>
					</div>
					<!-- e-product -->
					<!-- e-product -->
					<div class="e-product">
						<div class="pro-img">
							<img src="assets/images/on-seal-img2.jpg" alt="2">
						</div>
						<div class="pro-text-outer">
							<span>Macbook, Laptop</span>
							<a href="#">
								<h4> Apple Macbook Retina 23’ </h4>
							</a>
							<p class="wk-price">$290.00 </p>
						</div>
					</div>
					<!-- e-product -->
				</div>
				<!-- /f-weghit -->
			</div>
			<!-- copayright -->
			<div class="copayright">
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-6">
						Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">caonima</a>
					</div>
					<div class="text-right col-xs-12 col-sm-6 col-md-6">
						<img src="assets/images/payment-img.jpg" alt="payment-img" />
					</div>
				</div>
			</div>
			<!-- /copayright -->

		</div>
	</div>
</footer>
<!-- sticky-socia -->
<aside id="sticky-social">
	<ul>
		<li><a href="#" class="fa fa-facebook" target="_blank"><span><i class="fa fa-facebook" aria-hidden="true"></i> Facebook</span></a></li>
		<li><a href="#" class="fa fa-twitter" target="_blank"><span><i class="fa fa-twitter" aria-hidden="true"></i> Twitter</span></a></li>
		<li><a href="#" class="fa fa-rss" target="_blank"><span><i class="fa fa-rss" aria-hidden="true"></i> RSS</span></a></li>
		<li><a href="#" class="fa fa-pinterest-p" target="_blank"><span><i class="fa fa-pinterest-p" aria-hidden="true"></i> Pinterest</span></a></li>
		<li><a href="#" class="fa fa-share-alt" target="_blank"><span><i class="fa fa-share-alt" aria-hidden="true"></i> Flickr</span></a></li>
	</ul>
</aside>
<!-- /sticky-socia -->
<!-- Get Our Email Letter popup -->
<div class="modal fade modal-popup" id="modal1" data-open-onload="true" data-open-delay="1500" tabindex="-1" role="dialog">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fa fa-times"></i></button>
			<div class="modal-body">
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-6 pt-20">
						</div>
						<div class="col-sm-6 pt-20 text-center">
							<h2 class="heading font34 inverse">
								LOGIN
							</h2>
							<form name="main" action="UiLoginServlet" method="post">
								<div class="form-group">
									<input type="text" class="form-control" name="user_name" placeholder="Enter your user_name">
								</div>
								<div class="form-group">
									<input type="password" class="form-control" name="user_password" placeholder="Enter your user_password">
								</div>
								<div class="form-group">
									<input class="btn btn-black" type="submit" value="login"/>
								</div>
								<div class="form-group">
									<input type="checkbox" name="check" /> Do not show this popup again
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /Get Our Email Letter popup -->






<div class="modal fade modal-popup" id="modal2" data-open-onload="true" data-open-delay="1500" tabindex="-1" role="dialog">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fa fa-times"></i></button>
			<div class="modal-body">
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-6 pt-20">
						</div>
						<div class="col-sm-6 pt-20 text-center">
							<h2 class="heading font34 inverse">
								SIGN UP
							</h2>
							<form name="main" action="UiSignUpServlet" method="post">
								<div class="form-group">
									<input type="text" class="form-control" name="user_name" placeholder="Enter your user_name">
								</div>
								<div class="form-group">
									<input type="password" class="form-control" name="user_password" placeholder="Enter your user_password">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="user_email" placeholder="Enter your user_email">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="user_telephone" placeholder="Enter your user_telephone">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="user_address" placeholder="Enter your user_address">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="user_posttime" id="datepicker" placeholder="Enter your user_posttime">
								</div>
								<div class="form-group">
									<input class="btn btn-black" type="submit" value="SIGN UP"/>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>





<div class="modal fade modal-popup" id="modal3" data-open-onload="true" data-open-delay="1500" tabindex="-1" role="dialog">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="fa fa-times"></i></button>
			<div class="modal-body">
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-6 pt-20">
						</div>
						<div class="col-sm-6 pt-20 text-center">
							<h2 class="heading font34 inverse">
								 PERSONAL DATA
							</h2>
							<form name="main" action="UiSignUpServlet" method="post">
								<div class="form-group">
									<input type="text" class="form-control" name="user_name"
									 placeholder="Enter your user_name" VALUE="${sessionScope.user.user_name}">
								</div>
								<div class="form-group">
									<input type="password" class="form-control" name="user_password"
									 placeholder="Enter your user_password" value="${sessionScope.user.user_password}">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="user_email" 
									placeholder="Enter your user_email" value="${sessionScope.user.user_email}">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="user_telephone"
									 placeholder="Enter your user_telephone" value="${sessionScope.user.user_telephone}">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="user_address" 
									placeholder="Enter your user_address" value="${sessionScope.user.user_address}">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="user_posttime" 
									id="datepicker" placeholder="Enter your user_posttime" value="${sessionScope.user.user_posttime}">
								</div>
								<div class="form-group">
									<input class="btn btn-black" type="submit" value="UPTATE"/>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



<p id="back-top">
	<a href="#top"><i class="fa fa-chevron-up" aria-hidden="true"></i></a>
</p>
<script src="assets/js/jquery.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/bootstrap-dropdownhover.min.js"></script>
<!-- Plugin JavaScript -->
<script src="assets/js/jquery.easing.min.js"></script>
<script src="assets/js/wow.min.js"></script>
<!-- owl carousel -->
<script src="assets/owl-carousel/owl.carousel.js"></script>
<!--  Custom Theme JavaScript  -->
<script src="assets/js/custom.js"></script>
</body>

<script>
function qwe(){
	 $('#modal1').modal('show');
}
function wer(){
	 $('#modal2').modal('show');
}
function ert(){
	 $('#modal3').modal('show');
}


</script>

</html>
