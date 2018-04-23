<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Kiss OLive 订单详情</title>

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
<link rel="stylesheet" href="<c:url value='/css/user/orderlist.css'/>">
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
		<div class="line">
			<span class="header">订单详情</span>
		</div>
		<div class="leadertab row">
			<ul id="myTab" class="nav nav-tabs" role="tablist">
				<li id="step1Li" class="active black"><a href="#step1"
					data-toggle="tab" role="tab">未付款</a></li>
				<li id="step2Li" class="gray"><a href="#step2"
					data-toggle="tab" role="tab">等待发货</a></li>
				<li id="step3Li" class="gray"><a href="#step3"
					data-toggle="tab" role="tab">等待确认</a></li>
				<li id="step4Li" class="gray"><a href="#step4"
					data-toggle="tab" role="tab">已完成</a></li>
				<li id="step5Li" class="gray"><a href="#step5"
					data-toggle="tab" role="tab">已取消</a></li>
			</ul>

			<div id="myTabContent" class="tab-content">
				<!-- 订单页面 -->
				<!-- 未付款 -->
				<div id="step1" class="tab-pane fade active in">
					<div class="top">
						<span>产品</span><span>数量</span><span>价格</span>
					</div>
<c:forEach items="${order1ListItemList }" var="orderListItem">
					<div class="orderlist">
						<form action="/KissOlive/MainServlet" method="post" id="${orderListItem.oid }">
						<input type="hidden" name="method" id="${orderListItem.oid }" value="">
						<input type="hidden" name="oid" value="${orderListItem.oid }">
							<table class="table table-striped">
							    <thead>
							      <tr>
									<th style="width: 100px;"></th>
									<th style="width: 423;">订单编号：${orderListItem.oid }</th>
									<th colspan="2"></th>
								 </tr>
							    </thead>
								<tbody>
				<c:forEach items="${orderListItem.viewOrderItemList }" var="viewOrderItem">
									<tr>
										<td></td>
										<td>${viewOrderItem.lname }${viewOrderItem.cncode }</td>
										<td style="text-align: center;width: 220;">${viewOrderItem.number }</td>
										<td style="text-align: center;">${viewOrderItem.totalprice }</td>
									</tr>
				</c:forEach>
									<tr>
										<td colspan="3" ></td>
									    <td style=" text-align: center;">总价：${orderListItem.totalprice }</td>
									</tr>
								</tbody>
							</table>
							<div class="table-btn">
								<button type="button" class="btn defalut cancel" onclick="foward()">查看详情</button>
								<button type="button" class="btn defalut cancel" onclick="cancel('${orderListItem.oid }')">取消</button>
								<button type="button" class="btn defalut payfor" onclick="payfor('${orderListItem.oid }')">付款</button>
							</div>
						</form>
					</div>
</c:forEach>
				</div>
				<!-- 等待发货 -->
				<div id="step2" class="tab-pane fade">
					<div class="top">
						<span>产品</span><span>数量</span><span>价格</span>
					</div>
<c:forEach items="${order2ListItemList }" var="orderListItem">
					<div class="orderlist">
							<table class="table table-striped">
							    <thead>
							      <tr>
									<th style="width: 100px;"></th>
									<th style="width: 423;">订单编号：${orderListItem.oid }</th>
									<th colspan="2"></th>
								 </tr>
							    </thead>
								<tbody>
				<c:forEach items="${orderListItem.viewOrderItemList }" var="viewOrderItem">
									<tr>
										<td></td>
										<td>${viewOrderItem.lname }${viewOrderItem.cncode }</td>
										<td style="text-align: center;width: 220;">${viewOrderItem.number }</td>
										<td style="text-align: center;">${viewOrderItem.totalprice }</td>
									</tr>
				</c:forEach>
									<tr>
										<td colspan="3" ></td>
									    <td style=" text-align: center;">总价：${orderListItem.totalprice }</td>
									</tr>
								</tbody>
							</table>
							<div class="table-btn sure">
								<button type="button" class="btn defalut cancel" onclick="forward()">查看详情</button>
							</div>
					</div>
</c:forEach>
				</div>
				
				
				<!-- 等待确认 -->
				<div id="step3" class="tab-pane fade">
					<div class="top">
						<span>产品</span><span>数量</span><span>价格</span>
					</div>
<c:forEach items="${order3ListItemList }" var="orderListItem">
					<div class="orderlist">
						<form action="/KissOlive/MainServlet" method="post" id="${orderListItem.oid }">
						<input type="hidden" name="method" id="${orderListItem.oid }" value="">
						<input type="hidden" name="oid" value="${orderListItem.oid }">
							<table class="table table-striped">
							    <thead>
							      <tr>
									<th style="width: 100px;"></th>
									<th style="width: 423;">订单编号：${orderListItem.oid }</th>
									<th colspan="2"></th> </tr>
							    </thead>
								<tbody>
				<c:forEach items="${orderListItem.viewOrderItemList }" var="viewOrderItem">
									<tr>
										<td></td>
										<td>${viewOrderItem.lname }${viewOrderItem.cncode }</td>
										<td style="text-align: center;width: 220;">${viewOrderItem.number }</td>
										<td style="text-align: center;">${viewOrderItem.totalprice }</td>
									</tr>
				</c:forEach>
									<tr>
											<td colspan="3" ></td>
									    <td style=" text-align: center;">总价：${orderListItem.totalprice }</td>
									</tr>
								</tbody>
							</table>
							<div class="table-btn two">
								<button type="button" class="btn defalut cancel" onclick="forward()">查看详情</button>
								<button type="button" class="btn defalut received" onclick="received('${orderListItem.oid }')">确认收货</button>
							</div>
						</form>
					</div>
</c:forEach>
				</div> 
				
				
				<!-- 已完成 -->
				<div id="step4" class="tab-pane fade">
					<div class="top">
						<span>产品</span><span>数量</span><span>价格</span>
					</div>
<c:forEach items="${order4ListItemList }" var="orderListItem">
					<div class="orderlist">
							<table class="table table-striped">
							    <thead>
							      <tr>
									<th style="width: 100px;"></th>
									<th style="width: 423;">订单编号：${orderListItem.oid }</th>
									<th colspan="2"></th>
								 </tr>
							    </thead>
								<tbody>
				<c:forEach items="${orderListItem.viewOrderItemList }" var="viewOrderItem">
									<tr>
										<td></td>
										<td>${viewOrderItem.lname }${viewOrderItem.cncode }</td>
										<td style="text-align: center;width: 220;">${viewOrderItem.number }</td>
										<td style="text-align: center;">${viewOrderItem.totalprice }</td>
									</tr>
				</c:forEach>
									<tr>
										<td colspan="3" ></td>
									    <td style=" text-align: center;">总价：${orderListItem.totalprice }</td>
									</tr>
								</tbody>
							</table>
							<div class="table-btn sure">
								<button type="button" class="btn defalut cancel" onclick="forward()">查看详情</button>
							</div>
					</div>
</c:forEach>
				</div>
				
				
				<!-- 已取消 -->
				<div id="step5" class="tab-pane fade">
					<div class="top">
						<span>产品</span><span>数量</span><span>价格</span>
					</div>
<c:forEach items="${order0ListItemList }" var="orderListItem">
					<div class="orderlist">
							<table class="table table-striped">
							    <thead>
							      <tr>
									<th style="width: 100px;"></th>
									<th style="width: 423;">订单编号：${orderListItem.oid }</th>
									<th colspan="2"></th>
								 </tr>
							    </thead>
								<tbody>
				<c:forEach items="${orderListItem.viewOrderItemList }" var="viewOrderItem">
									<tr>
										<td></td>
										<td>${viewOrderItem.lname }${viewOrderItem.cncode }</td>
										<td style="text-align: center;width: 220;">${viewOrderItem.number }</td>
										<td style="text-align: center;">${viewOrderItem.totalprice }</td>
									</tr>
				</c:forEach>
									<tr>
										<td colspan="3" ></td>
									    <td style=" text-align: center;">总价：${orderListItem.totalprice }</td>
									</tr>
								</tbody>
							</table>
							<div class="table-btn sure">
								<button type="button" class="btn defalut cancel" onclick="forward()">查看详情</button>
							</div>
					</div>
</c:forEach>
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
    <script type="text/javascript">
       //取消
       function cancel(id){
    	    $("input[id='"+id+"']").val("cancelOrder");
            $("form[id='"+id+"']").submit();
       }
       //付款
       function payfor(id){
    	   $("input[id='"+id+"']").val("payforOrder");
           $("form[id='"+id+"']").submit();
       }
       //收货
       function recieve(id){
    	   $("input[id='"+id+"']").val("recievelOrder");
           $("form[id='"+id+"']").submit();
       }
       //跳转
 		function forward(){
    	   window.location.herf="index.jsp";
       }
    
    </script>

</body>
</html>
