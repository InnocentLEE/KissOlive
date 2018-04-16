<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Kiss OLive 商品详情</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/css/user/home.css'/>">
<link rel="stylesheet" href="<c:url value='/css/user/user_lips.css'/>">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>
  
  <body>
    <!-- start of 头部 -->
	<div class="header-main-bar">
		<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container header">
			<div class="navbar-header">
				<ul class="nav navbar-nav navbar-left ">
					<li><a href="<c:url value='/page/user/user_login.jsp'/>"
						class="navbar-brand">登陆</a></li>
					<li><a href="<c:url value='/page/user/user_register.jsp'/>"
						class="navbar-brand">注册</a></li>

					<!-- 响应式布局按钮-下拉框 -->
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#navbar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
				</ul>
			</div>
			<div class="collapse navbar-collapse" id="navbar-collapse">
				<ul class="nav navbar-nav navbar-right" style="margin: 0">
					<li><a href="#"><span
							class="glyphicon glyphicon-shopping-cart">&nbsp;</span>我的购物车</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-list">&nbsp;</span>我的订单</a></li>
				</ul>
			</div>
		</div>
		</nav>
		<div class="main-bar-content">
			<div class="header-logo row">
				<div class="col-md-4 col-lg-4"></div>
				<div class="col-md-4 col-lg-4">
					<a href="#"><img src="<c:url value='/img/kissolive.png'/>"
						class="icon-olive" /></a>
				</div>
				<div class="col-md-4 col-lg-4">
					<div class="nav-search">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Search for..."> <span
								class="input-group-btn">
								<button class="btn btn-default glyphicon glyphicon-search"
									type="button"></button>
							</span>
						</div>
						<!-- /input-group -->
					</div>
				</div>
			</div>
		</div>
		<!-- end of main-bar-content -->
	</div>
	 <!-- start of 头部 -->
	 <!-- start of 内容 -->
	<div class="container content">
		   <div class="product-pic">
		     <img class="pic" src="<c:url value='/img/user/user_prointro/intro2.jpg'/>" alt="">
		   </div>
		   <div class="product-intro">
		     <h1 class="product-name">DIOR迪奥魅惑染唇蜜</h1>
		     <h2 class="product-disc">着色彩染，持久轻盈裸唇感</h2>
		     <h3 class="product-price">￥&nbsp;290.00&nbsp;/3.5g</h3>
		     <div class="product-color row">
		        <div class="col-md-4">
		        	 <label class="pro-label">颜色分类&nbsp;</label>
		        </div>
		        <div class="col-md-8">
		        	 <!-- <i class="fas fa-circle"></i> -->
		             <input type="color"/>
		        </div>
		     </div>
		     <div class="product-num row">
		        <div class="col-md-4">
		        	 <label class="pro-label">数量&nbsp;</label>
		        </div>
		        <div class="col-md-8 input-group"">
		             <input type="number" class="formgroup" value=""/>
		        </div>
		     </div>
		     <button type="button" class="btn btn-default">>立即购买</button>
		 </div>
		<%--  <div class="product-pram mid">
		 	<div class="line"><span class="header">商品详情</span></div>
		 	<table class="pram">
		 	    <tr><td></td></tr>
		 	</table>
		 </div>
		 <div class="product-pic bottom">
		 	 <img src="<c:url value='/img/user/user_prointro/intro1.jpeg'/>">
		 </div> --%>
	</div>
	<!-- end of 内容 -->
	
	<!-- start of 尾部  -->
	<footer class="contaniner content">
	<div class="footer-top">
		<div class="row">
			<div class="col-md-3">
		 	     <span class="logoname">
		 	     <img src="<c:url value='/img/user_home/logo_black.png'/>"></span>
			</div>
			<div class="col-md-9">
				<ul style="display:flex">
					<li class="branditem" id="branditem"><a href="#">迪奥</a></li>
					<li class="branditem"><a href="#">美宝莲纽约</a></li>
					<li class="branditem"><a href="#">香奈儿</a></li>
					<li class="branditem"><a href="#">雅诗兰黛</a></li>
					<li class="branditem"><a href="#">M.A.C</a></li>
					<li class="branditem"><a href="#">植村秀</a></li>
					<li class="branditem"><a href="#">妙巴黎</a></li>
					<li class="branditem"><a href="#">迪奥</a></li>
					<li class="branditem"><a href="#">美宝莲纽约</a></li>
					<li class="branditem"><a href="#">香奈儿</a></li>
					<li class="branditem"><a href="#">雅诗兰黛</a></li>
					<li class="branditem"><a href="#">M.A.C</a></li>
					<li class="branditem"><a href="#">植村秀</a></li>
					<li class="branditem"><a href="#">妙巴黎</a></li>

				</ul>
			</div>
		</div>
	</div>
	<div class="footer-bottom">
		<div class="footer-bottom-border">
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-3">
					<span class="title-footer-section">客户服务</span>
					<div class="nav-footer">
						<span class="title-footer-section"><a href="#">联系我们</a></span>
						<span class="title-footer-section wechat"><img class="wechat-img" src="<c:url value='/img/user_home/wechat.jpg'/>"></span>
					</div>
				</div>
				<div class="col-md-3">
					<span class="title-footer-section">&nbsp;</span>
					<div class="nav-footer">
						<ul class="ul_top">
							<li class="item"><a href="#">精品店</a></li>
							<li class="item"><a href="#">工作机会</a></li>
							<li class="item"><a href="#">使用条款</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4">
					<span class="title-footer-section1">电子通讯</span>
					<div class="nav-footer">
						<span class="title-footer-section font">率先获取最新商品的信息及KISS OLIVE的独家优惠：</a></span>
							<div class="input-group title-footer-section">
								<input type="text" class="form-control"
									placeholder="Recipient's username"
									aria-describedby="basic-addon2"> <span
									class="input-group-addon" id="basic-addon2">@example.com</span>
							</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	</footer>
	<!-- end of 尾部 -->
	
	<script type="text/javascript" src="<c:url value='/js/jquery.js'/>"></script>
	<script src="<c:url value='/js/bootstrap.min.js'/>"></script>
	
	 
  </body>
</html>
