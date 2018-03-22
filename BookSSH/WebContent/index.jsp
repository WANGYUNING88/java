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
				 var s=$('#11').val();
			 var e =$('#22').val();
				$.ajax({
					url:"${pageContext.request.contextPath}/confirmation.do",
					data:{"user_password":s,"user_name":e},
					type:"post",
					dataType:"json",
					success:function(data){//ajax返回的数据
						var result = data.result;
						if(result=='1'){
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
							<a class="btn dropdown-toggle btn-select" data-toggle="dropdown" href="#">查询商品 <span class="caret"></span></a>
						</div>
						<div class="search">
							<input type="text" placeholder="Where prodect" />
						</div>
						<div class="btn-group">
							<button type="button" id="btnSelect" class="btn btn-primary"><i class="fa fa-search" aria-hidden="true"></i></button>
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
	
	</section>
	<!-- header-outer -->
	<section class="header-outer">
		<!-- header-slider -->
			<!-- /header-slider end -->			
	</section>
	<!-- /header-outer -->
</header>



<!-- deal-outer -->
<section class="deal-section">

	<div class="well carousel-search hidden-phone">
	<!-- 热门图书 -->
	<div class="container">
		<div class="row">
			<h2>热门图书</h2>
				<div class="col-sm-8">
					<c:forEach items="${hotbooklist}" var="book">
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
														<a href="selectBookById.do?book_id=${book.book_id}">
															<h4> ${book.book_name} </h4>
														</a>
														<p class="wk-price">${book.book_price}</p>
														<a href="selectBookById.do?book_id=${book.book_id}" class="add-btn">Add to cart</a>
													</div>
													</div>
					</div>
					</c:forEach>
				</div>
			</div>
		</div>
	
		<!-- 最新图书 -->
			<div class="container">
		<div class="row">
			<h2>最新图书</h2>
				<div class="col-sm-8">
					<c:forEach items="${newbooklist}" var="book">
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
														<a href="selectBookById.do?book_id=${book.book_id}">
															<h4> ${book.book_name} </h4>
														</a>
														<p class="wk-price">${book.book_price}</p>
														<a href="selectBookById.do?book_id=${book.book_id}" class="add-btn">Add to cart</a>
													</div>
													</div>
					</div>
					</c:forEach>
				</div>
			</div>
		</div>
		
	
						<div class="btn-group">
							<a class="btn dropdown-toggle btn-select" data-toggle="dropdown" href="#">
							
							<c:choose><c:when  test="${type_name==null}">全部</c:when><c:when test="${type_name!=null}">${type_name}</c:when></c:choose><span class="caret"></span> </a>
							<ul class="dropdown-menu">
							<li><a href="selectAllBook.do?id=2">全部</a></li>
							<c:forEach items="${typelist}" var="type">
								<li><a href="selectBookByType.do?type_id=${type.type_id}&type_name=${type.type_name}">${type.type_name}</a></li>
							</c:forEach>
								
								
							</ul>
						
						
						</div>
							
					</div>
		</div>
	

	<div class="container">
		<div class="row">
			
				<div class="col-sm-8">
					<c:forEach items="${booklist}" var="book">
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
														<a href="selectBookById.do?book_id=${book.book_id}">
															<h4> ${book.book_name} </h4>
														</a>
														<p class="wk-price">${book.book_price}</p>
														<a href="selectBookById.do?book_id=${book.book_id}" class="add-btn">Add to cart</a>
													</div>
													</div>
					</div>
					</c:forEach>
				</div>
			</div>
		</div>
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
								
								<div class="form-group">
								<input type="hidden" name="user_name"  id="22" value="${sessionScope.user.user_name}"/>
									<input type="password" class="form-control" id="11" name="user_password" placeholder="Enter your original user_password">
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
									user_name:<input type="text" class="form-control" name="user_name"
									 placeholder="Enter your user_name" VALUE="${sessionScope.user.user_name}">
								</div>
								<div class="form-group">
								user_password:	<input type="password" class="form-control" name="user_password"
									 placeholder="Enter your user_password" value="${sessionScope.user.user_password}">
								</div>
								<div class="form-group">
								user_email:	<input type="text" class="form-control" name="user_email" 
									placeholder="Enter your user_email" value="${sessionScope.user.user_email}">
								</div>
								<div class="form-group">
									user_telephone:<input type="text" class="form-control" name="user_telephone"
									 placeholder="Enter your user_telephone" value="${sessionScope.user.user_telephone}">
								</div>
								<div class="form-group">
								user_address:	<input type="text" class="form-control" name="user_address" 
									placeholder="Enter your user_address" value="${sessionScope.user.user_address}">
								</div>
								<div class="form-group">
								user_posttime:	<input type="text" class="form-control" name="user_posttime" 
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
		var id = "<%=session.getAttribute("sum")%>";
		if(id == 'null'){
			alert('还未创建订单');	
		}else{
			$(location).prop('href', '/BookSSH/pay.jsp');
		}	
	}
}

</script>

</html>
