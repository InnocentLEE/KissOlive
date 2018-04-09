<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta charset="utf-8" />
	<title> </title>
	<link rel="stylesheet" href="css/validform/style.css" type="text/css" media="all" />
	<link href="css/validform/demo.css" type="text/css" rel="stylesheet" />
		
  </head>
  
  <body>
    <form class="registerform" action="#" method="post"><!-- registerform -->
            <table width="100%" style="table-layout:fixed;">
                <tr>
                    <td class="need" style="width:10px;">*</td>
                    <td style="width:70px;">密码：</td>
                    <td style="width:210px;">
                        <input type="password" value="" name="password" class="inputxt" plugin="passwordStrength"  datatype="*6-18" errormsg="密码至少6个字符,最多18个字符！" />
                        <div class="passwordStrength">密码强度： <span>弱</span><span>中</span><span class="last">强</span></div>
                    </td>
                     <!--    <td>
                     <div class="Validform_checktip"></div>
                    </td>-->
                </tr>
                <tr>
                    <td class="need">*</td>
                    <td>确认密码：</td>
                    <td><input type="password" value="" name="repassword" class="inputxt" recheck="password"  datatype="*6-18" errormsg="两次输入的密码不一致！" /></td>
                    <!--    <td><div class="Validform_checktip"></div></td>-->
                </tr>
                <tr>
                    <td class="need"></td>
                    <td></td>
                    <td colspan="2" style="padding:10px 0 18px 0;">
                        <input type="submit" value="提 交" /> <input type="reset" value="重 置" />
                    </td>
                </tr>
            </table>
        </form>
    <script type="text/javascript" src="./js/jquery.js"></script>
	<script type="text/javascript" src="./js/validform/Validform_v5.3.2.js"></script>
	
	<script type="text/javascript" src="./js/validform/passwordStrength.js"></script>
	
	<script type="text/javascript">
	$(function(){
		//$(".registerform").Validform();  //就这一行代码！;
			
		$(".registerform").Validform({
			tiptype:2,
			usePlugin:{
				passwordstrength:{
					minLen:6,
					maxLen:18
				}
			}
		});
	})
	</script>
    
  </body>
</html>
