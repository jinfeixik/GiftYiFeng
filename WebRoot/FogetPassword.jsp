<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<script type="text/javascript" src="js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/forgetPassword.css" />
</head>
<body>
	<form action="login.jsp" method="post" id="form">
	    <div class="left_td" ><a href="index.jsp"><img src="image/logo.png"  onmouseover="this.src='image/index.png';" onmouseout="this.src='image/logo.png';"/></a></div>
	    <div class="right_td">
	     <h2>重置密码</h2> 
		 <div>
			<div><input type="text" class="input-text" placeholder="请输入绑定的邮箱或手机号"name="info" id="info"/></div>
			<div><input type="text" class="input-text" placeholder="请输入验证码" name="code" id="code"> <input type="button" class="getCode" value="获取验证码" onclick="getCode()" ></div>
		 </div>
		<input type="button" class="submit" value="提交" id="submit" onclick="check1()">
		<div>
	</form>
</body>
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.js"></script>

<script type="text/javascript">
	var pCode = "*";
	var user = "";
	function getCode() {
		var info = $("#info").val();
		var len = info.length;
		if (len == 0) {
			alert("邮箱不能为空");
		}

		else {
			$.ajax({
				url : "findUserInfo",
				type : "post",
				dataType : "json",
				data : {
					phoneNumber : info
				},
				success : function(data) {
					console.log(data);
					if (data == 2 || data == 3) {
						if (data == 2) {
							$.ajax({
								url : "phoneCode",
								type : "post",
								dataType : "json",
								data : {
									phoneNumber : info
								},
								success : function(data) {
									pCode = data;
								}
							});
						} else {
							$.ajax({
								url : "email",
								type : "post",
								dataType : "json",
								data : {
									phoneNumber : info
								},
								success : function(data) {
									pCode = data;
								}
							});

						}
						alert("验证码已发送，请填写收到的验证码");
					} else {
						alert("您输入的邮箱/手机号未被绑定");
					}

				}

			});

		}
	}

	function check1() {
		var info = $("#info").val();
		var code = $("#code").val();
		var len = info.length;
		var len2 = code.length;
		if (len == 0) {
			alert("邮箱不能为空");
		} else {

			if (len2 == 0) {
				alert("请输入验证码");
			} else {
				if (code == pCode) {
					$.ajax({
						url : "updateFogetPassword",
						type : "post",
						dataType : "json",
						success : function(data) {
						}
					});
					alert("密码修改成功，你的密码被重置为：123456,登录后请及时修改密码");
					window.location.href ="login.jsp";
					
				} else {
					alert("验证码错误");
				}

			}
		}

	}
</script>
</html>
