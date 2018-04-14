<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'admin_series.jsp' starting page</title>

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
		<!-- start:系列管理 -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">系列管理</h1>
			</div>
		</div>
		<!-- end:系列管理 -->

		<!-- start:系列列表 -->
		<div class="row">
			<div class="table-wrap col-lg-10">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>系列名称</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>迪奥烈焰蓝金系列</td>
							<td><a class="opera">编辑</a>
								<a class="opera">删除</a></td>
						</tr>
						<tr>
							<td>玩色狂想系列</td>
							<td><a class="opera">编辑</a>
								<a class="opera">删除</a></td>
						</tr>
						<tr>
							<td>魅惑系列</td>
							<td><a class="opera">编辑</a>
								<a class="opera">删除</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- end:系列列表 -->
	</div>

	<sript src="js/jquery.js"></sript>
	<sript src="js/bootstrap.min.js"></sript>
	<script type="text/javascript"></script>
</body>
</html>
