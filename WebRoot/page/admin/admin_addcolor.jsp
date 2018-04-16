<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Kiss Olive 色号管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/css/admin/jquery.minicolors.css'/>">
<link rel="stylesheet" href="<c:url value='/css/admin/main.css'/>">

</head>

<body>
	<div class="page-wrapper">
		<!-- start:添加色号 -->
		<div class="row">
			<div class="col-lg-10">
				<h1 class="page-header">色号管理--添加色号</h1>
			</div>
		</div>
		<!-- end:添加色号 -->
		<!-- start:添加 -->
		<form action="page/admin/admin_hot.jsp">
			<div class="input-group">
				<span class="input-group-addon">色号代码</span> 
				<input type="text" class="form-control" placeholder="请输入色号名称" id="cncode">
			</div>
		<!-- start:获取色值 -->
		   <div class="input-group">
				<span class="input-group-addon">颜色代号</span>
				<input type="text" id="cnRGB" class="form-control demo" value="#70c24a">
			</div>
		  
		<!-- end:获取色值 -->    

			<input type="submit" value="确认添加" class="submit">
		</form>
		<!-- end:添加 -->
	</div>

    <script type="text/javascript" src="<c:url value='/js/jquery.js'/>"></script>
	<script src="<c:url value='/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/js/plugins/jquery.minicolors.js'/>"></script>
	<!-- 
	<script src="js/bootstrap-select.js"></script> -->
	<script type="text/javascript">
	$(document).ready( function() {
		
        $('.demo').each( function() {
      		//
            //  $(selector).minicolors(); 初始化插件
            //
			$(this).minicolors({
				control: $(this).attr('data-control') || 'hue',
				defaultValue: $(this).attr('data-defaultValue') || '',
				inline: $(this).attr('data-inline') === 'true',
				letterCase: $(this).attr('data-letterCase') || 'lowercase',
				opacity: $(this).attr('data-opacity'),
				position: $(this).attr('data-position') || 'bottom left',
				change: function(hex, opacity) {
					if( !hex ) return;
					if( opacity ) hex += ', ' + opacity;
					try {
						console.log(hex);
					} catch(e) {}
				},
				theme: 'bootstrap'
			});
            
        });
		
	});

	
	</script>
</body>
</html>
