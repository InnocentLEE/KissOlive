<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Kiss Olive 口红管理</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/css/admin/main.css'/>">
<link rel="stylesheet" href="<c:url value='/css/user/orderlist.css'/>">		

<style>
	.top {grid-template-columns: 435px 390 226;}

</style>
<script type="text/javascript">

</script>

</head>
<body>
<div class="page-wrapper">
		<!-- start:添加口红 -->
		<div class="row">
			<div class="col-lg-10">
				<h1 class="page-header">订单管理</h1>
			</div>
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
									<th style="width: 423; text-align:left">订单编号：${orderListItem.oid }</th>
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
							<div class="table-btn two">
								<button type="button" class="btn defalut cancel" onclick="foward('${orderListItem.oid }')">查看详情</button>
								<button type="button" class="btn defalut cancel" onclick="cancel('${orderListItem.oid }')">取消</button>
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
					<form action="/KissOlive/MainServlet" method="post" id="${orderListItem.oid }">
						<input type="hidden" name="method" id="${orderListItem.oid }" value="">
						<input type="hidden" name="oid" value="${orderListItem.oid }">
							<table class="table table-striped">
							    <thead>
							      <tr>
									<th style="width: 100px;"></th>
									<th style="width: 423; text-align:left">订单编号：${orderListItem.oid }</th>
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
							<div class="table-btn two">
							    <button type="button" class="btn defalut cancel" onclick="foward('${orderListItem.oid }')">查看详情</button>
									<button type="button" class="btn defalut payfor" onclick="deliver('${orderListItem.oid }')">发货</button>
							</div>
						</form>
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
							<table class="table table-striped">
							    <thead>
							      <tr>
									<th style="width: 100px;"></th>
									<th style="width: 423; text-align:left">订单编号：${orderListItem.oid }</th>
									<th colspan="2"></th>
								 </tr>
							    </thead>
								<tbody>
				<c:forEach items="${orderListItem.viewOrderItemList }" var="viewOrderItem">
									<tr>
										<td></td>
										<td>${viewOrderItem.lname }${viewOrderItem.cncode }</td>
										<td style="text-align: center;width: 220;">${viewOrderItem.number }</td>
										<td style=" text-align: center;">${viewOrderItem.totalprice }</td>
									</tr>
				</c:forEach>
									<tr>
										<td colspan="3" ></td>
									    <td style=" text-align: center;">总价：${orderListItem.totalprice }</td>
									</tr>
								</tbody>
							</table>
							<div class="table-btn sure">
								<button type="button" class="btn defalut cancel" onclick="foward('${orderListItem.oid }')">查看详情</button>
						    </div>
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
									<th style="width: 423; text-align:left">订单编号：${orderListItem.oid }</th>
									<th colspan="2"></th>
								 </tr>
							    </thead>
								<tbody>
				<c:forEach items="${orderListItem.viewOrderItemList }" var="viewOrderItem">	
									<tr>
										<td></td>
										<td>${viewOrderItem.lname }${viewOrderItem.cncode }</td>
										<td style="text-align: center;width: 220;">${viewOrderItem.number }</td>
										<td style=" text-align: center;">${viewOrderItem.totalprice }</td>
									</tr>
				</c:forEach>
									<tr>
										<td colspan="3" ></td>
									    <td style=" text-align: center;">总价：${orderListItem.totalprice }</td>
									</tr>
								</tbody>
							</table>
							<div class="table-btn sure">
								<button type="button" class="btn defalut cancel" onclick="foward('${orderListItem.oid }')">查看详情</button>
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
									<th style="width: 423; text-align:left">订单编号：：${orderListItem.oid }</th>
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
								<button type="button" class="btn defalut cancel" onclick="foward('${orderListItem.oid }')">查看详情</button>
							</div>
					</div>
</c:forEach>
				</div>
			</div>
		</div>
		
</div>
	
	
    <script type="text/javascript" src="<c:url value='/js/jquery.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/js/bootstrap.min.js'/>"></script>
    <script type="text/javascript">
       //取消
       function cancel(id){
    	    $("input[id='"+id+"']").val("cancelOrder1");
            $("form[id='"+id+"']").submit();
       }
       //发货
       function deliver(id){
    	   $("input[id='"+id+"']").val("deliverOrder");
           $("form[id='"+id+"']").submit();
       }
       //跳转
 		function forward(){
 			$("input[id='"+id+"']").val("detailOrder");
            $("form[id='"+id+"']").submit();
       }
    
    </script>
    
</body>
</html>
