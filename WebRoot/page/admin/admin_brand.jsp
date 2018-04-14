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

<title>My JSP 'admin_brand.jsp' starting page</title>

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
		<!-- start:品牌管理&button -->
		<div class="row">
			<div class="col-lg-10">
				<h1 class="page-header">品牌管理</h1>
				<div class="page-header-right">
					<div class="btn-group">
						<button type="button" class="btn btn-primary dropdown-toggle"
							data-toggle="dropdown">
							添加 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li><a href="page/admin/admin_addbrand.jsp">品牌</a></li>
							<li><a href="page/admin/admin_addseries.jsp">系列</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<!-- end:品牌管理&button -->

		<!-- start:品牌列表 -->
		<div class="row">
			<div class="table-wrap col-lg-10">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>品牌名称</th>
							<th>品牌logo</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>迪奥</td>
							<td><a class="picture" href="#"><img
									src="img//kissolive.png" class="img-thumbnail"
									alt="Cinque Terre" width="65" height="45"></a></td>
							<td><a class="opera" href="page/admin/admin_series.jsp">查看系列</a>
								<a class="opera">编辑</a> <a class="opera">删除</a></td>
						</tr>
						<tr>
							<td>阿玛尼</td>
							<td><a class="picture" href="#"><img
									src="img//kissolive.png" class="img-thumbnail"
									alt="Cinque Terre" width="65" height="45"></a></td>
							<td><a class="opera" href="#">查看系列</a> <a class="opera">编辑</a>
								<a class="opera">删除</a></td>
						</tr>
						<tr>
							<td>植村秀</td>
							<td><a class="picture" href="#"><img
									src="img//kissolive.png" class="img-thumbnail"
									alt="Cinque Terre" width="65" height="45"></a></td>
							<td><a class="opera" href="#">查看系列</a> <a class="opera">编辑</a>
								<a class="opera">删除</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- end:品牌列表 -->
	</div>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
