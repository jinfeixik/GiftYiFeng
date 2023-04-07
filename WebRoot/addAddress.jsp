
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.qst.entity.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<meta name="Generator" content="www.liwuyou.com ">
<meta charset="utf-8">
<meta name="author" content="zhaoyulong">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>用户中心_礼无忧网</title>
<meta name="Keywords"
	content="生日礼物,结婚礼物,女朋友生日礼物,男朋友生日礼物,礼物网,送男朋友什么礼物好,送女朋友什么礼物好,七夕情人节礼物,创意情人节礼物,圣诞节礼物">
<meta name="Description"
	content="还在为送生日礼物，结婚礼物，圣诞节礼物发愁吗？情人节却因为拿不出一份情人节礼物而烦恼？来礼无忧网挑选您的礼物吧，千款好礼，让您不再为送女朋友，送男朋友，送客户，送长辈什么礼物好而烦恼。礼无忧网，专业的礼物网，您身边的送礼专家。">
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="${pageContext.request.contextPath}/js/distpicker.data.js"></script>
<script src="${pageContext.request.contextPath}/js/distpicker.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script>
<script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>



</head>
<body>

	<form action="addReciverAddress" method="post">
		<div align="center">
			<h3 style="margin-right:380px;margin-top:30px">新增收货地址</h3>
			<a class="aui_close" href="javascript:window.history.back();"> <img
				alt="" src="image/del.png" style="margin-left:480px"> </a> <br />
			<br />
			<div>
				<label>收&nbsp;货&nbsp;人&nbsp;</label> <input type="text"
					name="tbUserAddressInfo.addressReciverName" placeholder="请输入姓名"
					value="" style="width:450px;height:38px" class="inp">
			</div>
			<br /> <br />
			<div>
				<lable>联系电话</lable>
				<input type="text"
					name="tbUserAddressInfo.addressReciverPhoneNumber"
					style="width:450px;height:38px" placeholder="请输入手机号" value=""
					class="inp">
			</div>
			<br /> <br />
		
			<div>
				<div data-toggle="distpicker">
					<div class="form-group">
					  
						<select class="form-control" name="province" style="width:130px;display:inline-block" id="province1" class="inp"></select> 
						<select class="form-control"  name="city" style="width:130px;display:inline-block" id="city1" class="inp"></select> 
						<select class="form-control"  name="area" style="width:130px;display:inline-block"
							id="district1" class="inp"></select>
					</div>
				</div>
			</div>
			<br />
			
			<div>
				<lable>详细地址</lable>
				<input type="text"
					name="tbUserAddressInfo.addressReciverDetailAddress"
					style="width:450px;height:70px" placeholder="详细地址"
					class="address-area">
			</div>
<br /><br />
			<div style="margin-right:-40px">
				<input type="checkbox"
					name="tbUserAddressInfo.addressDefaultAddress" value="10"
					class="m-r-5">设为默认</label> <input type="submit"
					class="btn btn-primary-lg"
					style="color:white;margin-left:250px;background:#d93732;width:130px;height:45px"
					value="新增">
			</div>
		</div>
	</form>
</body>
</html>