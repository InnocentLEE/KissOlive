<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Kiss OLive 品牌系列</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
<link rel="stylesheet" href="<c:url value='/css/user/user_brand.css'/>">

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
	    <div class="lmenu">
	       <div class="lmenu-top">
	         <span class="brand-name">Dior迪奥</span>
	       </div>
	       <div class="lmenu-content">
	          <div class="sum-series"><h5>系列</h5></div>
	          <div class="series">
	            <ul class="sum">
	            <li class="series-item"><a herf="#">Dior迪奥金焰幻彩唇膏-2017圣诞节限量版&nbsp;(5)</a></li>
	            <li class="series-item"><a herf="#">Dior迪奥魅惑润唇膏&nbsp;(2)</a></li>
	            <li class="series-item"><a herf="#">Dior迪奥烈焰蓝金唇膏&nbsp;(2)</a></li>
	            <li class="series-item"><a herf="#">Dior迪奥魅惑唇蜜&nbsp;(1)</a></li>
	            <li class="series-item"><a herf="#">Dior迪奥999传奇挚爱礼盒&nbsp;(1)</a></li>
	            <li class="series-item"><a herf="#">Dior迪奥烈焰蓝金臻彩唇釉-2017春季限量版&nbsp;(1)</a></li>
	            </ul>
	          </div>
	       </div>
	    </div>
	    <div class="rcontent">
	        <div class="rcontent-top">
	           <div class="top">
	         		  <span class="product">产品&nbsp;(6)</span>  
	           </div>
	        </div>
	        <div class="rcontent-list">
	           <div class="card">
	           	  <figure> 
		           	 <a href="#">
		           	      <img alt="" class="card-good" src="<c:url value='/img/user/user_brand/goods1.jpg'/>">
					</a>
				    <figcaption class="goods_text"> 
				     <a href="#">
				      <span class="mh4">Dior迪奥魅惑润唇密</span>
				      <p></p>
				      <span class="mh5">着色彩染，持久轻盈裸唇感</span>
				       <p></p>
				      <span class="price">￥&nbsp;300.00</span>
				       <p></p>
				      <button type="button" class="book">订&nbsp;购</button>
				     </a> 
				    </figcaption> 
				  </figure>
				 </div>
	           <div class="card">
	           		<figure> 
		           	 <a href="#">
		           	      <img alt="" class="card-good" src="<c:url value='/img/user/user_brand/goods1.jpg'/>">
					</a>
				    <figcaption class="goods_text"> 
				     <a href="#">
				      <span class="mh4">Dior迪奥魅惑润唇密</span>
				      <p></p>
				      <span class="mh5">着色彩染，持久轻盈裸唇感</span>
				       <p></p>
				      <span class="price">￥&nbsp;300.00</span>
				       <p></p>
				      <button type="button" class="book">订&nbsp;购</button>
				     </a> 
				    </figcaption> 
				  </figure>
	           </div>
	           <div class="card">
	           		<figure> 
		           	 <a href="#">
		           	      <img alt="" class="card-good" src="<c:url value='/img/user/user_brand/goods1.jpg'/>">
					</a>
				    <figcaption class="goods_text"> 
				     <a href="#">
				      <span class="mh4">Dior迪奥魅惑润唇密</span>
				      <p></p>
				      <span class="mh5">着色彩染，持久轻盈裸唇感</span>
				       <p></p>
				      <span class="price">￥&nbsp;300.00</span>
				       <p></p>
				      <button type="button" class="book">订&nbsp;购</button>
				     </a> 
				    </figcaption> 
				  </figure>
	           </div>
	           <div class="card">
	           		<figure> 
		           	 <a href="#">
		           	      <img alt="" class="card-good" src="<c:url value='/img/user/user_brand/goods1.jpg'/>">
					</a>
				    <figcaption class="goods_text"> 
				     <a href="#">
				      <span class="mh4">Dior迪奥魅惑润唇密</span>
				      <p></p>
				      <span class="mh5">着色彩染，持久轻盈裸唇感</span>
				       <p></p>
				      <span class="price">￥&nbsp;300.00</span>
				       <p></p>
				      <button type="button" class="book">订&nbsp;购</button>
				     </a> 
				    </figcaption> 
				  </figure>
	           </div>
	        </div>
	    </div>
	</div>
	<!-- end of 内容 -->
	
	<!-- start of 尾部  -->
	<footer class="contaniner content">
	<div class="footer-top">
		<div class="row">
			<div class="col-md-3">
				<!-- <span><h6 class="logoname">KISS OLIVE</h6><p>&nbsp;口&nbsp;红&nbsp;热&nbsp;门&nbsp;商&nbsp;城&nbsp;</p></span>
			           -->
				<span class="logoname"><img
					src="<c:url value='/img/user_home/logo_black.png'/>"></span>
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
