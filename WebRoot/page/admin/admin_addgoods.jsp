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
			<input type="hidden" name="method" value="addGoods" />
			<div class="form-group">
				<span class="form-group-addon">所属口红</span> <select name="lid"
					id="lid" class="selectpicker show-tick" title="请选择一项"
					data-live-search="true" data-size="40">
					<c:forEach items="${lipstickList }" var="lipstick">
						<option value="${lipstick.lid }">${lipstick.lname }</option>
					</c:forEach>
				</select>
			</div>
			<div class="form-group">
				<span class="form-group-addon">所属色号</span> <select name="cnid"
					id="cnid" class="selectpicker show-tick" title="请选择一项"
					data-live-search="true" data-size="40">
					<c:forEach items="${colornoList }" var="colorno">
						<option value="${colorno.cnid }">${colorno.cncode }</option>
					</c:forEach>
				</select>
			</div>
			<div class="input-group">
				<span class="input-group-addon">价格</span> <input type="text"
					name="gprice" class="form-control" placeholder="请输入价格">
			</div>
			<div class="input-group">
				<span class="input-group-addon">库存</span> <input type="text"
					name="gnumber" class="form-control" placeholder="请输入库存量 "> <span
					class="input-group-addon">件</span>
			</div>
			<div class="form-group">
				<span class="form-group-addon">状态</span> <select name="status" id="status"
					class="selectpicker show-tick" title="请选择一项"
					data-live-search="true" data-size="40">
					<option value="1">在售</option>
					<option value="0">下架</option>

				</select>
			</div>
			<input type="submit" value="确认添加" class="submit">
			<!-- end:提交&取消 -->
		</form>
	</div>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-select.js"></script>
	<script src="<%=request.getContextPath()%>/js/fileupload.js"></script>
</body>
</html>
