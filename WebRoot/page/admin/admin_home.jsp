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

<title>My JSP 'admin_Carousel.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css"
	href="css/admin/bootstrap.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.css"
	rel="stylesheet">
<link href="css/admin/bootstrap.file-input.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/admin/main.css">
<link rel="stylesheet" type="text/css" href="css/admin/series.css">
<style type="text/css">
img#card-series {
	width: 217px;
}

figcaption.series_text {
	height: 0px;
}

.rcontent-list {
	grid-template-rows: 200px;
}

figure {
	height: 200px;
}
.rcontent-list-2 {
    display: grid;
    grid-template-columns: repeat(4, minmax(3px,1fr));
    grid-template-rows: 270px;
    grid-gap: 10px;
    grid-template-rows: 100px;
}
.page-header-2 {
    padding-bottom: 9px;
    margin: 0px 0 20px;
    border-bottom: 1px solid #eee;
}
</style>
</head>

<body>
	<div class="page-wrapper">
		<!-- start:轮播图管理&button -->
		<div class="row">
			<div class="col-lg-10">
				<h1 class="page-header">首页管理</h1>
				<div class="page-header-right">
					<div class="btn-group">
					</div>
				</div>
			</div>
		</div>
		<!-- end:轮播图管理&button -->
		<h2 class="page-header-2">轮播图管理</h2>
		<!-- start:轮播图列表 -->
		<div class="row">
			<div class="table-wrap col-lg-10">
				<div class="rcontent-list">
<c:forEach items="${shufflingList }" var="shuffling">
					<div class="card">
						<figure> <img id="card-series"
							src="${shuffling.src }"> <figcaption
							class="series_text"> <span class="mh4"></span>
						<p></p>
						</figcaption>
						<div class="operate">
							<a class="opera"
								href="admin/AdminServlet?method=updateShufflingpre&orderBy=${shuffling.orderBy }">更换</a>
						</div>
						</figure>
					</div>&nbsp;&nbsp;&nbsp;
</c:forEach>
				</div>
			</div>
		</div>
		<!-- end:轮播图列表 -->

		<h2 class="page-header-2"></h2>
		<!-- start:首页展示1
		<div class="row">
			<div class="table-wrap col-lg-10">
				<div class="rcontent-list-2">
					<div class="card">
						<div class="form-group">
							<span class="form-group-addon">选择品牌</span> <select name="bid"
								id="bid" class="selectpicker show-tick" title="请选择一项"
								data-live-search="true" data-size="40">
								<c:forEach items="${brandList }" var="brand">
									<option value="${brand.bid }">${brand.bname }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="card">
						<div class="form-group">
							<span class="form-group-addon">选择系列A</span> <select name="bid"
								id="bid" class="selectpicker show-tick" title="请选择一项"
								data-live-search="true" data-size="40">
								<c:forEach items="${brandList }" var="brand">
									<option value="${brand.bid }">${brand.bname }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="card">
						<div class="form-group">
							<span class="form-group-addon">选择系列B</span> <select name="bid"
								id="bid" class="selectpicker show-tick" title="请选择一项"
								data-live-search="true" data-size="40">
								<c:forEach items="${brandList }" var="brand">
									<option value="${brand.bid }">${brand.bname }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="card">
						<div class="form-group">
							<span class="form-group-addon">选择商品</span> <select name="bid"
								id="bid" class="selectpicker show-tick" title="请选择一项"
								data-live-search="true" data-size="40">
								<c:forEach items="${brandList }" var="brand">
									<option value="${brand.bid }">${brand.bname }</option>
								</c:forEach>
							</select>
						</div>
					</div>
				</div>
			</div>
		</div>

		
		<h2 class="page-header-2">首页展示2</h2>

		<div class="row">
			<div class="table-wrap col-lg-10">
				<div class="rcontent-list-2">
					<div class="card">
						<div class="form-group">
							<span class="form-group-addon">选择品牌</span> <select name="bid"
								id="bid" class="selectpicker show-tick" title="请选择一项"
								data-live-search="true" data-size="40">
								<c:forEach items="${brandList }" var="brand">
									<option value="${brand.bid }">${brand.bname }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="card">
						<div class="form-group">
							<span class="form-group-addon">选择系列A</span> <select name="bid"
								id="bid" class="selectpicker show-tick" title="请选择一项"
								data-live-search="true" data-size="40">
								<c:forEach items="${brandList }" var="brand">
									<option value="${brand.bid }">${brand.bname }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="card">
						<div class="form-group">
							<span class="form-group-addon">选择系列B</span> <select name="bid"
								id="bid" class="selectpicker show-tick" title="请选择一项"
								data-live-search="true" data-size="40">
								<c:forEach items="${brandList }" var="brand">
									<option value="${brand.bid }">${brand.bname }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="card">
						<div class="form-group">
							<span class="form-group-addon">选择商品</span> <select name="bid"
								id="bid" class="selectpicker show-tick" title="请选择一项"
								data-live-search="true" data-size="40">
								<c:forEach items="${brandList }" var="brand">
									<option value="${brand.bid }">${brand.bname }</option>
								</c:forEach>
							</select>
						</div>
					</div>
				</div>
			</div>
		</div>
end:首页展示2 -->
	</div>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-select.js"></script>
	<script src="<%=request.getContextPath()%>/js/fileupload.js"></script>
</body>
</html>
