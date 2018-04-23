<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Kiss Olive 后台管理系统 登录页面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE-edge,chrome=1">

<link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/css/validform/style.css'/>">
<link rel="stylesheet" href="<c:url value='/css/validform/demo.css'/>">
<link rel="stylesheet" href="<c:url value='/css/user/slide-unlock.css'/>">
<link rel="stylesheet" href="<c:url value='/css/user/sign_login.css'/>">

<style type="text/css">
  .container-fluid {
    margin-top: 60;
   }
  .logo_header.row {
    margin-bottom: 10;
   }
</style>

</head>

<body>
	<div class="container-fluid">
		<div class="logo_header row">
			<div class="ko col-xs-12 col-md-12">
				<img src="http://localhost:8080/KissOlive/img/kissolive.png" alt="">
			</div>
		</div>
		<!-- end of logo_header -->
		<div class="row">
			<div class="center-block">
				<div class="panel panel-default login-panel ">
					<div style="margin-top:35px; margin-bottom:45px">
						<span class="denglu">后&nbsp;台&nbsp;登&nbsp;录</span>
					</div>

					<form class="registerform form-horizontal "action="/KissOlive/servlet/UserServlet" method="post">
						<input type="hidden" name="method" value="login" />
						<div class="sum-group">
							<div class="form-group">
								<label for="tel" class="col-sm-5 control-label"
									style="text-align:right">登陆账号</label>
								<div class="col-sm-6">
									<input type="text" class="form-control inputxt" id="usertel"
										name="usertel" placeholder="请输入手机号" value="${usertel }"/>
								</div>
							</div>
							<div class="form-group">
								<label for="userpassword" class="col-sm-5 control-label"
									style="text-align:right">登录密码</label>
								<div class="col-sm-6">
									<input type="password" value="" id="password" name="password"
										class="inputClass form-control inputxt"
										placeholder="6-18位以字母开头，含数字/字母/'_'" value="${password }"
										required="required" />
								</div>
								<div class="col-sm-12 tip1">
				                      <label class="errorClass" id="passwordError" >${errors }</label>
				                     <label class="correctClass" id="passwordCorrect"></label>
				               </div>
							</div><!-- end of form-group -->
							
							<div class="form-group">
								<div class="login_btn col-md-12 col-lg-12">
									<button class="btn btn-default lbtn" type="submit" id="submit"
										>登 录</button>
								</div>
							</div>
							
						</div>
					</form>
						
			</div>
			<!-- end of panel -->
		</div>
		<!-- end of center-block -->
		    <div class="clearfix"></div>
	</div>
	<!-- end of row -->
	</div>
	<!-- container_fluid -->

	<script type="text/javascript" src="<c:url value='/js/jquery.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/js/bootstrap.min.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/js/login_verify.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/js/valid.js'/>"></script>

	
</body>
</html>
