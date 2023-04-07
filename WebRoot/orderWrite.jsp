<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.qst.entity.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<meta name="Generator" content="www.liwuyou.com ">
<meta charset="utf-8">
<meta name="author" content="zhaoyulong">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>购物流程_礼无忧网</title>
<meta name="Keywords"
	content="生日礼物,结婚礼物,女朋友生日礼物,男朋友生日礼物,礼物网,送男朋友什么礼物好,送女朋友什么礼物好,七夕情人节礼物,创意情人节礼物,圣诞节礼物">
<meta name="Description"
	content="还在为送生日礼物，结婚礼物，圣诞节礼物发愁吗？情人节却因为拿不出一份情人节礼物而烦恼？来礼无忧网挑选您的礼物吧，千款好礼，让您不再为送女朋友，送男朋友，送客户，送长辈什么礼物好而烦恼。礼无忧网，专业的礼物网，您身边的送礼专家。">
<link type="text/css" rel="stylesheet" href="css/base.css">
<link type="text/css" rel="stylesheet" href="css/style.css">

<link type="text/css" rel="stylesheet" href="css/artDialog.css">
<script
	src="https://hm.baidu.com/hm.js?2e66c26c9d62324132291faf1862cfa5"></script>
<script src="js/jQuery.js"></script>

</head>

<body>
	<div class="header">
		<div class="center">
			<div class="logo icon-bgr icon-logo ani-bg fl m-t-17">
				<a href="index.jsp">礼无忧首页</a>
			</div>
			<span class="dib f22 m-l-30 m-t-28">我的购物车</span>

			<div class="cart-hd fr m-t-31 rel">
				<span class="f-b28850">US000061443</span> <a
					href="UserInfo.jsp" class="m-l-30">个人中心</a> <a
					href="myOrderlist" class="m-l-30">我的订单</a>
				 <a href="logout" class="m-l-30">退出登录</a>
			</div>

		</div>
	</div>

	<div class="bg-f5f5f5 p-b-10">
		<div class="currentloc bg-f5f5f5 clear">
			<div class="center f12">
				<div class="fl">
					<a href="index.jsp">首页</a><span>/</span>填写订单
				</div>
				<a
					href="http://crm2.qq.com/page/portalpage/wpa.php?uin=4006112156&amp;cref=http://www.liwuyou.com/&amp;ref=&amp;f=1&amp;ty=1&amp;ap=&amp;as="
					class="fr qqbtn tc f-666" target="_blank">QQ在线交谈</a> <span
					class="fr f-666">服务热线：0755-86380505&nbsp;(8:00－24:00)</span> <span
					class="fr m-r-100 f-a5937d"> <!-- 节日名称  <i class="icon-bgr icon-gift m-l-10"></i>-->
				</span>
			</div>
		</div>

		<form action="payOrder" method="post" name="theForm" id="theForm">
			<input type="hidden" name="step" value="done"> <input
				type="hidden" name="chk_code"
				value="9d3e8de36a91d8024bbc3ff30373c11b">
			<div class="md-order center bg-fff">
				<div class="address clear b-b-3">
					<span class="title fl f16">收货地址</span>
					<div class="cont fl" id="address_list">
						<c:forEach items="${requestScope.userAddresses}"
							var="tbUserAddressInfo">
							<c:if test="${tbUserAddressInfo.addressDefaultAddress==0}">
							<a href="javascript:void(0)" class="fl rel focus" id="123">
							 <input id="addressId"  vaule="${tbUserAddressInfo.addressId}" type="hidden">
							 
							 <p class="clear">
									<span class="fl">${tbUserAddressInfo.addressReciverName}</span><span
										class="fr f12">${tbUserAddressInfo.addressReciverPhoneNumber}</span>
								</p>
								<p class="m-t-10 f12">
									${tbUserAddressInfo.addressReciverAddress}<br>${tbUserAddressInfo.addressReciverDetailAddress}
								</p>
							 </c:if>
							 <p class="operate f12 f-b28850 p-l-10 dn" style="display:inline;opacity: 1;">
								
								
									<%--<em class="addr_edit" href="updateAddress?addressId=${tbUserAddressInfo.addressId}">
										修改
									</em>
									
									 <em class="addr_delete" data-addr-id="1001" href="delAddress?addressId=${tbUserAddressInfo.addressId}">
										删除
									</em>
									<em class="addr_edit" data-addr-id="1001" href="beDefault?addressId=${tbUserAddressInfo.addressId}">
										设为默认
									</em> --%>
								</p> 
								
							</a>
						</c:forEach>
						<!-- <a href="addAddress" class="fl addnew"><i
							class="icon-bgr icon-add1 m-r-8"></i>新增收货地址</a> -->
					</div>
				</div>
				<div class="logistics clear b-b-1 m-x-65 rel">
					<div class="mask dn"></div>
					<span class="title fl f16 lh50">配送选项</span>
					<div class="cont fl tc checkbox" id="shipping_list">
						<a href="javascript:void(0)" data-js-bind="select_shipping"
							data-shipping_id="16" data-support_cod="0" class="fl focus"
							name="tbOrderInfo.orderDistrabutionMethod" >同城配送</a> 
							<!-- <a	href="javascript:void(0)" data-js-bind="select_shipping"
							data-shipping_id="17" data-support_cod="1" class=" m-l-30 fl"
							name="tbOrderInfo.orderDistrabutionMethod">中通 </a> -->

					</div>
				</div>
				<div class="goods-list clear m-x-65 rel">
					<div class="mask dn"></div>
					<p class="clear p-b-10">
						<span class="title f16">商品清单</span> <a href="shopping_cart.jsp" class="fr"><i
							class="icon-bgr icon-arrowL m-r-10"></i>返回购物车修改</a>
					</p>
					<div class="cont tc">
						<table>
							<tbody>
								<c:forEach items="${requestScope.cars }" var="car">
									<tr data-rec-id="1351856">
										<td width="45%" class="tl"><a href="javascript:void(0)"><img
												src="http://www.peter666.xyz/uploadimgtopeter666/ImageBed/2019/08/12/1565594110699.jpg"
												class="m-r-10 dib"> <span class="dib overtxt">${car.name}</span>
										</a>
										</td>
										<td width="25%">
											<!-- <a href="javascript:void(0)">预览定制效果</a> -->
										</td>
										<td>${car.price} x ${car.number}</td>

										<c:choose>
											<c:when test="${car.stock>0}">
												<td>有库存</td>
											</c:when>
											<c:otherwise>
												<td>无库存</td>
											</c:otherwise>
										</c:choose>
										<td>${car.amount}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div class="pay-detail clear m-x-65 rel">
					<div class="mask dn"></div>

					<div class="fr">
						<table>
							<tbody>
								<tr>
									<td>商品件数：</td>
									<td class="tr" id="total_real_goods_count">${totalNumber}</td>
								</tr>
								<tr style="display: none;">
									<td>金额合计：</td>
									<td class="tr" id="total_goods_price"></td>
								</tr>
								<tr style="display: none;">
									<td>代金券抵扣：</td>
									<td class="tr" id="total_bonus"></td>
								</tr>
								<tr style="display: none;">
									<td>积分抵扣：</td>
									<td class="tr" id="total_integral"></td>
								</tr>
								<tr style="display: none;">
									<td>货到付款手续费：</td>
									<td class="tr" id="total_pay_fee"></td>
								</tr>
								<tr style="display: none;">
									<td class="last">运费：</td>
									<td class="tr last" id="total_shipping_fee"></td>
								</tr>
								<tr>
									<td class="total">应付总额：</td>
									<td class="total tr" id="total_amount">${allAmount}</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="order-btn tr rel">
					<div class="mask dn"></div>
					<a href="payOrder" class="btn-red-single submit_order">提交订单</a>
				</div>

			</div>
		</form>

	</div>

	<div class="footer">
		<div class="top">
			<div class="center clear">
				<div class="top-box1 fl">
					<i class="icon-bgr icon-logo-bt fl m-r-60 m-l-20"></i>
				</div>
				<div class="top-box2 fl">
					<img src="http://www.liwuyou.com/themes/pc/images/slogan.png">
				</div>
				<div class="top-box3 fl">
					<p class="fb f16">关注我们</p>
					<p class="m-t-10">
						<a 
							class="icon-bgr icon-sina"></a> <a
						
							class="icon-bgr icon-tencent m-l-10"></a> <a
							
							class="icon-bgr icon-wechat m-l-10 rel"><span
							class="dn pic-wx"></span> </a>
					</p>
				</div>
				<div class="top-box4 fl tc">
					<p class="f24 lh1 fb">0755-86380505</p>
					<p class="f12">周一至周日 8:00-24:00</p>
					<a
						
						class="qqbtn lh1 m-t-10 dib">QQ在线交谈</a>
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
					<p class="f-c3c3c3">
						<span class="m-r-16">© liwuyou.com</span><span><a
							 rel="nofollow"
							>粤ICP备10222238号-1</a> </span>
					</p>
				</div>
				<div class="fr">
					<p class="f-f5f5f5 f0">
						<a  class="f-f5f5f5">关于我们</a><span>|</span>
						<a  class="f-f5f5f5">帮助中心</a><span>|</span>
						<a  class="f-f5f5f5">人才招聘</a><span>|</span>
						<a  class="f-f5f5f5">售后服务</a><span>|</span>
						<a  class="f-f5f5f5">配送与验收</a><span>|</span>
						<a  class="f-f5f5f5">联系我们</a>
						<!-- <span>|</span> -->
						<!-- <a href="javascript:void(0)" target="_blank" class="f-f5f5f5">投诉建议</a></p> -->
					</p>
				</div>
			</div>
		</div>
	</div>

	<script>
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "https://hm.baidu.com/hm.js?2e66c26c9d62324132291faf1862cfa5";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>
	<script>
		var global_config = {
			sub_navigation_map : eval({
				"\u4e0d\u9650\u5723\u8bde\u8282" : "\/category.php?id=42",
				"\u516c\u4e3b\u5973\u7968\u5723\u8bde\u8282" : "\/category.php?id=42",
				"\u6b27\u5df4\u7537\u7968\u5723\u8bde\u8282" : "\/category.php?id=48",
				"\u4e0d\u9650\u4e0d\u9650" : "\/search.php",
				"\u4e0d\u9650\u8868\u767d\u64a9\u59b9" : "\/category.php?id=99",
				"\u4e0d\u9650\u8fc7\u751f\u65e5" : "\/category.php?id=20",
				"\u4e0d\u9650\u60c5\u4eba\u8282" : "\/category.php?id=49",
				"\u4e0d\u9650\u53bb\u6c42\u5a5a" : "\/category.php?id=153",
				"\u4e0d\u9650\u7eaa\u5ff5\u65e5" : "\/category.php?id=96",
				"\u4e0d\u9650\u60f3\u9001\u4efb\u6027" : "http:\/\/www.liwuyou.com\/",
				"\u516c\u4e3b\u5973\u7968\u4e0d\u9650" : "\/category.php?id=163",
				"\u516c\u4e3b\u5973\u7968\u8868\u767d\u64a9\u59b9" : "\/category.php?id=267",
				"\u516c\u4e3b\u5973\u7968\u8fc7\u751f\u65e5" : "\/category.php?id=40",
				"\u516c\u4e3b\u5973\u7968\u60c5\u4eba\u8282" : "\/category.php?id=119",
				"\u516c\u4e3b\u5973\u7968\u53bb\u6c42\u5a5a" : "\/category.php?id=153",
				"\u516c\u4e3b\u5973\u7968\u7eaa\u5ff5\u65e5" : "\/category.php?id=96",
				"\u516c\u4e3b\u5973\u7968\u60f3\u9001\u4efb\u6027" : "\/category.php?id=293",
				"\u6b27\u5df4\u7537\u7968\u4e0d\u9650" : "\/category.php?id=59",
				"\u6b27\u5df4\u7537\u7968\u8868\u767d\u64a9\u59b9" : "\/category.php?id=87",
				"\u6b27\u5df4\u7537\u7968\u8fc7\u751f\u65e5" : "\/category.php?id=82",
				"\u6b27\u5df4\u7537\u7968\u60c5\u4eba\u8282" : "\/category.php?id=62",
				"\u6b27\u5df4\u7537\u7968\u53bb\u6c42\u5a5a" : "",
				"\u6b27\u5df4\u7537\u7968\u7eaa\u5ff5\u65e5" : "\/category.php?id=84",
				"\u6b27\u5df4\u7537\u7968\u60f3\u9001\u4efb\u6027" : "\/category.php?id=59",
				"\u6f6e\u7238\u8fa3\u5988\u4e0d\u9650" : "\/category.php?id=47",
				"\u6f6e\u7238\u8fa3\u5988\u8868\u767d\u64a9\u59b9" : "\/category.php?id=51",
				"\u6f6e\u7238\u8fa3\u5988\u8fc7\u751f\u65e5" : "\/category.php?id=79",
				"\u6f6e\u7238\u8fa3\u5988\u60c5\u4eba\u8282" : "",
				"\u6f6e\u7238\u8fa3\u5988\u53bb\u6c42\u5a5a" : "",
				"\u6f6e\u7238\u8fa3\u5988\u7eaa\u5ff5\u65e5" : "\/category.php?id=96",
				"\u6f6e\u7238\u8fa3\u5988\u60f3\u9001\u4efb\u6027" : "\/category.php?id=47",
				"\u5144\u5f1f\u95fa\u871c\u4e0d\u9650" : "\/category.php?id=356",
				"\u5144\u5f1f\u95fa\u871c\u8868\u767d\u64a9\u59b9" : "\/category.php?id=267",
				"\u5144\u5f1f\u95fa\u871c\u8fc7\u751f\u65e5" : "\/category.php?id=77",
				"\u5144\u5f1f\u95fa\u871c\u60c5\u4eba\u8282" : "",
				"\u5144\u5f1f\u95fa\u871c\u53bb\u6c42\u5a5a" : "",
				"\u5144\u5f1f\u95fa\u871c\u7eaa\u5ff5\u65e5" : "",
				"\u5144\u5f1f\u95fa\u871c\u60f3\u9001\u4efb\u6027" : "\/category.php?id=356",
				"\u718a\u5b69\u5b50\u4e0d\u9650" : "\/category.php?id=58",
				"\u718a\u5b69\u5b50\u8868\u767d\u64a9\u59b9" : "",
				"\u718a\u5b69\u5b50\u8fc7\u751f\u65e5" : "\/category.php?id=38",
				"\u718a\u5b69\u5b50\u60c5\u4eba\u8282" : "",
				"\u718a\u5b69\u5b50\u53bb\u6c42\u5a5a" : "",
				"\u718a\u5b69\u5b50\u7eaa\u5ff5\u65e5" : "",
				"\u718a\u5b69\u5b50\u60f3\u9001\u4efb\u6027" : "\/category.php?id=124",
				"\u751f\u610f\u4f19\u4f34\u4e0d\u9650" : "\/category.php?id=54",
				"\u751f\u610f\u4f19\u4f34\u8868\u767d\u64a9\u59b9" : "",
				"\u751f\u610f\u4f19\u4f34\u8fc7\u751f\u65e5" : "\/category.php?id=55",
				"\u751f\u610f\u4f19\u4f34\u60c5\u4eba\u8282" : "",
				"\u751f\u610f\u4f19\u4f34\u53bb\u6c42\u5a5a" : "",
				"\u751f\u610f\u4f19\u4f34\u7eaa\u5ff5\u65e5" : "",
				"\u751f\u610f\u4f19\u4f34\u60f3\u9001\u4efb\u6027" : "\/category.php?id=78",
				"\u81f4\u8c22\u6069\u5e08\u4e0d\u9650" : "\/category.php?id=150",
				"\u81f4\u8c22\u6069\u5e08\u8868\u767d\u64a9\u59b9" : "",
				"\u81f4\u8c22\u6069\u5e08\u8fc7\u751f\u65e5" : "\/category.php?id=150",
				"\u81f4\u8c22\u6069\u5e08\u60c5\u4eba\u8282" : "",
				"\u81f4\u8c22\u6069\u5e08\u53bb\u6c42\u5a5a" : "",
				"\u81f4\u8c22\u6069\u5e08\u60f3\u9001\u4efb\u6027" : "\/category.php?id=150"
			})
		};
	</script>

	<script src="js/artDialog.js"></script>
	<script src="js/common.js"></script>
	<!-- <script src="js/order.js"></script> -->

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
	<script>
 $(function(){
 $("#address_list").find(".fl.rel").each(function(ind,ele){
  var $ele = $(ele);
  
  console.log($ele);
  var $id=$ele.find("#addressId").val();
  console.log($id);
  //$(ele).addClass("focus");
 });
}); 
</script>
</body>
</html>
