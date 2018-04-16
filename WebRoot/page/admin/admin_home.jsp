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

<title>My JSP 'admin_Carousel.jsp' starting page</title>

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
		<!-- start:轮播图管理&button -->
		<div class="row">
			<div class="col-lg-10">
				<h1 class="page-header">轮播图管理</h1>
				<div class="page-header-right">
					<div class="btn-group">
						<a class="btn btn-primary" href="page/admin/admin_addcarousel.jsp">添加图片</a>
					</div>
				</div>
			</div>
		</div>
		<!-- end:轮播图管理&button -->
		<!-- start:轮播图列表 -->
		<div class="row">
			<div class="table-wrap col-lg-10">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>轮播图</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a class="picture" href="#"><img
									src="img//kissolive.png" class="img-thumbnail"
									alt="Cinque Terre" width="65" height="45"></a></td>
							<td><a class="opera" href="page/admin/admin_addcarousel.jsp">编辑</a>
								<a class="opera">删除</a></td>
						</tr>
						<tr>
							<td><a class="picture" href="#"><img
									src="img//kissolive.png" class="img-thumbnail"
									alt="Cinque Terre" width="65" height="45"></a></td>
							<td><a class="opera">编辑</a> <a class="opera">删除</a></td>
						</tr>
						<tr>
							<td><a class="picture" href="#"><img
									src="img//kissolive.png" class="img-thumbnail"
									alt="Cinque Terre" width="65" height="45"></a></td>
							<td><a class="opera">编辑</a> <a class="opera">删除</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- end:轮播图列表 -->
	</div>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
