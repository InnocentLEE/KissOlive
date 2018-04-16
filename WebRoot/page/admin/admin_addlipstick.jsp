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
<style type="text/css">
 .input-group{
   margin-bottom:20px;
 }
</style>

</head>
<body>
<div class="page-wrapper">
		<!-- start:添加口红 -->
		<div class="row">
			<div class="col-lg-10">
				<h1 class="page-header">口红管理--添加口红</h1>
			</div>
		</div>
		<!-- start:添加 -->
		<form action="page/admin/admin_hot.jsp">
			<div class="input-group">
				<span class="input-group-addon">所属品牌</span> <input type="text" id=""
					class="form-control" placeholder="请输入品牌名称">
			</div>
			<div class="input-group">
				<span class="input-group-addon">所属系列</span> <input type="text" id=""
					class="form-control" placeholder="请输入品牌名称">
			</div>
			<div class="input-group">
				<span class="input-group-addon">选购热点</span> <input type="text" id=""
					class="form-control" placeholder="请输入品牌名称">
			</div>
			<div class="input-group">
				<span class="input-group-addon">口红名字</span> <input type="text" id=""
					class="form-control" placeholder="请输入品牌名称">
			</div>
			<div class="input-group">
				<span class="input-group-addon">产&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地</span>
				<input type="text" id="" class="form-control" placeholder="请输入品牌名称">
			</div>
			<div class="input-group">
				<span class="input-group-addon">保&nbsp;&nbsp;质&nbsp;&nbsp;期</span> <input
					type="text" id="" class="form-control" placeholder="请输入品牌名称">
			</div>
			<div class="input-group">
				<span class="input-group-addon">适用肤质</span> <input type="text" id=""
					class="form-control" placeholder="请输入品牌名称">
			</div>
			<div class="input-group">
				<span class="input-group-addon">主&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;图</span>
				<input type="text" id="" class="form-control" placeholder="请输入品牌名称">
			</div>
			<div class="input-group">
				<span class="input-group-addon">详&nbsp;&nbsp;情&nbsp;&nbsp;图</span> <input
					type="text" id="" class="form-control" placeholder="请输入品牌名称">
			</div>

			<input type="submit" value="确认添加" class="submit">
		</form>
		<!-- end:添加 -->
	</div>
</body>
</html>
