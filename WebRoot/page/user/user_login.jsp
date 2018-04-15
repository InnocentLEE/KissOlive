<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>Kiss Olive 官方商城 注册页面</title>

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
<link rel="stylesheet" href="<c:url value='/css/user/validform/style.css'/>">
<link rel="stylesheet" href="<c:url value='/css/validform/demo.css'/>">
<link rel="stylesheet" href="<c:url value='/css/user/slide-unlock.css'/>">
<link rel="stylesheet" href="<c:url value='/css/user/sign_login.css'/>">

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
					<div style="margin-top:25px; margin-bottom:25px">
						<span class="denglu">&nbsp;&nbsp;&nbsp;登&nbsp;&nbsp;&nbsp;&nbsp;录</span>
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
								<div class="col-md-5 "></div>
								<!-- Button trigger modal -->
								<div class="col-md-6 forget">
									<button type="button" class="btn btn-link" data-toggle="modal"
										data-target="#myModal">忘记密码？</button>
								</div>

								<!-- Start of Modal -->
								<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
									aria-labelledby="myModalLabel">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
												<h4 class="modal-title" id="myModalLabel">忘记密码</h4>
											</div>
											<!-- end of modal-header -->
											<div class="modal-body" style="text-align:left">
												<div>
													<h5>请输入你需要找回登录密码的帐户名（即手机号）:</h5>
													<label class="Findpw_login">登陆账号</label> 
													<input type="text" class="text" id="tel" name="tel"/>
												</div>
												<div class="col-sm-12 tip1">
								                     <label class="errorClass" id="telError" ></label>
								                     <label class="correctClass" id="telCorrect"></label>
								                 </div>
												<div float=left;>
													<label class="Findpw_login">验证码</label>
												</div>
												<div id="mpanel2" float=right;></div>
											</div>
											<!-- end of modal-body -->
											<div class="modal-footer">
												<button type="button" class="btn btn-default"
													data-dismiss="modal" id="cancel">取消</button>
												<button type="button" class="btn btn-default" id="check-btn"
													name="check-btn" onclick="sentUserpassword();">发送</button>
											</div>
											<!-- end of modal-footer -->
										</div>
										<!-- end of modal-content -->
									</div>
									<!-- end of modal-dialog -->
								</div>
								<!-- end of modal fade -->
								<!-- End of Modal -->
								
						     </div><!-- end of form-group -->
							
							<div class="form-group">
								<div class="col-md-12 col-lg-12 slider-lock">
									<div id="slider">
										<div id="slider_bg"></div>
										<span id="label">>></span> <span id="labelTip">向右拖动滑块验证</span>
									</div>
								</div>
							</div>
		
							<div class="form-group">
								<div class="login_btn col-md-12 col-lg-12">
									<button class="btn btn-default lbtn" type="submit" id="submit"
										disabled="true">登 录</button>
								</div>
							</div>
							<div class="form-group">
								<div style="padding-left:60px;padding-top: 25px;">
									<button class="btn btn-default lbtn" style="width：79%"
										onclick="regis()">没有登录账号？快速进行注册</button>
								</div>
					   </div>
						</div>
					</form>
						
			</div>
			<!-- end of panel -->
		</div>
		<!-- end of center-block -->
	</div>
	<!-- end of row -->
	</div>
	<!-- container_fluid -->

	<script type="text/javascript" src="<c:url value='/js/jquery.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/js/bootstrap.min.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/js/slideunlock.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/js/login_verify.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/js/valid.js'/>"></script>

	<script type="text/javascript">
		function regis() {
			window.location.href = "http://localhost:8080/KissOlive/page/user/user_register.jsp";
		}
	</script>
	<script type="text/javascript">
		$('#mpanel2').codeVerify({
			type : 1,
			width : '400px',
			height : '50px',
			fontSize : '30px',
			codeLength : 6,
			btnId : 'check-btn',
			ready : function() {
			},
			success : function() {

				$('#myModal').modal('hide');

			},
			error : function() {
				alert('验证码不匹配！');
			}
		});
	</script>

	<script>
		/*
		 * 登录滑动验证码验证结果判断
		 */
		$(function() {
			var slider = new SliderUnlock("#slider", {
				successLabelTip : "验证通过"
			}, function() {
				//alert("验证成功,即将跳转至商城首页");
				//window.location.href="http://localhost:8080/KissOlive/page/user/user_home.jsp"
				//document.getElementByIdx("btn").disabled=true;
				$("#submit").attr("disabled", false);
			});
			slider.init();
		})
	</script>

</body>
</html>
