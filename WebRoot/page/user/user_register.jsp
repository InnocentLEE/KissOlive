<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <title>Kiss Olive 官方商城 注册页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">  
	<meta http-equiv="keywords" content="ajax，jQuery，省市联动">
	
	 <link rel="stylesheet" href="<c:url value='/css/bootstrap.min.css'/>">
	 <link rel="stylesheet" href="<c:url value='/css/sign_login.css'/>">
	 
	 <link rel="stylesheet" href="<c:url value='/css/validform/style.css'/>">
	 <link rel="stylesheet" href="<c:url value='/css/validform/demo.css'/>">
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	

  </head>
  
  <body>
       <div class="container-fluid">
    	<div class="logo_header row">
      		<div class="ko col-xs-12 col-md-12">
    	 		<img  src="http://localhost:8080/KissOlive/img/kissolive.png" alt="">
      		</div>
    	</div>
    	<div class="row">
    	    <div class="center-block">
    			<div class="panel panel-default sign-panel ">
    				<span class="zhuce">&nbsp;&nbsp;&nbsp;注  册</span>
    		 			<form class="registerform form-horizontal " action="/KissOlive/servlet/UserServlet" method="post">
    		 			 <input type="hidden" name="method" value="regist" />
				              <div class="sum-group">
				              <div class="form-group">
				                <label for="tel" class="col-sm-3 control-label">手机号</label>
				    			   <div class="col-sm-6">
				                     <input type="text" class="inputClass form-control inputxt" id="usertel" name="usertel" placeholder="请输入手机号" value="${usertel }" />
				                    
				                   </div>
				                  <div class="col-sm-12 tip">
				                     <label class="errorClass" id="usertelError" >${errors.usertel }</label>
				                     <label class="correctClass" id="usertelCorrect"></label>
				                   </div>
				              </div>
				                <div class="form-group">
				                <label for="userpassword" class="col-sm-3 control-label">密码</label>
				    			  <div class="col-sm-6">
				                  <input type="password" value="" id="password" name="password" class="inputClass form-control inputxt" placeholder="6-18位以字母开头，含数字/字母/'_'" value="${password }" />
                        		</div>
				                  <div class="col-sm-12 tip">
				                      <label class="errorClass" id="passwordError" >${errors.password }</label>
				                     <label class="correctClass" id="passwordCorrect"></label>
				                  </div>
				                 </div>
				                <div class="form-group">
				                <label for="repassword" class="col-sm-3 control-label" >确认密码</label>
				    			  <div class="col-sm-6">
				                   <input type="password" class="inputClass form-control inputxt"  placeholder="请重复输入密码" value="" id="password2" name="password2" value="${password2 }"/>
				                 </div>
				                  <div class="col-sm-12 tip">
				                     <label class="errorClass" id="password2Error" >${errors.password2 }</label>
				                     <label class="correctClass" id="password2Correct"></label>
				                   </div>
				              </div>
				                <div class="form-group">
				                <label for="address_1" class="col-sm-3 control-label">收货地址</label>
				    			  <div class="col-sm-6" id="city">
							        <select class="prov" id="province" name="province"></select> 		
									<select class="city" id="city" name="city" disabled="disabled"></select>
									<select class="dist" id="district" name="district" disabled="disabled"></select>			
				                 </div>
				              </div>
				               <div class="form-group">
				                <label for="address_2" class="col-sm-3 control-label">详细地址</label>
				    			  <div class="col-sm-6">
				                 <input type="text" class="inputClass form-control inputxt"  id="detail" name="detail" placeholder="请输入详细地址" value="${detail }" />
				                 </div>
				                  <div class="col-sm-12 tip">
				                      <label class="errorClass" id="detailError" >${errors.detail }</label>
				                     <label class="correctClass" id="detailCorrect"></label>
				                   </div>
				              </div>
				               <div class="form-group">
				                <label for="adapter" class="col-sm-3 control-label">收件人</label>
				    			  <div class="col-sm-6">
				                 <input type="text" class="inputClass form-control inputxt"  id="name" name="name" placeholder="请输入收件人姓名" value="${name }" />
				                 </div>
				                  <div class="col-sm-12 tip">
				                    <label class="errorClass" id="nameError" >${errors.name }</label>
				                     <label class="correctClass" id="nameCorrect"></label>
				                   </div>
				              </div>
				               <div class="form-group">
				                <label for="atel" class="col-sm-3 control-label">联系方式</label>
				    			  <div class="col-sm-6">
				                 <input type="text" class="inputClass form-control inputxt" id="tel" name="tel" placeholder="请输入收件人联系方式" value="${tel }"/>
				                 </div>
				                  <div class="col-sm-12 tip">
				                      <label class="errorClass" id="telError" >${errors.tel }</label>
				                     <label class="correctClass" id="telCorrect"></label>
				                   </div>
				              </div>
				               <div class="form-group">
				                <label for="vali" class="col-sm-3 control-label">短信验证码</label>
				    			  <div class="col-sm-6">
				                 <input type="text" class="inputClass form-control code" id="verifyCode" name="verifyCode" value="${verifyCode }"/>
				                 
				                 </div>
				                  <div class="col-sm-3 valid">
				                   <input type="button"  class="btn btn-default obtain generate_code" 
				                          value="获取验证码"  onclick="sentVerifyCode();settime(this);"/>
				                 
				                  </div>
				                   <div class="col-sm-3"></div>
				                  <div class="col-sm-12  tip">
				                    <label class="errorClass" id="verifyCodeError" >${errors.verifyCode }</label>
				                     <label class="correctClass" id="verifyCodeCorrect"></label>
				                   </div>
				                   <div class="col-sm-12">
				                   <div class="focus"><span>请查收手机短信，并填写短信中的验证码（此验证码5分钟内有效）</span></div> 
				                  </div>
				              </div>
				              <div class="form-group">
				             	 <div class="col-sm-12 col-md-12" style="left:25px">
				                    <label>
						           <a href="#" class="agreement">请阅读《Kiss Olive 相关协议》</a>
						      	   </label>
							     </div>
							  </div>
							
							  <div class="form-group">
							  <div class="summit_btn col-md-12" style="text-align: right">
				              <button class="btn btn-default" type="submit" id="submit" >同意协议并注册</button>
				              </div>
				              </div>
					       </div>
			   			</form>
			   </div>
    	    </div>
    	</div>
    </div>
  
  
  
  
  
    <script type="text/javascript" src="<c:url value='/js/jquery.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/js/jquery.cityselect.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/js/valid.js'/>"></script>

    <script type="text/javascript">
      //倒计时
      var countdown=60;  
      function settime(val) {  
    	  if (countdown == 0) {  
    	    	
    	        val.removeAttribute("disabled");  
    	        val.value="获取验证码";  
    	        countdown = 60;  
    	        
    	        return false;  
    	    } else {  
    	        val.setAttribute("disabled", true);  
    	        val.value="重新发送(" + countdown + ")";  
    	        countdown--;  
    	    }  
    	    setTimeout(function() {  
    	        settime(val);  
    	    },1000);  
    	}  
    
    </script>
    <script type="text/javascript">
    $(function(){
			
				$("#city").citySelect({
					prov:"广东",
					city:"肇庆",
					dist:"端州区",
					nodata:"none"
				});
		       });		
    </script>
  </body>
</html>
