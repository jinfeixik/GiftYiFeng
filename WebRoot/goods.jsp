<%@ page language="java" contentType="text/html; charset=UTF-8" import="com.qst.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.struts-tags.com" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta name="Generator" content="www.liwuyou.com ">
		<meta charset="utf-8">
		<meta name="author" content="zhaoyulong">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>商品名称</title>

		<link type="text/css" rel="stylesheet" href="css/base.css">
		<link type="text/css" rel="stylesheet" href="css/style.css">

		<link type="text/css" rel="stylesheet" href="css/artDialog.css">
		<script src="https://hm.baidu.com/hm.js?2e66c26c9d62324132291faf1862cfa5"></script>
		<script src="js/jQuery.js"></script>
	</head>

	<body>

		<div class="header">
			<div class="center">
				<div class="logo icon-bgr icon-logo ani-bg fl m-t-17"><a href="index.jsp">礼无忧首页</a></div>
				<div class="category tc fl" id="category">
					<a href="#" class="f16 lh2">礼艺坊<i class="icon-bgr icon-list m-l-5"></i></a>
					<div id="category_pop" class="category-pop tc dn" style="display: none;">
					</div>
				</div>
				<div class="nav fl f16 lh2 m-t-28 rel">
					<a class="fst" id="gift_guide">送礼导航</a>
					<a href="/category.php?id=234">创意礼物</a>
					<a href="search.jsp">新品上架</a>
					<a href="/category.php?id=127">七夕情人节</a>
				</div>

				<div class="operate fr m-t-31 rel" id="user_operate">
					<a href="user.php" id="nav_user"><i class="icon-bgr icon-user m-7 ani-bg"></i></a>
					<a href="shopping_cart.jsp" class="m-l-5" id="nav_cart"><i class="icon-bgr icon-cart ani-bg"></i><span class="cart-count"
						 id="cart_count" style="display: none;">0</span></a>
					<div class="user-box user-signin dn" id="nav_user_box">
						<i class="icon-bgr icon-operate"></i>
						<dl class="tc">
							<dt class="f-b28850">${user.userName}</dt>
							<dd class="lh2"><a href="myOrderlist">我的订单</a></dd>
							<dd class="lh2"><a href="showMyCollect">我的收藏</a></dd>
							<dd class="lh2"><a href="logout">退出登录</a></dd>
						</dl>
							 <c:if test="${user==null}">
						    <dt class="f-b28850"><a href="login.jsp">登录</a>&nbsp;/&nbsp;<a href="register.jsp">注册</a></dt>
							<dd class="lh2"><a href="login.jsp">我的订单</a></dd>
							<dd class="lh2"><a href="login.jsp">我的收藏</a></dd>
							</c:if>
							
							<c:if test="${user!=null}">
							<dt class="f-b28850">${user.userName}</dt>
							<!-- <dd class="lh2"><a href="/history.php">浏览历史</a></dd> -->
							<dd class="lh2"><a href="myOrderlist">我的订单</a></dd>
							<dd class="lh2"><a href="showMyCollect">我的收藏</a></dd>
							<dd class="lh2"><a href="logout">退出登录</a></dd>
							</c:if></dl>
					</div>
					<div class="user-box user-cart dn" id="nav_cart_box"><i class="icon-bgr icon-operate"></i>
						<p class="f12 f-999 tc p-y-20">购物车中还没有商品，赶紧选购吧！</p>
					</div>
				</div>
				<div class="search fr m-t-31">
					<input type="text" name="search" id="head-search"><a href="javascript:void(0)" class="icon-bgr icon-search m-l-5"
					 id="head-searchbtn"></a>
				</div>
			</div>
		</div>
	
		<div class="bg-f5f5f5 p-b-10">
			<div class="currentloc bg-f5f5f5 clear">
				<div class="center f12">
					<div class="fl"><a href="index.jsp">首页</a><span>/</span>檬檬的心情</div>
					<a href="http://crm2.qq.com/page/portalpage/wpa.php?uin=4006112156&amp;cref=http://www.liwuyou.com/&amp;ref=&amp;f=1&amp;ty=1&amp;ap=&amp;as="
					 class="fr qqbtn tc f-666" target="_blank">QQ在线交谈</a>
					<span class="fr f-666">服务热线：0755-86380505&nbsp;(8:00－24:00)</span>
					<span class="fr m-r-100 f-a5937d">
						<!-- 节日名称  <i class="icon-bgr icon-gift m-l-10"></i>--></span>
				</div>
			</div>
			
			<div class="goods-info bg-fff overhide">
				<div class="center clear m-t-60">
					<div class="img-sm fl m-r-60" id="goods_img_list">

						<img id="goods_img_list0" src="http://img2.liwuyou.com/images/201705/source_img/3821_P_1493880531516.JPG!pro70.jpg" class="">
						<img id="goods_img_list1" src="http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880542417.JPG!pro70.jpg" class="">
						<img id="goods_img_list2" src="http://img2.liwuyou.com/images/201705/source_img/3821_P_1493965183886.jpg!pro70.jpg" class="">
						<img id="goods_img_list3" src="http://img5.liwuyou.com/images/201705/source_img/3821_P_1493880530214.JPG!pro70.jpg" class="">
						<img id="goods_img_list4" src="http://img1.liwuyou.com/images/201705/source_img/3821_P_1493880531635.JPG!pro70.jpg" class="">
						<img id="goods_img_list5" src="http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880532692.JPG!pro70.jpg" class="">
					</div>
					<div class="img-single fl rel" id="goods_single_list">
						<span class="loading f16" style="display: none;"><img src="images/ajax-loader.gif"></span>

						<img id="goods_single_list0" src="http://img2.liwuyou.com/images/201705/source_img/3821_P_1493880531516.JPG!pro500.jpg" class="cloudzoom"
						 data-cloudzoom="zoomImage: 'http://img2.liwuyou.com/images/201705/source_img/3821_P_1493880531516.JPG'" style="display: none;">
						<img id="goods_single_list1" src="http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880542417.JPG!pro500.jpg" class="cloudzoom"
						 data-cloudzoom="zoomImage: 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880542417.JPG'" style="display: none;">
						<img id="goods_single_list2" src="http://img2.liwuyou.com/images/201705/source_img/3821_P_1493965183886.jpg!pro500.jpg" class="cloudzoom"
						 data-cloudzoom="zoomImage: 'http://img1.liwuyou.com/images/201705/source_img/3821_P_1493880529370.JPG'" style="display: none;">
						<img id="goods_single_list3" src="http://img5.liwuyou.com/images/201705/source_img/3821_P_1493880530214.JPG!pro500.jpg" class="cloudzoom"
						 data-cloudzoom="zoomImage: 'http://img5.liwuyou.com/images/201705/source_img/3821_P_1493880530214.JPG'" style="display: none;">
						<img id="goods_single_list4" src="http://img1.liwuyou.com/images/201705/source_img/3821_P_1493880531635.JPG!pro500.jpg" class="cloudzoom"
						 data-cloudzoom="zoomImage: 'http://img1.liwuyou.com/images/201705/source_img/3821_P_1493880531635.JPG'" style="display:none;">
						<img id="goods_single_list5" src="http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880532692.JPG!pro500.jpg" class="cloudzoom"
						 data-cloudzoom="zoomImage: 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880532692.JPG'" style="display: none;">


					</div>
					<div class="goods-attr fr">
						<%-- <h2 class="lh1 f30"><!-- <template>{{goods_info.name}}</template> --></h2>
						<h3 class="fn f14 m-t-20 f-666"><!-- <template>{{goods_info.discreable}}</template> --></h3>
						<div class="clear m-t-20 price-box lh1">
							<span class="fl f-d93732 f24 fb price-show" data-base-price="42.0" data-discount="100"><!-- <template>{{goods_info.price}}</template> --></span>
							<span class="fr f-666">有现货</span></div> --%>

						<div class="p-y-20">
							<div class="attr-box clear">
								<span class="fl pro-title dib f-666">礼物颜色：</span>
								<span class="fl fly" id="fl">
									<a href="javascript:void(0)" class="select_attr  dib m-r-8 s_225 focus" id="select_attr0"></a>
									<a href="javascript:void(0)" class="select_attr  dib m-r-8 s_225" id="select_attr1"></a>
									<!-- <a href="javascript:void(0)" class="select_attr  dib m-r-8 s_225" data-attr="225-78137fde54f94c7d7f33b49a7c3f11ed"
									 data-spec-key="225" data-spec="78137fde54f94c7d7f33b49a7c3f11ed">青柠檬</a>
									<a href="javascript:void(0)" class="select_attr  dib m-r-8 s_225" data-attr="225-05cff3ad4399f8ec2691fc7b0f21e6ab"
									 data-spec-key="225" data-spec="05cff3ad4399f8ec2691fc7b0f21e6ab">活力橙</a>
									<a href="javascript:void(0)" class="select_attr  dib m-r-8 s_225 focus" data-attr="225-05be0638f5a9f6338d20d9d2e1a15af3"
									 data-spec-key="225" data-spec="05be0638f5a9f6338d20d9d2e1a15af3">柠檬黄（新款）</a>
									<a href="javascript:void(0)" class="select_attr  dib m-r-8 s_225" data-attr="225-fe96dee3d576845563279075d10fa6dd"
									 data-spec-key="225" data-spec="fe96dee3d576845563279075d10fa6dd">樱花粉</a> -->
									<input type="hidden" class="attr_selected" name="attr_list[]" id="attr_225" value="225-05be0638f5a9f6338d20d9d2e1a15af3">
								</span>
							</div>
							<input type="hidden" id="goodsAttrListCount" value="1">
							<input type="hidden" class="spec_selected" name="spec_list" 
							id="spec_selected" value="25332">

						</div>
						<div class="btn-box clear m-t-20 lh1">
							<a href="javascript:void(0)" id="add_to_cart" class="btn-red-single m-r-10 fl ani-bg" style="display: block">直接购买</a>
							<a href="javascript:void(0)" id="product_diy" class="btn-red-single m-r-10 fl ani-bg" style="display: none">定制购买</a>
							<a href="javascript:void(0)" class="collect fl ani-bg "><i class="icon-bgr icon-heart"></i></a>
							<input type="hidden" id="collect" value="0">
						</div>
						<div class="btn-others">
							<a href="index.jsp"><i class="icon-bgr icon-item m-r-10"></i>查看更多商品</a>
						</div>
					</div>
				</div>
			</div>
			<div class="detail-title bg-fff tc f18" id="detail_header" style="position: static; top: 0px;">
				<div class="center rel">
					<a href="javascript:void(0)" class="f-666 focus" data-param="#discription">礼物详情</a>
					<a href="javascript:void(0)" class="f-666" data-param="#size">规格参数</a>
					<a href="javascript:void(0)" class="f-666" data-param="#comment">评价晒单 (<span class="comment_total">1</span>) </a>
					<a href="javascript:void(0)" class="f-666" data-param="#consult">咨询 (<span class="question-total">4</span>)</a>
					<span class="gds_service f12 dn" style="display: none;"><span class="lh2 f-666">需要帮助？</span><a href="http://crm2.qq.com/page/portalpage/wpa.php?uin=4006112156&amp;cref=http://www.liwuyou.com/&amp;ref=&amp;f=1&amp;ty=1&amp;ap=&amp;as="
						 class="fr qqbtn tc f-666" target="_blank">QQ在线交谈</a></span>
				</div>
			</div>
			<div class="detail-title f16 f-f5f5f5 dn" id="title_temp" style="display: none;">临时填充</div>

			<div class="detail-content bg-fff" id="discription">
				<div align="left">
					<img src="http://img1.liwuyou.com/images/upload/Image/内页官网_01.jpg" alt="">
					<img src="http://img1.liwuyou.com/images/upload/Image/未标题-1(8299).jpg" alt="">
					<img src="http://img1.liwuyou.com/images/upload/Image/内页官网_02_01.jpg" alt="">
				</div> 
					<img src="http://img1.liwuyou.com/images/upload/Image/内页官网_03.jpg" alt="">
					<img src="http://img1.liwuyou.com/images/upload/Image/快递.jpg" alt="">
					<img src="http://img1.liwuyou.com/images/upload/Image/内页官网_05.jpg" alt="">
			</div>
			<div class="goods-tips f24 tc f-808080" id="size">规格参数</div>
			<div class="goods-prop center bg-fff clear">
				<ul class="goods_property">
				
				</ul>
			</div>
			<div class="goods-tips f24 tc f-808080" id="comment">评价晒单</div>
			<div class="commen-orders center bg-fff">
				<p class="totals tc f16">
				<a href="javascript:void(0);" onclick="get_comments(1,goods_id,0,1,'',this);" class="fb">所有评价(
					<span class="comment_total">1</span>)
				</a>&nbsp;&nbsp;/&nbsp;&nbsp;
				<a href="javascript:void(0);" onclick="get_comments(1,goods_id,0,11,'',this);"
					 class="">有晒单的评价(<span class="saidan_total">0</span>)
				</a>
				</p>
				<p class="tr lh2 m-7" id="good_rate" style="display: block;">好评率 100%</p>
				<ul class="commen-list">
					
				</ul>
				<div class="pages tc p-y-40 pages-sm pages-comment" style="display: block;"><a class="prev icon-bgr icon-page-l"
					 href="javascript:;"></a><a href="javascript:get_comments(1,3821,0,1)" class="current">1</a><a class="next icon-bgr icon-page-r"
					 href="javascript:;"></a></div>
			</div>
			<div class="goods-tips f24 tc f-808080" id="consult">商品咨询</div>
			<div class="consult center bg-fff">
				<ul class="ques-box clear" id="question-list">
					<li class="fl m-t-28">
						<p class="question clear"><span class="fl overtxt">Q: 顺丰到重庆大概要多久</span><span class="fr f-9e9e9e dn">2019-06-27</span></p>
						<p class="f-996c33 overtxt">A: 您好，大概要1-2天</p>
					</li>
					<li class="fl m-t-28 m-l-80">
						<p class="question clear"><span class="fl overtxt">Q: 请问这个会不会提供USB的线</span><span class="fr f-9e9e9e dn">2018-04-21</span></p>
						<p class="f-996c33 overtxt">A: 您好，提供USB线</p>
					</li>
					<li class="fl m-t-28">
						<p class="question clear"><span class="fl overtxt">Q: USB长度有多长？</span><span class="fr f-9e9e9e dn">2018-03-05</span></p>
						<p class="f-996c33 overtxt">A: 您好，USB线1米</p>
					</li>
					<li class="fl m-t-28 m-l-80">
						<p class="question clear"><span class="fl overtxt">Q: 用的时候需要充电吗？</span><span class="fr f-9e9e9e dn">2017-12-16</span></p>
						<p class="f-996c33 overtxt">A: 您好，需要连接数据线使用</p>
					</li>
				</ul>
			</div>
			
			<div class="goods-tips f24 tc f-808080" id="guessyoulike">猜你喜欢</div>
			<div class="guessyoulike slider-box center rel">
				<div class="slider clear" style="width: 3357px;">
					<div class="item fl">
						<ul class="clear">
							<li class="tc fl m-0 p-0 bg-fff ">
								<a href="goods.jsp?goodsId=3915" target="_blank"><img src="http://img5.liwuyou.com/images/201901/source_img/3915_P_1547631885349.jpg!cat180.jpg"></a>
								<p class="m-t-5"><a href="goods.php?id=3915" target="_blank">锁爱项链</a></p>
								<p>￥158.0</p>
							</li>
							<li class="tc fl m-0 p-0 bg-fff m-l-15">
								<a href="goods.jsp?goodsId=3916" target="_blank"><img src="http://img4.liwuyou.com/images/201901/source_img/3916_P_1547692259888.jpg!cat180.jpg"></a>
								<p class="m-t-5"><a href="goods.php?id=3916" target="_blank">旋转潮戒</a></p>
								<p>￥128.0</p>
							</li>
							<li class="tc fl m-0 p-0 bg-fff m-l-15">
								<a href="goods.jsp?goodsId=1136" target="_blank"><img src="http://img1.liwuyou.com/images/201108/goods_img/1136_G_1314741412245.jpg!cat180.jpg"></a>
								<p class="m-t-5"><a href="goods.php?id=1136" target="_blank">化蝶飞-变色杯</a></p>
								<p>￥49.0</p>
							</li>
							<li class="tc fl m-0 p-0 bg-fff m-l-15">
								<a href="goods.jsp?goodsId=3819" target="_blank"><img src="http://img4.liwuyou.com/images/201705/source_img/3819_P_1494296370253.JPG!cat180.jpg"></a>
								<p class="m-t-5"><a href="goods.php?id=3819" target="_blank">漂亮的你</a></p>
								<p>￥98.0</p>
							</li>
							<li class="tc fl m-0 p-0 bg-fff m-l-15">
								<a href="goods.jsp?goodsId=3409" target="_blank"><img src="http://img3.liwuyou.com/images/201406/source_img/3409_P_1403745876387.jpg!cat180.jpg"></a>
								<p class="m-t-5"><a href="goods.php?id=3409" target="_blank">玫瑰之恋（水晶）</a></p>
								<p>￥98.0</p>
							</li>
						</ul>
					</div>
				</div>
				<div class="options tc"><i class="dib icon-circle focus"></i></div>
			</div>

			<div class="screen-image dn" id="screen_image" onselectstart="return false;">
				<div id="naturalpic" class="tc rel"><img src="images/ajax-loader.gif" class="loading"></div>
				<i class="icon-bgr icon-goods-close hander" id="evt_close"></i>
				<i class="icon-bgr icon-goods-left hander" id="evt_left"></i>
				<i class="icon-bgr icon-goods-right hander" id="evt_right"></i>
				<ul id="tablist" class="tc"></ul>
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
							<a  class="icon-bgr icon-sina"></a>
							<a  class="icon-bgr icon-tencent m-l-10"></a>
							<a class="icon-bgr icon-wechat m-l-10 rel"><span class="dn pic-wx"></span></a>
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
						<p class="f-c3c3c3"><span class="m-r-16">© liwuyou.com</span><span><a  rel="nofollow"
								 >粤ICP备10222238号-1</a></span></p>
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
			
		<script>
			var _hmt = _hmt || [];
			(function() {
				var hm = document.createElement("script");
				hm.src = "https://hm.baidu.com/hm.js?2e66c26c9d62324132291faf1862cfa5";
				var s = document.getElementsByTagName("script")[0];
				s.parentNode.insertBefore(hm, s);
			})();
		</script>
		
		<script src="js/vue.js"></script>
		<!-- 实例化vue脚本 -->
		<script type="text/javascript">
		var goodsId = window.location.search;
		goodsId = goodsId.substring(goodsId.indexOf('=')+1);
		console.log(goodsId);		
		$(document).ready(function() {
			$.ajax({
			  url: "findGoodsDetail",
			  cache: false,
			  type: "POST",
			  data:{goodsId:goodsId},
			  dataType:"json",
			  success: function(data){
				  //var jsonObj = eval(data);
				  var jsonLength=Object.keys(data.goods_info.style_info).length;
				  data.length = jsonLength;
				  data.goods_info.price = new Number(data.goods_info.price).toFixed(1); 
				  console.log(data.goods_info);
				  console.log(data.length);
				  getGoodsInfo(data.goods_info);
			  }
			});

			function getGoodsInfo(goods_info){
				//商品详情
				var temp = '<h2 class="lh1 f30">'+goods_info.name+'</h2>';
				temp += '<h3 class="fn f14 m-t-20 f-666">'+goods_info.discreable+'</h3>';
				temp += '<div class="clear m-t-20 price-box lh1"><span class="fl f-d93732 f24 fb price-show" data-base-price="42.0" data-discount="100">￥'+goods_info.price+'</span><span class="fr f-666">有现货</span></div>';
				temp += '<input type="hidden" id="price" value="'+goods_info.price+'">';
				temp += '<input type="hidden" id="goodsId" value="'+goods_info.id+'">';
				//样式
				var style = '';
				$('#select_attr0').text(goods_info.style_info[0].name);
				$('#select_attr1').text(goods_info.style_info[1].name);
				$('.fly').prepend('<input type="hidden" id="goods_style_id" value="'+goods_info.style_info[0].id+'">');
				$('.fly').prepend('<input type="hidden" id="goods_style_id0" value="'+goods_info.style_info[0].id+'">');
				$('.fly').prepend('<input type="hidden" id="goods_style_id1" value="'+goods_info.style_info[1].id+'">');
				var image_s = '',image_b = '';             
				/* for(var i = 0; i < goods_info.style_info.length * 3 ; i++)
				{
					$('#goods_img_list').find("img").attr({"src":goods_info.style_info[i].image,"class":"m-t-16"});
					console.log("goods_info.style_info[i].image = "+goods_info.style_info[i].image);
					$('#goods_single_list').find("img").attr({"src":goods_info.style_info[i].image,"style":"display: none;"});
				} */ 
				$('#goods_img_list0').attr({"src":goods_info.style_info[0].image,"class":"m-t-16"});
				$('#goods_single_list0').attr({"src":goods_info.style_info[0].image,"style":"display: none;"});
				$('#goods_img_list1').attr({"src":goods_info.style_info[1].image,"class":"m-t-16 focus"});
				$('#goods_single_list1').attr({"src":goods_info.style_info[1].image,"style":"display: inline;"});
				//规格参数
				var specifiction = '';
				for(var i = 0 ; i < goods_info.specifiction.length ; i++)
				{
					specifiction += '<li>'+goods_info.specifiction[i].info+'</li>';
				} 
				//评论
				$('.comment_total').text(goods_info.comment_info.length);
				console.log(goods_info.comment_info);
				var comment = '<li class="rel">';
				for(var i = 0 ; i < goods_info.comment_info.length ; i++)
				{
					var star = new Number(goods_info.comment_info[i].star);
					comment += '<i class="icon-bgr icon-lv1'+goods_info.comment_info[i].level+' level"></i>';
					comment += '<p class="lh2">'+goods_info.comment_info[i].name+'&nbsp;&nbsp;<span class="f-808080">'+goods_info.comment_info[i].time+'</span></p>';
					comment += '<p>'+goods_info.comment_info[i].comment+'</p><div class="stars">';
					for(var j = 0 ; j < star ; j++)
					{
						comment += '<i class="icon-bgr icon-star focus"></i>';
					}
					comment += '</li></div>';
				} 

				$('.goods-attr').prepend(temp);
				//$('.fly').prepend(style);
				$('.goods_property').prepend(specifiction);
				$('.commen-list').prepend(comment);
			}
		});
		</script>

		<div class="toolbars tc" id="back_to_top" style="display: block; opacity: 1;">
			<a href="http://crm2.qq.com/page/portalpage/wpa.php?uin=4006112156&amp;cref=http://www.liwuyou.com/&amp;ref=&amp;f=1&amp;ty=1&amp;ap=&amp;as="
			 target="_blank" class="ani-bg" id="goods_qq_chat" style="display: inline-block;"><i class="icon-bgr icon-qq"></i></a>
			<a href="javascript:void(0)" class="ani-bg m-t-10"><i class="icon-bgr icon-totop"></i></a>
		</div>
		<script>
			(function($) {
				var $window = $(window),
					$totop = $("#back_to_top");
				$window.scroll(function() {
					winTop();
				});

				function winTop() {
					if ($window.scrollTop() < 100) {
						$totop.stop().fadeOut(300);
					} else {
						$totop.stop().fadeIn(300);
					}
				}
				winTop();
			})(jQuery);
			var spec_info = eval(
				'({"24957":{"key":"225-70aae3f83c41d30861ff4c60a71b8f33\u2192_\u2192228-0c72389fe999eb3038e7e7523c454c6c","goods_attr_id":"24957","value":{"225":"\u67e0\u6aac\u9ec4","228":"\u76f4\u63a5\u8d2d\u4e70"},"price":"0.0","number":"0","format_price":"\uffe50.00","img_id":"15492"},"24959":{"key":"225-5aa47aa543211605b9e136fea3708670\u2192_\u2192228-0c72389fe999eb3038e7e7523c454c6c","goods_attr_id":"24959","value":{"225":"\u6e56\u84dd\u8272","228":"\u76f4\u63a5\u8d2d\u4e70"},"price":"0.0","number":"6","format_price":"\uffe50.00","img_id":"15479"},"24961":{"key":"225-78137fde54f94c7d7f33b49a7c3f11ed\u2192_\u2192228-0c72389fe999eb3038e7e7523c454c6c","goods_attr_id":"24961","value":{"225":"\u9752\u67e0\u6aac","228":"\u76f4\u63a5\u8d2d\u4e70"},"price":"0.0","number":"9","format_price":"\uffe50.00","img_id":"15480"},"24963":{"key":"225-05cff3ad4399f8ec2691fc7b0f21e6ab\u2192_\u2192228-0c72389fe999eb3038e7e7523c454c6c","goods_attr_id":"24963","value":{"225":"\u6d3b\u529b\u6a59","228":"\u76f4\u63a5\u8d2d\u4e70"},"price":"0.0","number":"5","format_price":"\uffe50.00","img_id":"15478"},"25331":{"key":"225-05be0638f5a9f6338d20d9d2e1a15af3\u2192_\u2192228-0c72389fe999eb3038e7e7523c454c6c","goods_attr_id":"25331","value":{"225":"\u67e0\u6aac\u9ec4\uff08\u65b0\u6b3e\uff09","228":"\u76f4\u63a5\u8d2d\u4e70"},"price":"0.0","number":"2","format_price":"\uffe50.00","img_id":"16717"},"25333":{"key":"225-fe96dee3d576845563279075d10fa6dd\u2192_\u2192228-0c72389fe999eb3038e7e7523c454c6c","goods_attr_id":"25333","value":{"225":"\u6a31\u82b1\u7c89","228":"\u76f4\u63a5\u8d2d\u4e70"},"price":"0.0","number":"1","format_price":"\uffe50.00","img_id":"16716"},"24958":{"key":"225-70aae3f83c41d30861ff4c60a71b8f33\u2192_\u2192228-53749b6449a123250ad971489b475a6c","goods_attr_id":"24958","value":{"225":"\u67e0\u6aac\u9ec4","228":"\u4e2a\u6027\u5b9a\u5236"},"price":"10.0","number":"0","format_price":"\uffe510.00","img_id":"15495"},"24960":{"key":"225-5aa47aa543211605b9e136fea3708670\u2192_\u2192228-53749b6449a123250ad971489b475a6c","goods_attr_id":"24960","value":{"225":"\u6e56\u84dd\u8272","228":"\u4e2a\u6027\u5b9a\u5236"},"price":"10.0","number":"6","format_price":"\uffe510.00","img_id":"15497"},"24962":{"key":"225-78137fde54f94c7d7f33b49a7c3f11ed\u2192_\u2192228-53749b6449a123250ad971489b475a6c","goods_attr_id":"24962","value":{"225":"\u9752\u67e0\u6aac","228":"\u4e2a\u6027\u5b9a\u5236"},"price":"10.0","number":"9","format_price":"\uffe510.00","img_id":"15496"},"24964":{"key":"225-05cff3ad4399f8ec2691fc7b0f21e6ab\u2192_\u2192228-53749b6449a123250ad971489b475a6c","goods_attr_id":"24964","value":{"225":"\u6d3b\u529b\u6a59","228":"\u4e2a\u6027\u5b9a\u5236"},"price":"10.0","number":"5","format_price":"\uffe510.00","img_id":"15494"},"25332":{"key":"225-05be0638f5a9f6338d20d9d2e1a15af3\u2192_\u2192228-53749b6449a123250ad971489b475a6c","goods_attr_id":"25332","value":{"225":"\u67e0\u6aac\u9ec4\uff08\u65b0\u6b3e\uff09","228":"\u4e2a\u6027\u5b9a\u5236"},"price":"10.0","number":"10","format_price":"\uffe510.00","img_id":"15495"},"25334":{"key":"225-fe96dee3d576845563279075d10fa6dd\u2192_\u2192228-53749b6449a123250ad971489b475a6c","goods_attr_id":"25334","value":{"225":"\u6a31\u82b1\u7c89","228":"\u4e2a\u6027\u5b9a\u5236"},"price":"10.0","number":"1","format_price":"\uffe510.00","img_id":"0"}})'
			); //规格参数
			console.log(spec_info);
			//商品序号
			var goods_id = '3821';

			var gallery = [{
				'bigpic': 'http://img2.liwuyou.com/images/201705/source_img/3821_P_1493880531516.JPG!pro500.jpg',
				'naturalpic': 'http://img2.liwuyou.com/images/201705/source_img/3821_P_1493880531516.JPG',
				'img_id': '15474',
				'smallpic': 'http://img2.liwuyou.com/images/201705/source_img/3821_P_1493880531516.JPG!pro70.jpg'
			}, {
				'bigpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880542417.JPG!pro500.jpg',
				'naturalpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880542417.JPG',
				'img_id': '15483',
				'smallpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880542417.JPG!pro70.jpg'
			}, {
				'bigpic': 'http://img1.liwuyou.com/images/201705/source_img/3821_P_1493880529370.JPG!pro500.jpg',
				'naturalpic': 'http://img1.liwuyou.com/images/201705/source_img/3821_P_1493880529370.JPG',
				'img_id': '15472',
				'smallpic': 'http://img1.liwuyou.com/images/201705/source_img/3821_P_1493880529370.JPG!pro70.jpg'
			}, {
				'bigpic': 'http://img5.liwuyou.com/images/201705/source_img/3821_P_1493880530214.JPG!pro500.jpg',
				'naturalpic': 'http://img5.liwuyou.com/images/201705/source_img/3821_P_1493880530214.JPG',
				'img_id': '15473',
				'smallpic': 'http://img5.liwuyou.com/images/201705/source_img/3821_P_1493880530214.JPG!pro70.jpg'
			}, {
				'bigpic': 'http://img1.liwuyou.com/images/201705/source_img/3821_P_1493880531635.JPG!pro500.jpg',
				'naturalpic': 'http://img1.liwuyou.com/images/201705/source_img/3821_P_1493880531635.JPG',
				'img_id': '15475',
				'smallpic': 'http://img1.liwuyou.com/images/201705/source_img/3821_P_1493880531635.JPG!pro70.jpg'
			}, {
				'bigpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880532692.JPG!pro500.jpg',
				'naturalpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880532692.JPG',
				'img_id': '15476',
				'smallpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880532692.JPG!pro70.jpg'
			}, {
				'bigpic': 'http://img1.liwuyou.com/images/201705/source_img/3821_P_1493880532225.JPG!pro500.jpg',
				'naturalpic': 'http://img1.liwuyou.com/images/201705/source_img/3821_P_1493880532225.JPG',
				'img_id': '15477',
				'smallpic': 'http://img1.liwuyou.com/images/201705/source_img/3821_P_1493880532225.JPG!pro70.jpg'
			}, {
				'bigpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880532137.JPG!pro500.jpg',
				'naturalpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880532137.JPG',
				'img_id': '15478',
				'smallpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880532137.JPG!pro70.jpg'
			}, {
				'bigpic': 'http://img2.liwuyou.com/images/201705/source_img/3821_P_1493880533331.JPG!pro500.jpg',
				'naturalpic': 'http://img2.liwuyou.com/images/201705/source_img/3821_P_1493880533331.JPG',
				'img_id': '15479',
				'smallpic': 'http://img2.liwuyou.com/images/201705/source_img/3821_P_1493880533331.JPG!pro70.jpg'
			}, {
				'bigpic': 'http://img2.liwuyou.com/images/201705/source_img/3821_P_1493880533606.JPG!pro500.jpg',
				'naturalpic': 'http://img2.liwuyou.com/images/201705/source_img/3821_P_1493880533606.JPG',
				'img_id': '15480',
				'smallpic': 'http://img2.liwuyou.com/images/201705/source_img/3821_P_1493880533606.JPG!pro70.jpg'
			}, {
				'bigpic': 'http://img5.liwuyou.com/images/201705/source_img/3821_P_1493880534229.JPG!pro500.jpg',
				'naturalpic': 'http://img5.liwuyou.com/images/201705/source_img/3821_P_1493880534229.JPG',
				'img_id': '15481',
				'smallpic': 'http://img5.liwuyou.com/images/201705/source_img/3821_P_1493880534229.JPG!pro70.jpg'
			}, {
				'bigpic': 'http://img2.liwuyou.com/images/201705/source_img/3821_P_1493880534411.JPG!pro500.jpg',
				'naturalpic': 'http://img2.liwuyou.com/images/201705/source_img/3821_P_1493880534411.JPG',
				'img_id': '15482',
				'smallpic': 'http://img2.liwuyou.com/images/201705/source_img/3821_P_1493880534411.JPG!pro70.jpg'
			}, {
				'bigpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880550227.JPG!pro500.jpg',
				'naturalpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880550227.JPG',
				'img_id': '15484',
				'smallpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880550227.JPG!pro70.jpg'
			}, {
				'bigpic': 'http://img4.liwuyou.com/images/201705/source_img/3821_P_1493880556118.JPG!pro500.jpg',
				'naturalpic': 'http://img4.liwuyou.com/images/201705/source_img/3821_P_1493880556118.JPG',
				'img_id': '15485',
				'smallpic': 'http://img4.liwuyou.com/images/201705/source_img/3821_P_1493880556118.JPG!pro70.jpg'
			}, {
				'bigpic': 'http://img4.liwuyou.com/images/201705/source_img/3821_P_1493880560008.JPG!pro500.jpg',
				'naturalpic': 'http://img4.liwuyou.com/images/201705/source_img/3821_P_1493880560008.JPG',
				'img_id': '15486',
				'smallpic': 'http://img4.liwuyou.com/images/201705/source_img/3821_P_1493880560008.JPG!pro70.jpg'
			}, {
				'bigpic': 'http://img1.liwuyou.com/images/201705/source_img/3821_P_1493880569535.JPG!pro500.jpg',
				'naturalpic': 'http://img1.liwuyou.com/images/201705/source_img/3821_P_1493880569535.JPG',
				'img_id': '15487',
				'smallpic': 'http://img1.liwuyou.com/images/201705/source_img/3821_P_1493880569535.JPG!pro70.jpg'
			}, {
				'bigpic': 'http://img2.liwuyou.com/images/201705/source_img/3821_P_1493880581986.JPG!pro500.jpg',
				'naturalpic': 'http://img2.liwuyou.com/images/201705/source_img/3821_P_1493880581986.JPG',
				'img_id': '15488',
				'smallpic': 'http://img2.liwuyou.com/images/201705/source_img/3821_P_1493880581986.JPG!pro70.jpg'
			}, {
				'bigpic': 'http://img4.liwuyou.com/images/201705/source_img/3821_P_1493880581593.JPG!pro500.jpg',
				'naturalpic': 'http://img4.liwuyou.com/images/201705/source_img/3821_P_1493880581593.JPG',
				'img_id': '15489',
				'smallpic': 'http://img4.liwuyou.com/images/201705/source_img/3821_P_1493880581593.JPG!pro70.jpg'
			}, {
				'bigpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880582732.JPG!pro500.jpg',
				'naturalpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880582732.JPG',
				'img_id': '15490',
				'smallpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880582732.JPG!pro70.jpg'
			}, {
				'bigpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880586127.JPG!pro500.jpg',
				'naturalpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880586127.JPG',
				'img_id': '15491',
				'smallpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493880586127.JPG!pro70.jpg'
			}, {
				'bigpic': 'http://img1.liwuyou.com/images/201705/source_img/3821_P_1493880590345.JPG!pro500.jpg',
				'naturalpic': 'http://img1.liwuyou.com/images/201705/source_img/3821_P_1493880590345.JPG',
				'img_id': '15492',
				'smallpic': 'http://img1.liwuyou.com/images/201705/source_img/3821_P_1493880590345.JPG!pro70.jpg'
			}, {
				'bigpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493965172157.jpg!pro500.jpg',
				'naturalpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493965172157.jpg',
				'img_id': '15493',
				'smallpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493965172157.jpg!pro70.jpg'
			}, {
				'bigpic': 'http://img4.liwuyou.com/images/201705/source_img/3821_P_1493965183953.jpg!pro500.jpg',
				'naturalpic': 'http://img4.liwuyou.com/images/201705/source_img/3821_P_1493965183953.jpg',
				'img_id': '15494',
				'smallpic': 'http://img4.liwuyou.com/images/201705/source_img/3821_P_1493965183953.jpg!pro70.jpg'
			}, {
				'bigpic': 'http://img2.liwuyou.com/images/201705/source_img/3821_P_1493965183886.jpg!pro500.jpg',
				'naturalpic': 'http://img2.liwuyou.com/images/201705/source_img/3821_P_1493965183886.jpg',
				'img_id': '15495',
				'smallpic': 'http://img2.liwuyou.com/images/201705/source_img/3821_P_1493965183886.jpg!pro70.jpg'
			}, {
				'bigpic': 'http://img2.liwuyou.com/images/201705/source_img/3821_P_1493965183166.jpg!pro500.jpg',
				'naturalpic': 'http://img2.liwuyou.com/images/201705/source_img/3821_P_1493965183166.jpg',
				'img_id': '15496',
				'smallpic': 'http://img2.liwuyou.com/images/201705/source_img/3821_P_1493965183166.jpg!pro70.jpg'
			}, {
				'bigpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493965183782.jpg!pro500.jpg',
				'naturalpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493965183782.jpg',
				'img_id': '15497',
				'smallpic': 'http://img3.liwuyou.com/images/201705/source_img/3821_P_1493965183782.jpg!pro70.jpg'
			}, {
				'bigpic': 'http://img1.liwuyou.com/images/201903/source_img/3821_P_1551674411385.jpg!pro500.jpg',
				'naturalpic': 'http://img1.liwuyou.com/images/201903/source_img/3821_P_1551674411385.jpg',
				'img_id': '16714',
				'smallpic': 'http://img1.liwuyou.com/images/201903/source_img/3821_P_1551674411385.jpg!pro70.jpg'
			}, {
				'bigpic': 'http://img2.liwuyou.com/images/201903/source_img/3821_P_1551674412301.jpg!pro500.jpg',
				'naturalpic': 'http://img2.liwuyou.com/images/201903/source_img/3821_P_1551674412301.jpg',
				'img_id': '16715',
				'smallpic': 'http://img2.liwuyou.com/images/201903/source_img/3821_P_1551674412301.jpg!pro70.jpg'
			}, {
				'bigpic': 'http://img2.liwuyou.com/images/201903/source_img/3821_P_1551674412446.jpg!pro500.jpg',
				'naturalpic': 'http://img2.liwuyou.com/images/201903/source_img/3821_P_1551674412446.jpg',
				'img_id': '16716',
				'smallpic': 'http://img2.liwuyou.com/images/201903/source_img/3821_P_1551674412446.jpg!pro70.jpg'
			}, {
				'bigpic': 'http://img1.liwuyou.com/images/201903/source_img/3821_P_1551674413930.jpg!pro500.jpg',
				'naturalpic': 'http://img1.liwuyou.com/images/201903/source_img/3821_P_1551674413930.jpg',
				'img_id': '16717',
				'smallpic': 'http://img1.liwuyou.com/images/201903/source_img/3821_P_1551674413930.jpg!pro70.jpg'
			}];
		</script>
		<script src="js/base64.js"></script>
		<script src="js/artDialog.js"></script>
		<script src="js/common.js"></script>
		<script src="js/goods.js"></script>
		<script>
			/* $.when(get_comments(1, goods_id, 0, 11, '')).done(function() {
				get_comments(1, goods_id, 0, 1, '');
			}).fail(function() {
				//alert("网络繁忙");
			});
			//晒单
			//get_comments(1,goods_id,0,11,'');
			//评论
			//get_comments(1,goods_id,0,1,'');

			get_comments(1, goods_id, 0, 3, ''); */
		</script> 

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