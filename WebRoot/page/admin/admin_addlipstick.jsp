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
				<h1 class="page-header">口红管理--添加口红</h1>
			</div>
		</div>
		<!-- start:添加 -->
		<form action="#">
		  <div class="sum-group">
			<div class="input-group">
				<span class="input-group-addon">所属品牌</span> 
				<select name="bid" id="bid" class="form-control" onchange="loadSeries()">
						<option value="" >====请选择品牌====</option>
						<c:forEach items="${brandList }" var="brand">
						<option value="${brand.bid }">${brand.bname }</option>
						</c:forEach>
				</select>
			</div>
			<div class="input-group">
				<span class="input-group-addon">所属系列</span>
				<select name="sid" id="sid" class="form-control">
						<option value="">====请选择系列====</option>
				</select>
			</div>
			<div class="input-group">
				<span class="input-group-addon">选购热点</span> 
				<select name="hid" id="hid" class="form-control">
						<option value="">====请选择系列====</option>
				</select>
			</div>
			<div class="input-group">
				<span class="input-group-addon">口红名字</span> 
				<input type="text" id="" class="form-control" placeholder="请输入口红名称">
			</div>
			<div class="input-group">
				<span class="input-group-addon">产&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地</span>
				<input type="text" id="" class="form-control" placeholder="请输入生产产地">
			</div>
			<div class="input-group">
				<span class="input-group-addon">保&nbsp;&nbsp;质&nbsp;&nbsp;期</span> <input
					type="text" id="" class="form-control" placeholder="请输入保质期限">
			</div>
			<div class="input-group">
				<span class="input-group-addon">适用肤质</span> <input type="text" id=""
					class="form-control" placeholder="请输入适用肤质">
			</div>
			
			<div class="PIC input-group">
				<span class="PIC input-group-addon">主&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;图</span>
				<img id="previewImg" src="<c:url value='/img/null.jpg'/>" width="440" height="290" />
		
				<div class="file-input">
				    <span class="piclab">请选择口红图片：</span>
					<input id="myfile" name="myfile" type="file" class="fileloading form-control" /> 
				</div>
			</div>
			
			<div class="PIC input-group">
			     <span class="PIC input-group-addon">详&nbsp;&nbsp;情&nbsp;&nbsp;图</span> 
			     <div class="file-input">
				    <span class="piclab">请选择详情图片：</span>
					<input id="mylgfile" name="mylgfile" type="file" class="fileloading form-control" /> 
				    <button type="button" class="btn btn-default" id="showbtn" name="showbtn">点击预览图片&nbsp;▼</button>
				 </div>
				    <img id="previewLgImg" src="<c:url value='/img/user/user_prointro/morecontent.png'/>" width="790px" height="auto" style="display:none"/>
						
			</div>
			</div>
			<input type="submit" value="确认添加" class="submit">
		</form>
		<!-- end:添加 -->
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

		$(document).ready(function(){
			  
			  $("#showbtn").click(function(){
			    $("#previewLgImg").slideToggle();
			  });
			});
	    
   </script>
</body>
</html>
