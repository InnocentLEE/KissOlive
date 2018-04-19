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

<title>My JSP 'admin_goods.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css"
	href="css/admin/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/admin/main.css">
<link rel="stylesheet" type="text/css" href="css/admin/goods.css">

</head>

<body>
	<div class="page-wrapper">
		<!-- start:商品管理&button -->
		<div class="row">
			<div class="col-lg-10">
				<h1 class="page-header">商品管理</h1>
				<div class="page-header-right">
					<div class="btn-group">
						<a class="btn btn-primary" href="page/admin/admin_addgoods.jsp">添加商品</a>
					</div>
				</div>
			</div>
		</div>

		<!-- end:商品管理&button -->

		<!-- start:商品列表 -->
		<!-- start:一个口红商品 -->
		<div class="row">
			<div class="table-wrap col-lg-10">
				<div class="container content">
					<div class="lmenu">
						<div class="lmenu-top">
							<img class="lipstick-picture" src="img/admin/home.jpg"
								width="147" height="97"> <span class="brand-name">全新DIOR迪奥烈焰蓝金液唇膏系列</span>
						</div>
					</div>
					<div class="rcontent">
						<div class="row">
							<div class="table-wrap col-lg-10">
								<table class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th>色号预览</th>
											<th>价格</th>
											<th>库存</th>
											<th>下架</th>
											<th>编辑</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><span id="cn" class="rect"
												style="background:${colorno.cnRGB }"></span></td>
											<td>¥300</td>
											<td>20</td>
											<td>在售</td>
											<td><a class="opera"
												href="page/admin/admin_addlipstick.jsp">编辑</a></td>
										</tr>
										<tr>
											<td><span id="cn" class="rect"
												style="background:${colorno.cnRGB }"></span></td>
											<td>¥300</td>
											<td>20</td>
											<td>在售</td>
											<td><a class="opera"
												href="page/admin/admin_addlipstick.jsp">编辑</a></td>
										</tr>
										<tr>
											<td><span id="cn" class="rect"
												style="background:${colorno.cnRGB }"></span></td>
											<td>¥300</td>
											<td>20</td>
											<td>在售</td>
											<td><a class="opera"
												href="page/admin/admin_addlipstick.jsp">编辑</a></td>
										</tr>
										<tr>
											<td><span id="cn" class="rect"
												style="background:${colorno.cnRGB }"></span></td>
											<td>¥300</td>
											<td>20</td>
											<td>在售</td>
											<td><a class="opera"
												href="page/admin/admin_addlipstick.jsp">编辑</a></td>
										</tr>
										<tr>
											<td><span id="cn" class="rect"
												style="background:${colorno.cnRGB }"></span></td>
											<td>¥300</td>
											<td>20</td>
											<td>在售</td>
											<td><a class="opera"
												href="page/admin/admin_addlipstick.jsp">编辑</a></td>
										</tr>
										<tr>
											<td><span id="cn" class="rect"
												style="background:${colorno.cnRGB }"></span></td>
											<td>¥300</td>
											<td>20</td>
											<td>在售</td>
											<td><a class="opera"
												href="page/admin/admin_addlipstick.jsp">编辑</a></td>
										</tr>
										<tr>
											<td><span id="cn" class="rect"
												style="background:${colorno.cnRGB }"></span></td>
											<td>¥300</td>
											<td>20</td>
											<td>在售</td>
											<td><a class="opera"
												href="page/admin/admin_addlipstick.jsp">编辑</a></td>
										</tr>
										<tr>
											<td><span id="cn" class="rect"
												style="background:${colorno.cnRGB }"></span></td>
											<td>¥300</td>
											<td>20</td>
											<td>在售</td>
											<td><a class="opera"
												href="page/admin/admin_addlipstick.jsp">编辑</a></td>
										</tr>
										<tr>
											<td><span id="cn" class="rect"
												style="background:${colorno.cnRGB }"></span></td>
											<td>¥300</td>
											<td>20</td>
											<td>在售</td>
											<td><a class="opera"
												href="page/admin/admin_addlipstick.jsp">编辑</a></td>
										</tr>
										<tr>
											<td><span id="cn" class="rect"
												style="background:${colorno.cnRGB }"></span></td>
											<td>¥300</td>
											<td>20</td>
											<td>在售</td>
											<td><a class="opera"
												href="page/admin/admin_addlipstick.jsp">编辑</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end:一个口红商品 -->
		<!-- start:一个口红商品 -->
		<div class="row">
			<div class="table-wrap col-lg-10">
				<div class="container content">
					<div class="lmenu">
						<div class="lmenu-top">
							<img class="lipstick-picture" src="img/admin/home.jpg"
								width="147" height="97"> <span class="brand-name">全新DIOR迪奥烈焰蓝金液唇膏系列</span>
						</div>
					</div>
					<div class="rcontent">
						<div class="row">
							<div class="table-wrap col-lg-10">
								<table class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th>色号预览</th>
											<th>价格</th>
											<th>库存</th>
											<th>下架</th>
											<th>编辑</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><span id="cn" class="rect"
												style="background:${colorno.cnRGB }"></span></td>
											<td>¥300</td>
											<td>20</td>
											<td>在售</td>
											<td><a class="opera"
												href="page/admin/admin_addlipstick.jsp">编辑</a></td>
										</tr>
										<tr>
											<td><span id="cn" class="rect"
												style="background:${colorno.cnRGB }"></span></td>
											<td>¥300</td>
											<td>20</td>
											<td>在售</td>
											<td><a class="opera"
												href="page/admin/admin_addlipstick.jsp">编辑</a></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end:一个口红商品 -->
		<!-- end:商品列表 -->
	</div>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
