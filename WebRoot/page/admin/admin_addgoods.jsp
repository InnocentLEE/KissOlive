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
		<form action="page/admin/admin_goods.jsp">
			<div class="form-group">
				<span class="form-group-addon">所属口红</span> <select name="bid"
					id="bid" class="selectpicker show-tick" title="请选择一项"
					data-live-search="true" data-size="40">
					<c:forEach items="${brandList }" var="brand">
						<option value="${brand.bid }">${brand.bname }</option>
					</c:forEach>
				</select>
			</div>
			<div class="form-group">
				<span class="form-group-addon">所属色号</span> <select name="bid"
					id="bid" class="selectpicker show-tick" title="请选择一项"
					data-live-search="true" data-size="40">
					<c:forEach items="${brandList }" var="brand">
						<option value="${brand.bid }">${brand.bname }</option>
					</c:forEach>
				</select>
			</div>
			<div class="input-group">
				<span class="input-group-addon">价格</span> <input type="text"
					name="sname" class="form-control" placeholder="请输入价格">
			</div>
			<div class="input-group">
				<span class="input-group-addon">库存</span> <input type="text"
					name="sname" class="form-control" placeholder="请输入库存量 "> <span
					class="input-group-addon">件</span>
			</div>
			<div class="form-group">
				<span class="form-group-addon">状态</span> <select name="bid" id="bid"
					class="selectpicker show-tick" title="请选择一项"
					data-live-search="true" data-size="40">
					<option>在售</option>
					<option>下架</option>

				</select>
			</div>
			<input type="submit" value="确认添加" class="submit">
			<!-- end:提交&取消 -->
		</form>
	</div>
	<script type="text/javascript">
		function check() {
			var value = doucument.getElementByld("input").valaue;
			var reg = /^[1-9]\d*$|^0$/;
			if (reg.test(value) == true) {
				return true;
			} else {
				alert("请输入正确的数字");
				return false;
			}
		}
	</script>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-select.js"></script>
	<script src="<%=request.getContextPath()%>/js/fileupload.js"></script>
</body>
</html>
