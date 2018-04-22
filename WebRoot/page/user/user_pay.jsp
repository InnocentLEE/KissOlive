<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Kiss OLive 支付及物流</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/css/admin/fontawesome-all.css'/>">
<link rel="stylesheet" href="<c:url value='/css/user/home.css'/>">
<link rel="stylesheet" href="<c:url value='/css/user/user_cart.css'/>">
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
		<div class="leadertab row">
			<ul id="myTab" class="nav nav-tabs" role="tablist">
				<li id="step1Li" class="gray">
					 1<br>我的购物袋
				</li>
				<li id="step2Li" class="active black"> 2<br>支付及物流
				</li>
				<li id="step3Li" class="gray">3<br>成功提交订单
				</li>
			</ul>

			<div id="myTabContent" class="tab-content">
				<!-- 订单提交页面 -->
				<form id="myForm" action="#">
				<div id="step2" class="tab-pane fade active in">
				    <div class="titleborder">
					<label class="labelhead">支付及物流</label>
					</div>
					<ul class="addr">
					   <li><input type="radio" name="selectaddr" id="add1" checked></li>
					   <li>收件人：那隻貓</li>
					   <li>联系方式：17876253479</li>
					   <li>收货地址：广东省肇庆市端州区肇庆学院</li>
					</ul>
					<ul class="addr">
					   <li><input type="radio" name="selectaddr" id="add2"></li>
					   <li>收件人：那隻貓</li>
					   <li>联系方式：17876253479</li>
					   <li>收货地址：广东省肇庆市端州区肇庆学院</li>
					</ul>
			
					<table class="table">
						<thead>
							<tr>
								<th>&nbsp;</th>
								<th>产品</th>
								<th>&nbsp;&nbsp;&nbsp;&nbsp;单价</th>
								<th>数量</th>
								<th>价格</th>
							</tr>
						</thead>
						<tbody>
							<tr class="order_lists"> <!-- 每一个orderlist就是一个购物车商品 -->
								<th>
									<div class="list_img">
										<a href="#"><img
											src="<c:url value='/img/user_home/6.jpg'/>" alt=""></a>
									</div></th>
								<td>
								    <p class="goodname"><a href="#">DIOR迪奥魅惑染唇蜜</a></p>
								    <p class="goodcolor">豆沙色&nbsp;#545451</p>
									</td>
								<td><p class="price">￥980</p></td>
								<td>
									<div class="amount_box">
										<button class="reduce reSty btn" disabled>-</button>
										<input type="text" value="1" class="sum" id="gnumber" disabled>
										<button class="plus btn" disabled>+</button>
									</div>
								</td>
								<td><p class="order-sum_price">￥980</p></td>
							</tr>
							<tr class="order_lists" id="cid">
								<th>
									<div class="list_img">
										<a href="#"><img
											src="<c:url value='/img/user_home/6.jpg'/>" alt=""></a>
									</div></th>
								<td><p class="goodname"><a href="#">DIOR迪奥魅惑染唇蜜</a></p>
								    <p class="goodcolor">豆沙色&nbsp;#545451</p>
									</td>
								<td><p class="price">￥780</p></td>
								<td>
									<div class="amount_box">
										<button class="reduce reSty btn" disabled>-</button>
										<input type="text" value="1" class="sum" disabled>
										<button class="plus btn" disabled>+</button>
									</div>
								</td>
								<td><p class="order-sum_price">￥780</p></td>
							</tr>
							<tr>
							   <th rowspan="2" colspan="3" style="vertical-align: middle;padding: 0 0 0 50;font-size: 20px;font-weight: normal; ">订单总结</th>
							   <td>商品价格</td>
							   <td><strong class="order-total_text">0.00</strong></td>
							</tr>
							<tr>
							   <td>运费</td>
							   <td>免邮</td>
							</tr>
							<tr class="bordertop">
								<th colspan="3" ></th>
								<td>
								已选商品
								</td>
								<td>
									<div class="piece">
										<strong class="order-piece_num">0</strong>件
									</div>
								</td>
							</tr>
							<tr>
								<th colspan="3"></th>
								<td>
								共计
								</td>
								<td >
									<div class="totalMoney">
										<strong class="order-total_text">0.00</strong>
									</div>
								</td>
							</tr>
							<tr>
								<th colspan="3"></th>
								<td colspan="2">
								   <button style="color: #fff;" class="buyBtn"  id="surecid" onclick="judge();">确定支付</button>
							    </td>
							  <tr>
					</table>
				</div>
			  <!-- 订单提交页面 -->
			</form>
			</div>
		</div>
	</div>
	<!-- end of 内容 -->

	<!-- start of 尾部  -->
	<footer class="contaniner content">
	<div class="footer-top">
		<div class="row">
			<div class="col-md-3">
				<span class="logoname"> <img
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
						<span class="title-footer-section"><a href="#">联系我们</a></span> <span
							class="title-footer-section wechat"><img
							class="wechat-img"
							src="<c:url value='/img/user_home/wechat.jpg'/>"></span>
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
						<span class="title-footer-section font">率先获取最新商品的信息及KISS
							OLIVE的独家优惠：</a>
						</span>
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
	<script type="text/javascript" src="<c:url value='/js/jquery.cityselect.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/js/shoppingcart.js'/>"></script>


   <script type="text/javascript">
    
       function judge(){
    	   var i=0;
    	   $("input[name='selectaddr']").each(function(){
    		  if($(this).is(':checked')) 
    			{
    			  i=1;
    			  document.getElementById("myForm").submit()
    			}
    	   });
    	   if(i==0)
    	   alert("请选择收货地址！！！");
       }
       
    </script>
</body>
</html>
