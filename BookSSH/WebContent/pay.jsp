<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

<script src="jquery.js" type="text/javascript"></script>
<script type="text/javascript">
//验证邮箱格式
 $(function(){
  $("input[name='user_email']").blur(function(){
   var email = $(this).val();
   var reg = /\w+[@]{1}\w+[.]\w+/;
   var idresult = '';
   if(reg.test(email)){
	   idresult = "邮箱可用";
		$('#isresult3').css("color","green");
   }else{
	   idresult = "请输入正确的邮箱";
		$('#isresult3').css("color","red");
   }
   $('#isresult3').html(idresult);
  });
 });
</script>
<script type="text/javascript">
		$(document).ready(function(){
			//支付
			$('#buttonpay').click(function(){//点击按钮提交
		
				$.ajax({
					url:"${pageContext.request.contextPath}/updateState.do",
					type:"post",
					dataType: "json",
					success:function(data){//ajax返回的数据
						var result = data.result;
					
						if(result){
				
							alert('订单支付成功');
							
						}else{
							alert('操作失败...');
						}
					}
				});     
			});
			//删除购物车
			$('#button').click(function(){//点击按钮提交
		
				$.ajax({
					url:"${pageContext.request.contextPath}/deleteOrder.do",
					type:"post",
					dataType: "json",
					success:function(data){//ajax返回的数据
						var result = data.result;
					
						if(result){
							 window.location.reload();
							alert('订单已取消');
							
						}else{
							alert('操作失败...');
						}
					}
				});     
			});
			//检测用户名
			$('input[name="user_name"]').blur(function(){
				var name = $(this).val();
				if(name!=''){
					$.post(
								"${pageContext.request.contextPath}/userSelect.do",
								{"user_name":name},
								function(data){
									var result = data.result;
									var idresult = "";
									if(result){
										idresult = "user_name可用";
										$('#isresult').css("color","green");
									}else{
										$('#isresult').css("color","red");
										idresult = "user_name已存在";
									}
									$('#isresult').html(idresult);
								},
								"json"
							);
				}else{
					var idresult = "user_name不能为空";
					$('#isresult').css("color","red");
					$('#isresult').html(idresult);
				}
			
		});
			//检测密码
			$('input[name="user_password"]').blur(function(){
				var idresult1 = "";
				if($(this).val() != ''){
					idresult1 = "密码可用";
					$('#isresult1').css("color","green");
				}else{
					idresult1 = "密码不能为空";
					$('#isresult1').css("color","red");					
				}
				$('#isresult1').html(idresult1);
			});
			//检测确认密码
			$('input[name="user_password1"]').blur(function(){
				var idresult2 = "";
				if($(this).val() != ''){
					if($(this).val() == $('input[name="user_password"]').get(0).value){
						idresult2 = "两次密码不一致";
						$('#isresult2').css("color","red");
					}else{
						idresult2 = "密码正确";
						$('#isresult2').css("color","green");
					}
				}else{
					idresult2 = "密码不能为空";
					$('#isresult2').css("color","red");
				}
				$('#isresult2').html(idresult2);
			});
			
			//登录
			 $('#sub4').click(function(){//点击按钮提交
	         //要提交的表单id为form3
	
			$.ajax({
				url:"${pageContext.request.contextPath}/userLogin.do",
				data:$("#form3").serialize(),
				type:"post",
				dataType: "json",
				success:function(data){//ajax返回的数据
					var result = data.result;
					if(result){					
						$(location).prop('href', 'selectAllBook.do?id=2');
					}else{
						alert('用户名或密码错误!');
					}
				}
			});     
		});
			
			//注册
		 $('#sub').click(function(){//点击按钮提交
	         //要提交的表单id为form1
	
			$.ajax({
				url:"${pageContext.request.contextPath}/insertUser.do",
				data:$("#form1").serialize(),
				type:"post",
				success:function(data){//ajax返回的数据
					var result = data.result;
					if(result!=''){
						alert('注册成功,请登录');
					}else{
						alert('注册失败,请重试...');
					}
				}
			});     
		});
			//修改密码需要验证原密码
			 $('#sub2').click(function(){//点击按钮提交
				$.ajax({
					url:"${pageContext.request.contextPath}/confirmation.do",
					data:$("#form3").serialize(),
					type:"post",
				//	dataType:"json",
					success:function(data){//ajax返回的数据
						var result = data.result;
						if(result!=''){
							erth();
							rty();
							$(document.body).css({
							    "overflow-x":"hidden",
							    "overflow-y":"hidden"
							  });
							$('#modal4').css({
								"overflow-x":"auto",
								"overflow-y":"auto"
							});
						}else{
							alert('密码错误!');
						}
					}
				});     
		     });
			//修改资料
		 $('#sub1').click(function(){//点击按钮提交
	         //要提交的表单id为form2
	
			$.ajax({
				url:"${pageContext.request.contextPath}/updateUser.do",
				data:$("#form2").serialize(),
				type:"post",
				success:function(data){//ajax返回的数据
					var result = data.result;
					if(result!=true){
						alert('修改成功');
					}else{
						alert('修改失败,请重试...');
					}
				}
			});     
		});
	});
</script>


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
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
							<span><a href="adminlogin.jsp">后台管理</a></span>
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
							   你好，请<a onclick="qwe()" >登录</a>
							  </i></li>
       
    </c:when>
    <c:otherwise>
    <li><i class="icon-user-following icons" aria-hidden="true">
     你好，${sessionScope.user.user_name}
    </i>
        </li>
        <li>
							<div class="dropdown">
								<a href="" class="btn btn-default dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
									<i class="icon-settings icons" aria-hidden="true"></i> <a onclick="ert()">修改</a>
								</a>
							</div>
						</li>
						<li>
							<div class="dropdown">
								<a href="" class="btn btn-default dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
									<i class="icon-calendar icons" aria-hidden="true"></i> <a href="selectOrdersById.do?id=1&user_id=${user.user_id}">历史订单</a>
								</a>
							</div>
						</li>
						<li>
							<div class="dropdown">
								<a href="" class="btn btn-default dropdown-toggle" data-toggle="dropdown" data-hover="dropdown">
									<i class="icon-user-unfollow icons" aria-hidden="true"></i> <a href="userLoginOut.do">注销</a>
								</a>
							</div>
						</li>
    </c:otherwise>
						</c:choose>
						
						
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
						<li><a href="selectAllBook.do?id=2"><i class="icon-home icons" aria-hidden="true"></i></a><span ></span><strong>Home Page</strong></li>
						<li class="dropdown">
							<a href="#" id="cart" onclick="cart()"><i class="icon-basket icons" aria-hidden="true" ></i></a><span ></span><strong>Your Cart</strong>
						</li>
						<li class="dropdown">
							<a href="#" onclick="pay()"><i class="icon-fire icons" aria-hidden="true"></i></a><span ></span><strong>Payment</strong>
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
					
				</nav>
				<!-- /nav end -->
			</div>
		</div>
	</section>
	<!-- header-outer -->
	<section class="header-outer">
		<!-- header-slider -->
			<!-- /header-slider end -->			
	</section>
	<!-- /header-outer -->
</header>

 <section class="shopping-cart">
            <!-- .shopping-cart -->
            <div class="container">
				<div class="row">
				<div class="col-md-12">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">Library</li>
					</ol>
				</div>
<c:choose>
    <c:when test="${order_id==null}"><div>
          </div><div><br/>
          <br/>
                  </div>
                   <div>       
               </div><div class="col-md-12">
<h3>抱歉,还没有订单....<br/>
<a href="selectAllBook.do?id=2">先去首页看看吧</a>&nbsp;&nbsp;&nbsp;如果加入了购物车,&nbsp;&nbsp;&nbsp;
<a href="shopping-cart.jsp">就去购物车看看吧</a>
<br/><br/><br/><br/><br/><br/>
<br/></h3>
</div>
</c:when>
<c:when test="${order_id!=null}">
				<div class="col-md-6 contact-info">   
                        <div class="contact-form">
                           <form action="#" method="post" id="commentform" class="comment-form">
							<div class="row">
								 <div class="col-md-12">
								 <div class="contact-bg">                 
									<h2>完成支付</h2>
									<p>联系方式</p>
								</div> 
								</div>
								  <div class="col-md-6">
                              <div class="lable">姓名 <span>*</span></div>
                              <p class="comment-form-author"><input id="author" name="author" value="" size="30" type="text"></p>
                           </div>
                           <div class="col-md-6">
                              <div class="lable">电话 <span>*</span></div>
                              <p class="comment-form-email"><input id="email" name="email" value="" size="30" type="text"></p>
                           </div>
                           <div class="col-md-12">
                              <div class="lable">地址 <span>*</span></div>
                              <p class="comment-form-comment"><textarea id="comment" name="comment" cols="45" rows="8" placeholder="Comment" aria-required="true"></textarea></p>
                           </div>
                            <div class="col-md-12">
                              <div class="lable">订单号 <span>*</span></div>
                              <p class="comment-form-comment"><input type="text" style="font-size:50px;color:#F00;border:0px;text-align:center;" id="pricesum" value="${sessionScope.order_id}" readonly/></p>
                           </div>
                           <div text-align="center" class="col-md-12">
                              <p  class="form-submit"><input  name="btnz" id="buttonpay" class="btn btn-secondary"  type="button" value="支付"> </p>
								
                              <p ><input  name="btnq" id="button" class="btn btn-secondary"  type="button" value="取消订单">  </p> 
                           </div>                      
							 </div>                              
                        </form>
                     </div>
                     
                  </div>
            </c:when>
            </c:choose>
					<div class="col-md-6 contact-info">
						<div class="map">
                       <!--  map  -->
                       <!-- The element that will contain our Google Map. This is used in both the Javascript and CSS above. -->
                      		 <div id="map"></div>
                       <!--  m/ap  -->
                       </div> 
						<div class="col-md-12">
                     	<div class="contact-bg">                 
                        	<h2>Contact Us</h2>
							<p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.</p>
                        </div>
                     </div>
                     <div class="col-sm-3 col-md-6">
                     	<div class="contact-bg">                 
                        <h6>Office Address</h6>Urip Sumoharjo 123 Bukir Pasuruan, INA.
                        </div>
                     </div>
                     <div class="col-sm-3 col-md-6">
                     	<div class="contact-bg">                      
                        <h6>Email Address </h6>info@website.com<br>www.website.com                       
                        </div>
                     </div>
                     <div class="col-sm-3 col-md-6">
                     	<div class="contact-bg">                       
                        <h6>Phone Number</h6>1 234 567 890<br>9 876 543 210                       
                        </div>
                     </div>
                     <div class="col-sm-3 col-md-6">
                     	<div class="contact-bg">                        
                        <h6>Time Hourss</h6>
							Monday to Friday: 10h:00 Am to 7h:00 Pm<br/>
							Saturday: 10h:00 Am to 4h:00 Pm<br/>
							Sunday: 12h:00 Am to 4h:00 Pm
                        </div>
                     </div>
                        
                        
                  </div>
				</div>
               
            </div>
            <!-- /.shopping-cart -->
         </section>


			<!-- copayright -->
			<div class="copayright">
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-6">
						Copyright &copy; 2017.Company name All rights reserved.
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
							<form name="main" id="form3" method="post">
								<div class="form-group">
									<input type="text" class="form-control" name="user_name" placeholder="Enter your user_name">
								</div>
								<div class="form-group">
									<input type="password" class="form-control" name="user_password" placeholder="Enter your user_password">
								</div>
								<div class="form-group">
									<input class="btn btn-black" type="button" id="sub4" value="login"/>
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
<!-- Get Our Email Letter popup -->
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
								CONFIRMATION
							</h2>
							<form name="main" id="form3" method="post">
								<input type="hidden" name="user_name" id="user_name" value="${sessionScope.user.user_name}"/>
								<div class="form-group">
									<input type="password" class="form-control" name="user_password" placeholder="Enter your original user_password">
								</div>
								<div class="form-group">
									<input class="btn btn-black" type="button" id="sub2" value="CONFIRMATION"/>
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
							<form name="main" id="form1"   method="post">
								<div class="form-group">
									<input type="text" class="form-control" id="user_name" 
									name="user_name" placeholder="Enter your user_name"/><span id="isresult"></span>
									
								</div>
								<div class="form-group">
									<input type="password" class="form-control" id="user_password"
									 name="user_password" placeholder="Enter your user_password"><span id="isresult1"></span>
									
								</div>
								<div class="form-group">
									<input type="password" class="form-control" id="user_password1" name="user_password1"
									 placeholder="Enter your user_password again"><span id="isresult2"></span>
									
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="user_email"
									 placeholder="Enter your user_email"><span id="isresult3"></span>
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="user_telephone" placeholder="Enter your user_telephone">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="user_address" placeholder="Enter your user_address">
								</div>
				
								<div class="form-group">
									<input class="btn btn-black" type="button" id="sub" value="SIGN UP"/>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>





<div class="modal fade modal-popup" id="modal4" data-open-onload="true" data-open-delay="1500" tabindex="-1" role="dialog" >
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
							<form name="main" id="form2" name="user_name" id="user_name" method="post">
								<input type="hidden" name="user_id" value="${sessionScope.user.user_id}"/>
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
									readonly placeholder="Enter your user_posttime" value="${sessionScope.user.user_posttime}">
								</div>
								<div class="form-group">
									<input class="btn btn-black" type="button" id="sub1" value="UPTATE"/>
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
//登录
function qwe(){
	 $('#modal1').modal('show');
}
//注册
function wer(){
	 $('#modal2').modal('show');
}
//验证密码--显示
function ert(){
	 $('#modal3').modal('show');
}
//验证密码--隐藏
function erth(){
	 $('#modal3').modal('hide');
}
//修改
function rty(){
	 $('#modal4').modal('show');
}
function rtyh(){
	 $('#modal4').modal('hide');
}
function cart(){
	var id = "<%=session.getAttribute("user")%>";
	if(id == 'null'){
		alert('还未登录');	
	}else{
		$(location).prop('href', '/BookSSH/shopping-cart.jsp');
	}
}
function pay(){
	var id = "<%=session.getAttribute("user")%>";
	if(id == 'null'){
		alert('还未登录');	
	}else{
		var id = "<%=session.getAttribute("order_id")%>";
		if(id == 'null'){
			alert('还未创建订单');	
		}else{
			$(location).prop('href', '/BookSSH/pay.jsp');
		}	
	}
}

</script>

</html>
