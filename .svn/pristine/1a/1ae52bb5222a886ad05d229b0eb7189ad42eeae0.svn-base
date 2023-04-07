<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<style type="text/css">
.ui-sortable .panel-header {
	cursor: move
}

</style>
<title>礼艺坊注册</title>
<link rel="stylesheet" type="text/css" href="css/register.css">
</head>

	
<body background="image/login_background.png" style="background-repeat:no-repeat ;background-size:100% 100%;">
	 <div class="register">
	 <div class="register_context_center">
	            <div class="register_div1 controls">
					<h3 class="register_title"><b>注册帐号</b></h3>
					<h5 class="notice" >${notice}</h5>
				</div>
	    <form name="register" action="register" method="post" class="form form-horizontal responsive" id="formSubbmit">
				
			   <div class="panel-body">
				<div class="row cl">
					
						<div class="formControls col-xs-8">
							<input type="text" class="input-text" onkeyup="OnUserName()"
								placeholder="用户名，3~16个字符，字母/中文/数字/下划线" name="tbUserInfo.userName"
								id="username">
						</div>
					</div>
					<span id="msg" style="margin:10px 0px;">&nbsp;</span>
					<div class="row cl">
					
						<div class="formControls col-xs-8">
							<input type="text" class="input-text" autocomplete="off" onkeyup="Telephone()"
								placeholder="手机号，11位纯数字" name="tbUserInfo.userPhoneNumber" id="telephone">
						</div>
					</div>
					<span id="msg1" style="margin:10px 0px;">&nbsp;</span>
					<div class="row cl">
					
						<div class="formControls col-xs-8">
							<input type="text" class="input-text" placeholder="请输入邮箱" onkeyup="Email()"
								name="tbUserInfo.userEmail" id="email" autocomplete="off">
						</div>
					</div>
				    <span id="msg2" style="margin:10px 0px;">&nbsp;</span>
					<div class="row cl">
					
						<div class="formControls col-xs-8">
							<input type="password" class="input-text" autocomplete="off"
								placeholder="密码" name="tbUserInfo.userPassword" id="userPassword">
						</div>
					</div>
					<br>
					<div class="row cl">
						
						<div class="formControls col-xs-8">
							<input type="password" class="input-text" autocomplete="off" 
								placeholder="确认密码" name="rePassword" id="userRePassword"
								onkeyup="validatePass()"> 
						</div>
						<div></div>
					</div>
					<span id="tishi" style="margin:10px 0px;">&nbsp;</span>
					<div class="row cl">
						<div class="formControls col-xs-8 col-xs-offset-3">
							<input type="button" onclick="check1()"
								value="注册"  class="register_submit">已有账号？ <a href="login.jsp" class="a_register">立即登录
							</a>
						</div>
					</div>
				</form>
			</div>
			</div>
			
</div>


	<script type="text/javascript" src="lib/jquery/1.9.1/jquery.js"></script>
  
   <!-- 判断用户名是否非法 -->
	<script type="text/javascript">
	var flag1=false;
	var val1=false;
	var tel=false;
	var ema=false;
	function OnUserName(){
	 $.ajax({
	         url:"isUserRegister",
	         data:{"userName":$("#username").val()},
             type:"post",
             dataType:"json",
	    success:function(data){
	   /*  alert(data.flag); */
	        if(data.flag == "X"){
         document.getElementById("msg").innerHTML="<span style='margin:10px 0px;   color:red;'>用户名已存在</span>";
         flag1=false;
        }
        if(data.flag == "Z"){
         document.getElementById("msg").innerHTML="<span style='margin:10px 0px;  color:red;'>用户名为空</span>";
         flag1=false;
         }
         if(data.flag == "M"){
         document.getElementById("msg").innerHTML="<span style='margin:10px 0px;  color:red;'>用户名长度过短</span>";
         flag1=false;
         }
         if(data.flag == "N"){
         document.getElementById("msg").innerHTML="<span style='margin:10px 0px;  color:red;'>用户名长度过长</span>";
         flag1=false;
         }
         if(data.flag == "Y"){
           flag1=true;
           document.getElementById("msg").innerHTML="<span style='margin:10px 0px;  color:green;'>用户名可用</span>";
         }
	    },
	   /*  var len= $("#username").val().length;
        if(len==0){
         document.getElementById("msg").innerHTML="<span style='margin:10px 0px; font-size:7px;  color:red;'>用户名为空</span>";
         flag1=false;
         }
         else
         if(len<3){
         document.getElementById("msg").innerHTML="<span style='margin:10px 0px; font-size:7px;   color:red;'>用户名长度过短</span>";
         flag1=false;
         }
         else
         if(len>20){
         document.getElementById("msg").innerHTML="<span style='margin:10px 0px; font-size:7px;   color:red;'>用户名长度过长</span>";
         flag1=false;
         }else
        {
           flag1=true;
           document.getElementById("msg").innerHTML="<span style='margin:10px 0px; font-size:7px;   color:green;'>用户名格式可用</span>";
         } */
           });
       }
      
     
  
 /*   判断两次密码是否一致 */
  function validatePass() {
                  var pwd1 = document.getElementById("userPassword").value;
                  var pwd2 = document.getElementById("userRePassword").value;

                  if(pwd1 == pwd2) {
                	 document.getElementById("tishi").innerHTML="<span style='margin:10px 0px;  color:green'>两次密码相同</span>";
                     //document.getElementById("submit").disabled = false;
                     val1=true;
                  }
                  else {
                     document.getElementById("tishi").innerHTML="<span style='margin:10px 0px;   color:red;'>两次密码不相同</font>";
                     //document.getElementById("submit").disabled = true;
                     val1=false;
                  }
              };
      /*   判断手机号是否合法 */
      function Telephone() {
         var pid = $("#telephone").val();
         //正则表达式判断是否为纯数字
         if((/^[0-9]+$/.test(pid))&&pid.length==11){
          document.getElementById("msg1").innerHTML="<span style='margin:10px 0px;   color:green'>手机号格式正确</span>";
          tel=true;
         }else{
          document.getElementById("msg1").innerHTML="<span style='margin:10px 0px; color:red;'>手机号格式有误</span>";
          tel=false;
         }
     };
    /*  判断邮箱是否合法 */
     function Email() {
         var pie = $("#email").val();
         //正则表达式判断是否为纯数字
         if((/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/.test(pie))){
          document.getElementById("msg2").innerHTML="<span style='margin:10px 0px;   color:green;'>邮箱可用</span>";
          ema=true;
         }else{
          document.getElementById("msg2").innerHTML="<span style='margin:10px 0px;   color:red;'>邮箱格式有误</span>";
          ema=false;
         }        
     } ;
        
         


function check1() {
       if(flag1==true&&val1==true&&tel==true&&ema==true){
           
          $("#formSubbmit").submit();
         
       }
       }
          
</script>
</body>
</html>