<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>My JSP 'admin_color.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/admin/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/admin/fontawesome-all.css">
<link rel="stylesheet" type="text/css" href="css/admin/main.css">

<style type="text/css">
   .rect{
         padding: 3 30;
		 background: pink; /*后台返回css数据请将背景颜色默认设为白色*/
		 border-radius: 2px;
   }
</style>
</head>

<body>
	<div class="page-wrapper">
		<!-- start:色号管理&button -->
		<div class="row">
			<div class="col-lg-10">
				<h1 class="page-header">色号管理</h1>
				<div class="page-header-right">
					<div class="btn-group">
						<a class="btn btn-primary" href="page/admin/admin_addcolor.jsp">添加色号</a>
					</div>
				</div>
			</div>
		</div>
		<!-- end:色号管理&button -->

<!-- start:色号列表 -->
		<div class="row">
			<div class="table-wrap col-lg-10">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>色号名称</th>
							<th>色值</th>
							<th>颜色预览</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
<c:forEach items="${colornoList }" var="colorno">
					<tr>
							<td>${colorno.cncode }</td>
							<td>${colorno.cnRGB }</td>
							<td><span id="cn" class="rect" style="background:${colorno.cnRGB }"></span></td>
							<td><a class="opera" href="page/admin/admin_addcolor.jsp">编辑</a> 
							<a class="opera" href="admin/AdminServlet?method=deleteColorno&hid=${colorno.cnid }">删除</a></td>
					</tr>
</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<!-- end:色号列表 -->

	</div>
	
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
</body>
</html>
