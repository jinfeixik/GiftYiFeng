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

<title>购物车</title>
<style type="text/css">
            input{
				width: 40px;
				text-align: center;
			}
			#start #money{
				border: none;
				text-align: left;
				margin-left: 2px;
			}
			li{
			    list-style: none;
				display: block;
				float: left;
				vertical-align: middle;
			}
		</style>
</style>
<script>
			window.onload = function(){
				var plus = document.getElementById("plus");
				var i = document.getElementById("text").value;
				var subtract = document.getElementById("subtract");
				var amount = document.getElementById("amount").value;
				var start =  document.getElementById("start").value;
				plus.onclick = function(){
					i++;
					document.getElementById("text").value = i; 
					document.getElementById("money").value = i*start;
				}
				subtract.onclick = function(){
					if (i>0) {
						i--;
						 document.getElementById("text").value = i; 
						document.getElementById("money").value = i*start;
					} else{
						i=0;
						 document.getElementById("text").value = i; 
						document.getElementById("money").value = i*start;
					}
				}				
			}		
		</script>

</head>

<body>
	<h1>购物车清单</h1>
	<form action="writeOrder" method="post">
		<table border="1">
			<th colspan="4">商品信息</th>
			<th>单价</th>
			<th>库存</th>
			<th>数量</th>
			<th>小计</th>
			<th>操作</th>
			<br />
			<c:forEach items="${requestScope.tbShopingCars }" var="tbShoppingCar">
				<tr>
					<td colspan="4">${tbShoppingCar.name}<br />
						样式:${tbShoppingCar.style}</td>
					<td><li>&nbsp;&nbsp;&nbsp;¥<input type="text" id="start" value="${tbShoppingCar.price}" style="width:40px" /></li></td>
					
					<c:choose>
						<c:when test="${tbShoppingCar.stock>0}">
							<td>${tbShoppingCar.stock}件</td>
						</c:when>
						<c:otherwise>
							<td>无库存</td>
						</c:otherwise>
					</c:choose>
        
					<td>
						<li><a href="addItemNumber?shoppingCarGoodsNumber=${itemNumber+1}">+</a></li>
						<li><input type="text" id="text" value="${tbShoppingCar.num}" style="width:40px"/></li>
						<li><a href="delItemNumber?shoppingCarGoodsNumber=${itemNumber-1}">-</a></li>
					</td>
					<td>
					<li>&nbsp;&nbsp;&nbsp;¥<input type="text" id="money" value="${tbShoppingCar.amount}" style="width:40px" /></li> 
					</td>
						

					<td><a
						href="deleteShoppingCar?shoppingCarId=${tbShoppingCar.id}">删除</a>
					</td>
				</tr>
</c:forEach>
			<br />
		</table>
		<br />共计 ${totalNumber}件&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		共计￥：<input id="amount" value="${allAmount}"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="submit" value="去结算"/>
	</form>
</body>
</html>
