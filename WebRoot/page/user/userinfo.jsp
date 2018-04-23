<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Kiss OLive 个人资料</title>

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
<link rel="stylesheet" href="<c:url value='/css/user/userinfo.css'/>">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<!-- start of 头部 -->
	<div class="header-main-bar">
		<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container header">
			<c:choose>
				<c:when test="${empty sessionScope.sessionUser }">
					<div class="navbar-header">
						<ul class="nav navbar-nav navbar-left ">
							<li><a href="<c:url value='/page/user/user_login.jsp'/>"
								class="navbar-brand">登录</a></li>
							<li><a href="<c:url value='/page/user/user_register.jsp'/>"
								class="navbar-brand">注册</a></li>

							<!-- 响应式布局按钮-下拉框 -->
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target="#navbar-collapse">
								<span class="icon-bar"></span> <span class="icon-bar"></span>
							</button>
						</ul>
					</div>
					<div class="collapse navbar-collapse" id="navbar-collapse">
						<ul class="nav navbar-nav navbar-right" style="margin: 0">
							<li></li>
							<li></li>
						</ul>
					</div>
				</c:when>
				<c:otherwise>
					<div class="navbar-header">
						<ul class="nav navbar-nav navbar-left ">
							<li><a
								href="<c:url value='/servlet/UserServlet?method=userInfo'/>"
								class="navbar-brand">${sessionScope.sessionUser.username }</a></li>
							<li><a
								href="<c:url value='/servlet/UserServlet?method=quit'/>"
								class="navbar-brand">[退出]</a></li>
							<!-- 响应式布局按钮-下拉框 -->
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target="#navbar-collapse">
								<span class="icon-bar"></span> <span class="icon-bar"></span>
							</button>
						</ul>
					</div>
					<div class="collapse navbar-collapse" id="navbar-collapse">
						<ul class="nav navbar-nav navbar-right" style="margin: 0">
							<li><a href="<c:url value='/MainServlet?method=userCart'/>"><span
									class="glyphicon glyphicon-shopping-cart">&nbsp;<span>我的购物车</span></span></a></li>
							<li><a href="<c:url value='/MainServlet?method=userOrder'/>"><span class="glyphicon glyphicon-list">&nbsp;<span>我的订单</span></span></a></li>
						</ul>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
		</nav>
		<div class="main-bar-content">
			<div class="header-logo row">
				<div class="col-md-4 col-lg-4"></div>
				<div class="col-md-4 col-lg-4">
					<a href="index.jsp"><img
						src="<c:url value='/img/kissolive.png'/>" class="icon-olive" /></a>
				</div>
				<div class="col-md-4 col-lg-4">
					<form action="/KissOlive/MainServlet" method="post">
						<input type="hidden" name="method" value="search" />
						<div class="nav-search">
							<div class="input-group">
								<input type="text" class="form-control" name="search"
									placeholder="Search for..."> <span
									class="input-group-btn">
									<button class="btn btn-default glyphicon glyphicon-search"
										type="submit"></button>
								</span>
							</div>
							<!-- /input-group -->
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- end of main-bar-content -->
	</div>
	<!-- start of 头部 -->
	<!-- start of 内容 -->
	<div class="container content">
	<div class="line"><span class="header">个人资料</span></div>
	<div class="part1">
		<div class="pp">
		    <div class="qq">
		    <p>用户名：${username }</p>
			<button class="btn btn-link update" type="button">修改</button>
		    </div>
			
			<!-- 修改用户名  -->
			<div class="editname" style="display:none">
			<form  class="edit1" action="/KissOlive/servlet/UserServlet" method="post">
			<input type="hidden" name="method" value="updateUsername">
			    用户名：<input class="edit-name form-control" id="username" name="username"/>
			    <button class="btn save" type="submit">保存</button>
			</form>
			</div>
			<!-- 修改用户名  -->
			
		</div>
		<div class="pp">
			<p>绑定手机号：${usertel }</p>
		</div>
	</div>
	<div class="part2">
		<p id="pick">收货地址</p>
<c:forEach items="${addressList }" var="address">
					<div  class="addr">
					<ul>
					   <li>收件人：${address.name }</li>
					   <li>联系方式：${address.tel }</li>
					   <li>收货地址：${address.province }${address.city }${address.district }${address.detail }</li>
					    </ul>
					</div>
</c:forEach>
					<div class="btn_add_addr"><button class="add_addr" type="button">新增地址</button><div class="clearfix"></div></div>
					
					
					<!-- 新增地址div -->
					<div class="div_add_addr" style="display:none">
					 <form action="/KissOlive/servlet/UserServlet">
					 <input type="hidden" name="method" value="addAddress">
					   <ul class="addr add">
					   <li>收件人：
					   <input type="text" id="name" name="name" class="form-control inputClass "placeholder="请输入收件人姓名"/>
					   <label class="errorClass" id="nameError" ></label>
				       <label class="correctClass" id="nameCorrect"></label>
					   </li>
					   <li>联系方式：
					   <input type="text" id="tel" name="tel" class="form-control inputClass "placeholder="请输入联系方式"/>
					   <label class="errorClass" id="telError" ></label>
				       <label class="correctClass" id="telCorrect"></label>
					   </li>
					   <li>收货地址： <div  id="city">
							        <select class="prov" id="province" name="province"></select> 		
									<select class="city" id="city" name="city" disabled="disabled"></select>
									<select class="dist" id="district" name="district" disabled="disabled"></select>			
				                    </div>
				       </li>
				       <li>详细地址： 
				       <input type="text" class="inputClass form-control "  id="detail" name="detail" placeholder="请输入详细地址" />
				       <label class="errorClass" id="detailError" ></label>
				       <label class="correctClass" id="detailCorrect"></label>
				       </li>
					   </ul>
					   <div class="btn_save_addr"><button type="submit" class="save_addr">保存地址</button><div class="clearfix"></div></div>
					 </form>
					</div>
					<!-- 新增地址div -->
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
					<c:forEach items="${brandList }" var="brand">
						<li class="branditem"><a
							href="<c:url value='/MainServlet?method=searchByBrand&bid=${brand.bid }&bname=${brand.bname }'/>">${brand.bname }</a></li>
					</c:forEach>
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
	<script type="text/javascript" src="<c:url value='/js/valid.js'/>"></script>
	
	<script type="text/javascript">
	  $(function(){
			
			$("#city").citySelect({
				prov:"广东",
				city:"肇庆",
				dist:"端州区",
				nodata:"none"
			});
			 
	  });
	
   
	  
		$(".add_addr").click(function(){
		    $(".div_add_addr").slideToggle();
		  });
		
		$(".update").click(function(){
		    $(".editname").slideToggle();
		    $(".qq").slideToggle();
		  });
		$("button[class='edit']").click(function (){
			  $('#addrModal').modal('show');
			 
		});
		$("button[class='sure']").click(function (){
			  $('#addrModal').modal('hide');
			 
		});
	</script>

</body>
</html>
