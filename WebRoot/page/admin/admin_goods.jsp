<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin_goods.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css"
	href="css/admin/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/admin/main.css">

  </head>
  
  <body>
    <div class="page-wrapper">
		<!-- start:商品管理&button -->
		<div class="row">
			<div class="col-lg-10">
				<h1 class="page-header">商品管理</h1>
				<div class="page-header-right">
					<div class="btn-group">
						<a class="btn btn-primary" href="page/admin/admin_addgoods.jsp">添加商品</a>
					</div>
				</div>
			</div>
		</div>

		<!-- end:商品管理&button -->

		<!-- start:商品列表 -->
		<div class="row">
			<div class="table-wrap col-lg-10">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>口红名称</th>
							<th>价格</th>
							<th>状态</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>迪奥999</td>
							<td>¥300</td>
							<td>在售</td>
							<td><a class="opera" href="page/admin/admin_addgoods.jsp">查看</a>
								<a class="opera" href="page/admin/admin_addgoods.jsp">编辑</a> <a class="opera">删除</a></td>
						</tr>
						<tr>
							<td>迪奥999</td>
							<td>¥300</td>
							<td>上架</td>
							<td><a class="opera" href="page/admin/admin_addgoods.jsp">查看</a>
								<a class="opera" href="page/admin/admin_addgoods.jsp">编辑</a> <a class="opera">删除</a></td>
						</tr>						
						<tr>
							<td>迪奥999</td>
							<td>¥300</td>
							<td>上架</td>
							<td><a class="opera" href="page/admin/admin_addgoods.jsp">查看</a>
								<a class="opera" href="page/admin/admin_addgoods.jsp">编辑</a> <a class="opera">删除</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- end:热点列表 -->
	</div>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
  </body>
</html>
