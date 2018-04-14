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

<title>My JSP 'admin_hot.jsp' starting page</title>

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
		<!-- start:选购热点管理&button -->
		<div class="row">
			<div class="col-lg-10">
				<h1 class="page-header">选购热点管理</h1>
				<div class="page-header-right">
					<div class="btn-group">
						<a class="btn btn-primary" href="page/admin/admin_addhot.jsp">添加热点</a>
					</div>
				</div>
			</div>
		</div>

		<!-- end:选购热点管理&button -->

		<!-- start:热点列表 -->
		<div class="row">
			<div class="table-wrap col-lg-10">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>热点名称</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>保湿</td>
							<td><button type="button" class="btn btn-link"
									data-toggle="modal" data-target="#myModal">编辑</button> <!-- 模态框（Modal） -->
								<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title" id="myModalLabel">请输入新的热点名称</h4>
											</div>
											<div class="modal-body">
												<div class="col-sm-10">
													<input type="text" class="form-control inputxt" />
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default"
													data-dismiss="modal">关闭</button>
												<button type="button" class="btn btn-primary">提交更改
												</button>
											</div>
										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal -->
								</div> <a class="opera">删除</a></td>
						</tr>
						<tr>
							<td>哑光</td>
							<td><button type="button" class="btn btn-link"
									data-toggle="modal" data-target="#myModal">编辑</button> <!-- 模态框（Modal） -->
								<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title" id="myModalLabel">请输入新的热点名称</h4>
											</div>
											<div class="modal-body">
												<div class="col-sm-10">
													<input type="text" class="form-control inputxt" />
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default"
													data-dismiss="modal">关闭</button>
												<button type="button" class="btn btn-primary">提交更改
												</button>
											</div>
										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal -->
								</div> <a class="opera">删除</a></td>
						</tr>
						<tr>
							<td>防晒</td>
							<td><button type="button" class="btn btn-link"
									data-toggle="modal" data-target="#myModal">编辑</button> <!-- 模态框（Modal） -->
								<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-hidden="true">&times;</button>
												<h4 class="modal-title" id="myModalLabel">请输入新的热点名称</h4>
											</div>
											<div class="modal-body">
												<div class="col-sm-10">
													<input type="text" class="form-control inputxt" />
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-default"
													data-dismiss="modal">关闭</button>
												<button type="button" class="btn btn-primary">提交更改
												</button>
											</div>
										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal -->
								</div> <a class="opera">删除</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- end:热点列表 -->
	</div>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
