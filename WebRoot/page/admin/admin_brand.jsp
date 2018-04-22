<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
						<a class="btn btn-primary" href="page/admin/admin_addbrand.jsp">添加品牌</a>
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
<c:forEach items="${brandList }" var="brand">
			    		<tr>
							<td>${brand.bname }</td>
							<td><a class="picture"><img
									src="${brand.bsrc }" class="img-thumbnail"
									alt="Cinque Terre" width="90" height="60"></a></td>
							<td><!-- <a class="opera" >编辑</a> -->
								<a class="opera" href="admin/AdminServlet?method=deleteBrand&bid=${brand.bid }">删除</a></td>
						</tr>
</c:forEach>
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
