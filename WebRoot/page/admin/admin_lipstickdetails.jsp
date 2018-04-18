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
<link rel="stylesheet" href="<c:url value='/css/admin/lipsticks.css'/>">		

</head>
<body>
<div class="page-wrapper">
		<!-- start:添加口红 -->
		<div class="row">
			<div class="col-lg-10">
				<h1 class="page-header">口红管理--口红详情</h1>
				<div class="page-header-right">
					<div class="btn-group">
						<a class="btn btn-opera" href="<c:url value='/page/admin/admin_addlipstick.jsp'/>">口红编辑</a>
						
						<a class="btn btn-opera" href="<c:url value='/page/admin/admin_addlipstick.jsp'/>">口红删除</a>
					
					</div>
				</div>
			</div>
		</div>
		<!-- start:详情 -->
		<form action="#">
		  <div class="sum-group">
			<div class="input-group">
				<span class="input-group-addon">所属品牌</span> 
				<label class="form-control"></label>
			</div>
			<div class="input-group">
				<span class="input-group-addon">所属系列</span>
				<label class="form-control"></label>
			</div>
			<div class="input-group">
				<span class="input-group-addon">选购热点</span> 
				<label class="form-control"></label>
			</div>
			<div class="input-group">
				<span class="input-group-addon">口红名字</span> 
				<label class="form-control"></label>
			</div>
			<div class="input-group">
				<span class="input-group-addon">产&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地</span>
				<label class="form-control"></label>
			</div>
			<div class="input-group">
				<span class="input-group-addon">保&nbsp;&nbsp;质&nbsp;&nbsp;期</span> 
				<label class="form-control"></label>
			</div>
			<div class="input-group">
				<span class="input-group-addon">适用肤质</span> 
				<label class="form-control"></label>
			</div>
		
		
			<div class="PIC input-group">
				<span class="PIC input-group-addon">主图预览</span>
				<img id="previewImg" src="<c:url value='/img/null.jpg'/>" width="440" height="290" />
		    </div>
			
			<div class="PIC input-group">
			     <span class="PIC input-group-addon">详情预览</span> 
			     <img id="previewLgImg" src="<c:url value='/img/user/user_prointro/morecontent.png'/>" width="790px" height="auto"/>
			</div>
			</div>
			
		</form>
		<!-- end:详情 -->
</div>
	
	
    <script type="text/javascript" src="<c:url value='/js/jquery.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/js/bootstrap.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/js/fileupload.js'/>"></script>
	<script type="text/javascript">
		function loadSeries() {
		
			var bid = $("#bid").val();
			$.ajax({
				async:true,
				cache:false,
				url:"/KissOlive/TestServlet",
				data:{method:"ajaxFindSeries", bid:bid},
				type:"POST",
				dataType:"json",
				success:function(arr) {
					$("#sid").empty();
					$("#sid").append($("<option>====请选择系列====</option>"));
					for(var i = 0; i < arr.length; i++) {
						var option = $("<option>").val(arr[i].sid).text(arr[i].sname);
						$("#sid").append(option);
					}
				}
			});
		}
   </script>
</body>
</html>
