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

<title>My JSP 'admin_addcarousel.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/admin/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/admin/main.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/admin/bootstrap.file-input.css">

<link rel="stylesheet" type="text/css"
	href="/css/admin/fileinput.min.css">

</head>

<body>
	<div class="page-wrapper">
		<!-- start:添加轮播图 -->
		<div class="row">
			<div class="col-lg-10">
				<h1 class="page-header">轮播图管理--添加轮播图</h1>
			</div>
		</div>
		<!-- end:添加轮播图 -->
		<!-- start:添加 -->
		<form action="page/admin/admin_carousel"
			enctype="multipart/form-data" method="post">
			<!-- 上传图片 -->
			<div class="file-input">
				<input id="myFile" type="file" name="myFile" multiple
					class="file-loading">
			</div>
			<input type="submit" value="提交" class="submit">
		</form>
		<!-- end:添加 -->
	</div>

	<script type="text/javascript">
		$(function() {
			//0.初始化fileinput
			var oFileInput = new FileInput();
			oFileInput.Init("myFile", "/afterSale/uplode/photo");
		});
		var FileInput = function() {
			var oFile = new Object();

			//初始化fileinput控件（第一次初始化）
			oFile.Init = function(ctrlName, uploadUrl) {
				var control = $('#' + ctrlName);

				//初始化上传控件的样式
				control
						.fileinput({
							language : 'zh', //设置语言
							uploadUrl : uploadUrl, //上传的地址
							allowedFileExtensions : [ 'jpg', 'gif', 'png' ],//接收的文件后缀
							//showUploadedThumbs:false,
							// uploadClass: 'hidden',
							showUpload : false, //是否显示上传按钮
							showCaption : false,//是否显示标题
							browseClass : "btn btn-info", //按钮样式
							dropZoneEnabled : false,//是否显示拖拽区域
							//minImageWidth: 150, //图片的最小宽度
							//minImageHeight: 150,//图片的最小高度
							//maxImageWidth: 150,//图片的最大宽度
							//maxImageHeight: 150,//图片的最大高度
							maxFileSize : 2048,//单位为kb，如果为0表示不限制文件大小
							maxFileCount : 2, //表示允许同时上传的最大文件个数
							minFileCount : 1,
							enctype : 'multipart/form-data',
							validateInitialCount : true,
							previewFileIcon : "<i class='glyphicon glyphicon-king'></i>",
							msgFilesTooMany : "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
							fileActionSettings : {
								showUpload : false,
								//showRemove: false
								showZoom : false
							}
						});

				//导入文件上传完成之后的事件
				$("#myFile").on("fileuploaded",
						function(event, data, previewId, index) {
							alert(data.response.code);
							// $("#divControl").hide();
						});
			}
			return oFile;
		};
	</script>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/fileinput.min.js"></script>
	<script
		src="https://cdn.bootcss.com/bootstrap-fileinput/4.4.2/js/locales/zh.js"></script>
</body>
</html>
