<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.qst.entity.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.struts-tags.com" prefix="s" %>
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

<title>购物车</title>

</head>

<body>
	<s:form action="test/addShopping" method="post" theme="simple" enctype="multipart/form-data">
	   商品单价：<s:textfield name=""/>
	  商品数量：<s:textfield name="shopping"/>
	</s:form>

</body>
</html>
