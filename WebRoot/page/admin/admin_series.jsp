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

<title>My JSP 'admin_series.jsp' starting page</title>

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
		<!-- start:系列管理 -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">系列管理</h1>
			</div>
		</div>
		<!-- end:系列管理 -->

		<!-- start:系列列表 -->
		<div class="row">
			<div class="table-wrap col-lg-10">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>系列名称</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>迪奥烈焰蓝金系列</td>
							<td><button type="button" class="btn btn-link"
									data-toggle="modal" data-target="#myModal">编辑</button>
									 <!-- 模态框（Modal） -->
								<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title" id="myModalLabel">请输入新的系列名称</h4>
											</div>
											<form action="page/admin/admin_series.jsp">
											<div class="modal-body">
												<div class="col-sm-10">
													<input type="text" class="form-control inputxt" />
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default"
													data-dismiss="modal">关闭</button>
												<input type="submit" value="提交" class="submit">
											</div>
											</form>
										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal -->
								</div>
								<a class="opera">删除</a></td>
						</tr>
						<tr>
							<td>玩色狂想系列</td>
							<td><button type="button" class="btn btn-link"
									data-toggle="modal" data-target="#myModal">编辑</button>
									 <!-- 模态框（Modal） -->
								<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title" id="myModalLabel">请输入新的系列名称</h4>
											</div>
											<form action="page/admin/admin_series.jsp">
											<div class="modal-body">
												<div class="col-sm-10">
													<input type="text" class="form-control inputxt" />
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default"
													data-dismiss="modal">关闭</button>
												<input type="submit" value="提交" class="submit">
											</div>
											</form>
										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal -->
								</div>
								<a class="opera">删除</a></td>
						</tr>
						<tr>
							<td>魅惑系列</td>
							<td><button type="button" class="btn btn-link"
									data-toggle="modal" data-target="#myModal">编辑</button>
									 <!-- 模态框（Modal） -->
								<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title" id="myModalLabel">请输入新的系列名称</h4>
											</div>
											<form action="page/admin/admin_series.jsp">
											<div class="modal-body">
												<div class="col-sm-10">
													<input type="text" class="form-control inputxt" />
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default"
													data-dismiss="modal">关闭</button>
												<input type="submit" value="提交" class="submit">
											</div>
											</form>
										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal -->
								</div>
								<a class="opera">删除</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- end:系列列表 -->
	</div>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript"></script>
</body>
</html>
