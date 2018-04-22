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

<title>My JSP 'admin_addgoods.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css"
	href="css/admin/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/admin/main.css">
<link href="css/admin/bootstrap.file-input.css" rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.css"
	rel="stylesheet">
<style type="text/css">
.input-group {
	margin-bottom: 15px;
	margin-top: 25px;
}

.form-group {
	margin-bottom: 15px;
	margin-top: 28px;
}
</style>
</head>

<body>
	<div class="page-wrapper">
		<!-- start:添加商品 -->
		<div class="row">
			<div class="col-lg-10">
				<h1 class="page-header">商品管理--添加商品</h1>
			</div>
		</div>
		<!-- end:添加品牌 -->

		<!-- start:添加 -->
		<form action="/KissOlive/admin/AdminServlet" method="post">
			<input type="hidden" name="method" value="editgoods" />
			<input type="hidden" name="gid" value="${gid }" />
			<div class="input-group">
				<span class="input-group-addon">价格</span> <input type="text"
					name="gprice" class="form-control" value="${gprice }">
			</div>
			<div class="input-group">
				<span class="input-group-addon">库存</span> <input type="text"
					name="gnumber" class="form-control" value="${gnumber }"> <span
					class="input-group-addon">件</span>
			</div>
			<input type="submit" value="确认修改" class="submit">
			<!-- end:提交&取消 -->
		</form>
	</div>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-select.js"></script>
	<script src="<%=request.getContextPath()%>/js/fileupload.js"></script>
</body>
</html>
