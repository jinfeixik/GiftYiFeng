<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.qst.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.struts-tags.com" prefix="s"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- <a href="payOrder.jsp">支付</a> -->
<html>

<head>
<meta name="Generator" content="www.liwuyou.com ">
<meta charset="utf-8">
<meta name="author" content="zhaoyulong">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>购物车</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/css/base.css">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/css/artDialog.css">
<script
	src="https://hm.baidu.com/hm.js?2e66c26c9d62324132291faf1862cfa5"></script>
<script src="${pageContext.request.contextPath}/js/jQuery.js"></script>
</head>

<body>
	<div id="app">
		<div class="header">
			<div class="center">
				<div class="logo icon-bgr icon-logo ani-bg fl m-t-17">
					<a href="index.jsp">礼无忧首页</a>
				</div>
				<span class="dib f22 m-l-30 m-t-28">我的购物车</span>

				<div class="cart-hd fr m-t-31 rel">
					<span class="f-b28850">${user.userName}</span> <a
						href="UserInfo.jsp" class="m-l-30">个人中心</a> <a
						href="MyOrderlist.jsp" class="m-l-30">我的订单</a>
					<!-- <a href="/history.php" class="m-l-30">浏览历史</a> -->
					<a href="logout" class="m-l-30">退出登录</a>
				</div>

			</div>
		</div>

		<div class="bg-f5f5f5 p-b-40">
			<div class="currentloc bg-f5f5f5 clear">
				<div class="center f12">
					<div class="fl">
						<a href="index.jsp">首页</a><span>/</span>购物车
					</div>
					<a
						href="http://crm2.qq.com/page/portalpage/wpa.php?uin=4006112156&amp;cref=http://www.liwuyou.com/&amp;ref=&amp;f=1&amp;ty=1&amp;ap=&amp;as="
						class="fr qqbtn tc f-666" target="_blank">QQ在线交谈</a> <span
						class="fr f-666">服务热线：18397614712&nbsp;(8:00－24:00)</span> <span
						class="fr m-r-100 f-a5937d">
					</span>
				</div>
			</div>

			<div class="shopping-cart center bg-fff tc">
				<table>
					<thead>
						<tr>
							<td width="50%" class="info tl">商品信息</td>
							<td width="10%">单价</td>
							<td width="10%">数量</td>
							<td width="10%">库存</td>
							<td width="10%">小计</td>
							<td width="10%">操作</td>
						</tr>
					</thead>
					<tbody id="cart_list">
						<template v-for="goods_list in goods_lists">
						<tr :data-rec-id="goods_list.id">
							<td class="info tl"><a :href="goods_list.url"> <img
									v-bind:src="goods_list.image" class="dib m-r-5"> </a>
								<div class="dib">
									<p>
										<a :href="goods_list.url">{{goods_list.name}}</a>
									</p>
									<p class="f12">
										<span class="f-666">礼物款式:{{goods_list.style}}<br>
										</span>
										
									</p>
								</div></td>
							<td>￥{{goods_list.price}}</td>
							<td>
								<div id="count-box" class="dib count-box"
									style="margin-left:-40px">
									<a id="a" href="javascript:void(0)"
										class="icon-bgr icon-sub dib" @click="flush($event)"></a>
								<input type="text" :value="goods_list.num" class="dib tc icon-number" :id="goods_list.id">
								<a href="javascript:void(0)" class="icon-bgr icon-add dib" @click="flush($event)"></a>
							</div>
						</td>
						<td> 有库存 </td>
						<td id="sub_total_1351735">￥{{goods_list.amount}}</td>
						<td><a href="javascript:void(0)" class="icon-bgr icon-delete" :id="goods_list.id"></a></td>
					</tr>
					</template>
				</tbody>
			</table>
			<div class="cart-btm clear f16">
				<div class="fl tl"><a href="index.jsp" class="dib m-t-5"><i class="icon-bgr icon-page-l m-r-10"></i>继续购物</a></div>
				<div class="fr tr">
					<span>共{{totalNumber}}件商品</span>
					<span class="m-l-20">合计：<b class="f18 f-d93732" id="goods-total">￥{{allAmount}}</b></span>
					<a href="writeOrder" class="btn-red-sml f14 m-l-80 ani-bg">去结账</a>
				</div>
			</div>
		</div>
	</div>

	<div class="footer">
		<div class="top">
			<div class="center clear">
				<div class="top-box1 fl">
					<i class="icon-bgr icon-logo-bt fl m-r-60 m-l-20"></i>
				</div>
				<div class="top-box2 fl">
					<img src="images/slogan.png">
				</div>
				<div class="top-box3 fl">
					<p class="fb f16">关注我们</p>
					<p class="m-t-10">
						<a class="icon-bgr icon-sina"></a>
						<a class="icon-bgr icon-tencent m-l-10"></a>
						<a class="icon-bgr icon-wechat m-l-10 rel"><span class="dn pic-wx"></span></a>
					</p>
				</div>
				<div class="top-box4 fl tc">
					<p class="f24 lh1 fb">0755-86380505</p>
					<p class="f12">周一至周日 8:00-24:00</p>
					<a  class="qqbtn lh1 m-t-10 dib">QQ在线交谈</a>
				</div>
			</div>
		</div>
		<div class="bottom clear f-e7e7e7">

			<ul class="center clear icons f18 fb">
				<li class="fl fst"><i class="icon-bgr1 icon-ft1 m-r-16"></i>30天免费退换货</li>
				<li class="fl"><i class="icon-bgr1 icon-ft2 m-r-16"></i>100%正品保证</li>
				<li class="fl"><i class="icon-bgr1 icon-ft3 m-r-16"></i>全场免运费</li>
				<li class="fl"><i class="icon-bgr1 icon-ft4 m-r-16"></i>提供礼品级包装</li>
			</ul>
			<div class="center links clear">
				<div class="fl">
					<p class="f-c3c3c3"><span class="m-r-16">© liwuyou.com</span><span><a rel="nofollow">粤ICP备10222238号-1</a></span></p>
				</div>
				<div class="fr">
					<p class="f-f5f5f5 f0">
						<a class="f-f5f5f5">关于我们</a><span>|</span>
						<a class="f-f5f5f5">帮助中心</a><span>|</span>
						<a class="f-f5f5f5">人才招聘</a><span>|</span>
						<a class="f-f5f5f5">售后服务</a><span>|</span>
						<a class="f-f5f5f5">配送与验收</a><span>|</span>
						<a class="f-f5f5f5">联系我们</a><!-- <span>|</span> -->
						<!-- <a href="javascript:void(0)" target="_blank" class="f-f5f5f5">投诉建议</a></p> -->
					</p>
				</div>
			</div>
		</div>
	</div>
	</div>
	<script src="${pageContext.request.contextPath}/js/vue.js"></script>
	<script>
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "https://hm.baidu.com/hm.js?2e66c26c9d62324132291faf1862cfa5";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>

	<script type="text/javascript">
	$(function() {
		$.ajax({
		  url: "findShoppingCar",
		  cache:false,
		  type: "POST",
		  dataType:"json",
		  success:function(data){
			 <!-- var jsonObj = eval(data); -->
			  var jsonLength=Object.keys(data.goods_list2).length;
			  data.length = jsonLength;
			  data.allAmount = 0;
			  data.totalNumber = 0;
			 <!--  //长度 总额 总数 -->
			  for(var i = 0 ; i < data.length ; i++){
			  	  data.goods_list2[i].amount = new Number(data.goods_list2[i].amount).toFixed(1);
				  data.allAmount += Number(data.goods_list2[i].amount);
				  data.totalNumber += Number(data.goods_list2[i].num);
				  data.goods_list2[i].id = Number(data.goods_list2[i].id);
				  data.goods_list2[i].url = "goods.jsp?goodsId="+data.goods_list2[i].goodsId;
			  }
			  data.allAmount = new Number(data.allAmount).toFixed(1); 
			  console.log(data.goods_list2);
			  updateCart(data,data.goods_list2,data.totalNumber,data.allAmount);
		  }
		});
		
		function updateCart(cart_info,goods_lists,totalNumber,allAmount){
			var vm = new Vue({
				el: "#app",
				data: {
					catr_info: cart_info,
					goods_lists: goods_lists,
					totalNumber:totalNumber,
					allAmount:allAmount,
					userName: "yanzu",
				},
				methods: {
					flush: function(event) {
				           //ajax();
				        }
				},
				mounted(){
				   this.$nextTick(()=>{
				     // 这里写jquery代码，遍历dom节点
				     $(function(){
				         $("#cart_list").find(".count-box").each(function(ind, ele) {
							var $ele = $(ele);
							console.log("qqqqq");
							$(ele).children(".icon-sub").on("click", function() {
								var $input = $ele.children("input"),
									count = $input.val();
								//var rec_id = $input.data('rec_id');
								var rec_id = $input.attr('id');
								if (isNumber(count)) {
									count = parseInt(count);
									if (count > 1) {
										count--;
										$input.val(count);
									}
								} else {
									count = 1;
									$input.val(count);
								}
								console.log(rec_id, count);
								flowUpdateCart(rec_id, count);
							});
							$(ele).children(".icon-add").on("click", function() {
								var $input = $ele.children("input"),
									count = $input.val();
								//var rec_id = $input.data('rec_id');
								var rec_id = $input.attr('id');
								if (isNumber(count)) {
									count = parseInt(count);
									count++;
									$input.val(count);
								} else {
									count = 1;
									$input.val(count);
								}
								console.log(rec_id, count);
								flowUpdateCart(rec_id, count);
							});
							$(ele).children('.icon-number').on('change', function() {
								var count = $(this).val();
								var rec_id = $(this).data('rec_id');
								if (isNumber(count)) {
									count = parseInt(count);
									$(this).val(count);
								} else {
									count = 1;
									$(this).val(count);
								}
								flowUpdateCart(rec_id, count);
							});
						});
						$(".slider").slider();
						$('.icon-delete').on('click', function() {
							//var rec_id = $(this).data('rec_id');
							var rec_id = $(this).attr('id');
							flowDeleteCart(rec_id);
						});
				     })
				     
				   })
				}
			});
		}
	});
	</script>

	<script src="${pageContext.request.contextPath}/js/artDialog.js"></script>
	<script src="${pageContext.request.contextPath}/js/common.js"></script> 
	<script src="${pageContext.request.contextPath}/js/cloudzoom.js"></script>
	<script src="${pageContext.request.contextPath}/js/shopping_cart.js"></script>
	<div style="display: none; position: fixed; left: 0px; top: 0px; width: 100%; height: 100%; cursor: move; opacity: 0; background: rgb(255, 255, 255);"></div>
	<div class="" style="display: none;">
		<div class="aui_outer">
			<table class="aui_border">
				<tbody>
					<tr>
						<td class="aui_nw"></td>
						<td class="aui_n"></td>
						<td class="aui_ne"></td>
					</tr>
					<tr>
						<td class="aui_w"></td>
						<td class="aui_center"></td>
						<td class="aui_e"></td>
					</tr>
					<tr>
						<td class="aui_sw"></td>
						<td class="aui_s"></td>
						<td class="aui_se" style="cursor: se-resize;"></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

</body>

</html>