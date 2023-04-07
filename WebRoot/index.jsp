<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.qst.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.struts-tags.com" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

<head>

<title>礼艺坊</title>

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
					<a href="index.jsp">礼艺坊首页</a>
				</div>
				<div class="category tc fl" id="category">
					<a href="#" class="f16 lh2">礼物分类<i
						class="icon-bgr icon-list m-l-5"></i>
					</a>
					<div id="category_pop" class="category-pop tc dn">
						<a href="category.php?id=385">少女心饰</a> <a
							href="category.php?id=386">萌萌美物</a> <a href="category.php?id=387">为爱停留</a>
						<a href="category.php?id=388">潮流时尚</a> <a
							href="category.php?id=389">科技达人</a> <a href="category.php?id=390">幸福烙印</a>
						<a href="category.php?id=391">爱情保鲜</a> <a class="last">&nbsp;</a>
					</div>
				</div>
				<div class="nav fl f16 lh2 m-t-28 rel">
					<a class="fst" id="gift_guide">送礼导航</a> <a
						href="/category.php?id=234">创意礼物</a> <a href="search.jsp">新品上架</a>
					<a href="/category.php?id=127">七夕情人节</a>
				</div>

				<div class="operate fr m-t-31 rel" id="user_operate">
					<c:if test="${user==null}">
						<a href="login.jsp" id="nav_user"><i
							class="icon-bgr icon-user m-7 ani-bg"></i>
						</a>
					</c:if>
					<c:if test="${user!=null}">
						<a href="UserInfo.jsp" id="nav_user"><i
							class="icon-bgr icon-user m-7 ani-bg"></i>
						</a>
					</c:if>
					<c:if test="${user==null}">
						<a href="login.jsp" class="m-l-5" id="nav_cart"><i
							class="icon-bgr icon-cart ani-bg"></i> </a>
					</c:if>
					<c:if test="${user!=null}">
						<a href="shopping_cart.jsp" class="m-l-5" id="nav_cart"><i
							class="icon-bgr icon-cart ani-bg"></i> <span class="cart-count"
							id="cart_count">4</span> </a>
					</c:if>
					<div class="user-box user-signin dn" id="nav_user_box">
						<i class="icon-bgr icon-operate"></i>
						<dl class="tc">
							<c:if test="${user==null}">
								<dt class="f-b28850">
									<a href="login.jsp">登录</a>&nbsp;/&nbsp;<a href="register.jsp">注册</a>
								</dt>
								<dd class="lh2">
									<a href="login.jsp">我的订单</a>
								</dd>
								<dd class="lh2">
									<a href="login.jsp">我的收藏</a>
								</dd>
							</c:if>

							<c:if test="${user!=null}">
								<dt class="f-b28850">${user.userName}</dt>
								<!-- <dd class="lh2"><a href="/history.php">浏览历史</a></dd> -->
								<dd class="lh2">
									<a href="myOrderlist">我的订单</a>
								</dd>
								<dd class="lh2">
									<a href="showMyCollect">我的收藏</a>
								</dd>
								<dd class="lh2">
									<a href="logout">退出登录</a>
								</dd>
							</c:if>
						</dl>
					</div>

					<c:if test="${user!=null}">
						<div class="user-box user-cart dn" id="nav_cart_box">
							<i class="icon-bgr icon-operate"></i>
							<table class="f12">
								<tbody>
									<tr class="gds">
										<td width="25%"><a href="goods.jsp?goodsId=3888"><img
												width="60px"
												src="http://img3.liwuyou.com/images/201811/source_img/3888_P_1541475290472.jpg!list115.jpg">
										</a>
										</td>
										<td class="overtxt" width="50%"><a
											href="goods.jsp?goodsId=3888">BeeFo小唱机</a><br>礼物颜色:奶酪白<br>个性定制:直接购买</td>
										<td class="tr" width="25%">X3<br>￥399.0<br>
										<a class="remove_item" data-rec-id="1351642"
											href="javascript:void(0)">删除</a>
										</td>
									</tr>
									<tr class="gds">
										<td width="25%"><a href="goods.jsp?goodsId=3942"><img
												width="60px"
												src="http://img3.liwuyou.com/images/201904/source_img/3942_P_1555062175232.jpg!list115.jpg">
										</a>
										</td>
										<td class="overtxt" width="50%"><a
											href="goods.jsp?goodsId=3942">鹿角小风扇</a><br>礼物颜色:小恶魔款</td>
										<td class="tr" width="25%">X1<br>￥69.0<br>
										<a class="remove_item" data-rec-id="1351709"
											href="javascript:void(0)">删除</a>
										</td>
									</tr>
									<tr class="gds">
										<td width="25%"><a href="goods.jsp?goodsId=3942"><img
												width="60px"
												src="http://img3.liwuyou.com/images/201904/source_img/3942_P_1555062175232.jpg!list115.jpg">
										</a>
										</td>
										<td class="overtxt" width="50%"><a
											href="goods.jsp?goodsId=3942">鹿角小风扇</a><br>礼物颜色:小麋鹿款</td>
										<td class="tr" width="25%">X1<br>￥69.0<br>
										<a class="remove_item" data-rec-id="1351710"
											href="javascript:void(0)">删除</a>
										</td>
									</tr>
									<tr class="gds">
										<td width="25%"><a href="goods.jsp?goodsId=3942"><img
												width="60px"
												src="http://img3.liwuyou.com/images/201904/source_img/3942_P_1555062175232.jpg!list115.jpg">
										</a>
										</td>
										<td class="overtxt" width="50%"><a
											href="goods.jsp?goodsId=3942">鹿角小风扇</a><br>礼物颜色:小白熊款</td>
										<td class="tr" width="25%">X1<br>￥69.0<br>
										<a class="remove_item" data-rec-id="1351711"
											href="javascript:void(0)">删除</a>
										</td>
									</tr>
									<tr>
										<td colspan="3">
											<div class="clear m-t-10">
												<span class="fl">共计4件商品<br>
												<b>合计：<span class="f-d93732">￥1404.0</span>
												</b>
												</span><a href="shopping_cart.jsp" class="fr btn-red-sml ani-bg">去购物车结算</a>
											</div></td>
									</tr>
								</tbody>
							</table>
						</div>
					</c:if>
				</div>
				<div class="search fr m-t-31">
					<input type="text" name="search" id="head-search"><a
						href="javascript:void(0)" class="icon-bgr icon-search m-l-5"
						id="head-searchbtn"></a>
				</div>
			</div>
		</div>
		<div class="query-box query-box-nav dn" id="gift_guide_box">
			<div class="center">
				<div class="clear">
					<div class="query fl f12">
						<dl class="clear b-b-1">
							<dt class="fl p-y-10">送给谁：</dt>
							<dd class="fl p-y-10">
								<a href="javascript:void(0)" class="group-who">不限</a> <a
									href="javascript:void(0)" class="group-who">公主女票</a> <a
									href="javascript:void(0)" class="group-who">欧巴男票</a> <a
									href="javascript:void(0)" class="group-who">潮爸辣妈</a> <a
									href="javascript:void(0)" class="group-who">兄弟闺蜜</a> <a
									href="javascript:void(0)" class="group-who">熊孩子</a> <a
									href="javascript:void(0)" class="group-who">生意伙伴</a> <a
									href="javascript:void(0)" class="group-who">致谢恩师</a> <a
									href="javascript:void(0)" class="group-who"></a>
							</dd>
						</dl>
						<dl class="clear">
							<dt class="fl p-y-10">为啥送：</dt>
							<dd class="fl p-y-10">
								<a href="javascript:void(0)" class="group-why">不限</a> <a
									href="javascript:void(0)" class="group-why">表白撩妹</a> <a
									href="javascript:void(0)" class="group-why">过生日</a> <a
									href="javascript:void(0)" class="group-why">圣诞节</a> <a
									href="javascript:void(0)" class="group-why">情人节</a> <a
									href="javascript:void(0)" class="group-why">去求婚</a> <a
									href="javascript:void(0)" class="group-why">纪念日</a> <a
									href="javascript:void(0)" class="group-why">想送任性</a>
							</dd>
						</dl>
						<!--<dl class="clear b-b-1"><dt class="fl p-y-10">送给谁：</dt><dd class="fl p-y-10"><a href="javascript:void(0)" class="focus">女朋友／老婆</a><a href="javascript:void(0)">男朋友／老公</a><a href="javascript:void(0)">父母</a><a href="javascript:void(0)">长辈</a><a href="javascript:void(0)">客户</a><a href="javascript:void(0)">老师</a><a href="javascript:void(0)">好基友</a><a href="javascript:void(0)">闺蜜</a></dd></dl>-->
					</div>
					<!--<span class="fr f16 f-808080 m-t-17 m-r-60">全国8000个城市<br>3小时免费送达</span>-->
				</div>
				<div class="btnbox">
					<a href="javascript:void(0)"
						class="f12 btn-red-sml ani-bg navigation-search">搜索</a>
				</div>
			</div>
		</div>

		<div class="index-banner slider-box rel">
			<div class="slider clear rel">
				<div class="item" style="z-index:3;">

					<a href="/goods.jsp?goodsId=3889"
						style=" background:url(http://img1.liwuyou.com/data/afficheimg/20190124tvnesh.jpg) center;"></a>

					<a href="/goods.jsp?id=3889"
						style=" background:url(http://img1.liwuyou.com/data/afficheimg/20190124tvnesh.jpg) center;"></a>

				</div>
				<div class="item">
					<a href="/goods.jsp?goodsId=3888"
						style=" background:url(http://img1.liwuyou.com/data/afficheimg/20190124jhxdek.jpg) center;"></a>
				</div>
				<div class="item">
					<a href="/goods.jsp?goodsId=3781"
						style=" background:url(http://img1.liwuyou.com/data/afficheimg/20190124zdevcc.jpg) center;"></a>
				</div>
				<div class="item">
					<a href="/goods.jsp?goodsId=3417"
						style=" background:url(http://img1.liwuyou.com/data/afficheimg/20190124bfbolz.jpg) center;"></a>
				</div>
				<div class="item">
					<a href="/goods.jsp?goodsId=3752"
						style=" background:url(http://img1.liwuyou.com/data/afficheimg/20190124iwnmkm.jpg) center;"></a>
				</div>

			</div>
			<div class="options tc">
				<i class="dib icon-circle focus"></i> <i class="dib icon-circle "></i>
				<i class="dib icon-circle "></i> <i class="dib icon-circle "></i> <i
					class="dib icon-circle "></i>

			</div>
		</div>
		<div class="services">
			<ul class="center clear">
				<li class="fl f18"><i class="icon-bgr1 icon-top1 m-r-16"></i>专属定制服务</li>
				<li class="fl f18"><i class="icon-bgr1 icon-top2 m-r-16"></i>激光镭雕工艺</li>
				<li class="fl f18"><i class="icon-bgr1 icon-top3 m-r-16"></i>免费代写贺卡</li>
				<li class="fl f18"><i class="icon-bgr1 icon-top4 m-r-16"></i>精心专业设计</li>
			</ul>
		</div>

		<div class="index-list bg-f5f5f5">
			<div class="center f0"></div>
			<div class="center f0">
				<!-- vue模板渲染 -->
				<template v-for="(item,index) in category"> <template
					v-if="index >= 1"> <span style="line-height:1.5;">
				</span> <a href="#" target="_blank" class="dib m-l-13"
					style="line-height:1.5;"></a> </template> <a v-bind:href="item.href"
					target="_blank" style="line-height:1.5;"> <img
					v-bind:src="item.src"> </a> </template>

				<p>
					<br>
				</p>
				<div class="center f0">
					<a href="#" target="_blank" class="dib"></a>
				</div>
			</div>
			<div class="center m-t-60">
				<!--<div class="index-title f20 rel lh1">新品推荐<img src="images/title_bg.png" /></div>-->
				<div class="second-title index-child">
					<h3 class="f-666 f20 fn dib fl" style="background-color:#f5f5f5;">新品推荐</h3>
					<a class="fr f16" style="background-color:#f5f5f5;"
						href="/search.php?page=1&amp;sort=goods_id&amp;order=DESC#goods_list">查看更多</a>
				</div>
				<div class="index-content f0 m-t-20">
					<p>
						<a class="dib" href="#" target="_blank"></a> <a
							href="http://www.liwuyou.com/search.php?object_cat=0&amp;choice_cat=0&amp;prices=&amp;keywords=&amp;environment_cat=0&amp;display=grid&amp;brand=&amp;price_min=&amp;price_max=&amp;filter_attr=&amp;page=1&amp;sort=goods_id&amp;order=DESC#goods_list"
							target="_blank"></a> <a
							href="/category.php?id=234&amp;object_cat=0&amp;environment_cat=0&amp;choice_cat=0&amp;min=0&amp;max=0&amp;page=1&amp;sort=goods_id"
							target="_blank"></a> <a
							href="/search.php?page=1&amp;sort=goods_id&amp;order=DESC#goods_list"
							target="_blank"> <img
							src="http://www.liwuyou.com/themes/pc/images/index20160917/index_15.jpg">
						</a> <a class="dib m-l-13" href="#" target="_blank"></a> <a
							href="goods.jsp?goodsId=25" target="_blank"> <img width="290"
							height="250" alt=""
							src="http://img5.liwuyou.com/images/upload/Image/鹿角小风扇.jpg">
						</a> <a class="dib m-l-13" href="#" target="_blank"></a> <a
							href="goods.jsp?goodsId=26" target="_blank"> <img
							src="http://img2.liwuyou.com/images/upload/Image/天使之爱.jpg"
							width="290" height="250" alt=""> </a> <a class="dib m-l-12"
							href="#" target="_blank"></a> <a href="goods.jsp?goodsId=27"
							target="_blank"> <img
							src="http://img1.liwuyou.com/images/upload/Image/290-250小唱机.jpg"
							width="290" height="250" alt=""> </a>
					</p>
					<p class="m-t-15">
						<a class="dib" href="#" target="_blank"></a> <a
							href="goods.jsp?goodsId=4" target="_blank"> <img
							src="http://img1.liwuyou.com/images/upload/Image/爱恋云端.jpg"
							width="450" height="250" alt=""> </a> <a class="dib m-l-12"
							href="#" target="_blank"></a> <a href="goods.jsp?goodsId=28"
							target="_blank"> <img
							src="http://img1.liwuyou.com/images/upload/Image/290-250一鹿有你项链.jpg"
							width="290" height="250" alt=""> </a> <a class="dib m-l-12"
							href="#" target="_blank"></a> <a href="goods.jsp?goodsId=6"
							target="_blank"> <img
							src="http://img1.liwuyou.com/images/upload/Image/435-250(8095).jpg"
							width="435" height="250" alt=""> </a>
					</p>
				</div>
			</div>
			<div class="center m-t-60">
				<!--<div class="index-title f20 rel lh1">生日礼物<img src="images/title_bg.png" /></div>-->
				<div class="second-title index-child">
					<h3 class="f-666 f20 fn dib fl" style="background-color:#f5f5f5;">生日礼物</h3>
					<a class="fr f16" style="background-color:#f5f5f5;" href="">查看更多</a>
				</div>
				<div class="index-content clear m-t-28">
					<div class="topic fl">
						<a href="#" target="_blank"></a><a href="goods.jsp?goodsId=7"
							target="_blank"></a><a href="goods.jsp?goodsId=7" target="_blank"><img
							src="http://img1.liwuyou.com/images/upload/Image/趴趴熊(3620).jpg"
							alt="" width="230" height="567">
						</a>
					</div>
					<ul class="fr">
						<li class="tc fl m-l-12"><a href="#" target="_blank"></a><a
							href="goods.jsp?goodsId=29" target="_blank"><img alt=""
								src="http://img1.liwuyou.com/images/upload/Image/birthday01.jpg"
								width="160" height="160">
						</a>
							<p class="lh1 m-t-20">
								<a href="goods.jsp?goodsId=29" target="_blank">酷玩音乐台灯</a>
							</p>
							<p class="lh1 m-t-15">￥49.0</p></li>
						<li class="tc fl m-l-12"><a href="#" target="_blank"></a><a
							href="goods.jsp?goodsId=9" target="_blank"><img alt=""
								src="http://img1.liwuyou.com/images/upload/Image/9.jpg"
								width="160" height="160">
						</a>

							<p class="lh1 m-t-20">
								<a href="goods.jsp?goodsId=9" target="_blank">爱的旋律</a><span
									id="__kindeditor_bookmark_end_27__" style="display:none;"></span>
							</p>
							<p class="lh1 m-t-15">￥88.0</p></li>
						<li class="tc fl m-l-12"><a href="#" target="_blank"></a><a
							href="goods.jsp?goodsId=10" target="_blank"><img alt=""
								src="http://img1.liwuyou.com/images/upload/Image/2.jpg"
								width="160" height="160">
						</a>
							<p class="lh1 m-t-20">
								<a href="goods.jsp?goodsId=10" target="_blank">花儿朵朵开</a>
							</p>
							<p class="lh1 m-t-15">￥138.0</p></li>
						<li class="tc fl m-l-12"><a href="#" target="_blank"></a><a
							href="goods.jsp?goodsId=11" target="_blank"></a><a
							href="goods.jsp?goodsId=11" target="_blank"></a><a
							href="goods.jsp?goodsId=11" target="_blank"><img
								src="http://img2.liwuyou.com/images/upload/Image/四叶草之恋.jpg"
								width="160" height="160" alt="">
						</a>

							<p class="lh1 m-t-20">
								<a href="goods.jsp?goodsId=11" target="_blank"><span
									style="white-space:nowrap;">四叶草之恋</span>
								</a>
							</p>
							<p class="lh1 m-t-15">￥128.0</p></li>
						<li class="tc fl m-t-15 m-l-12"><a
							href="goods.jsp?goodsId=12" target="_blank"></a><a
							href="goods.jsp?goodsId=12" target="_blank"></a><a
							href="goods.jsp?goodsId=12" target="_blank"><img
								src="http://img1.liwuyou.com/images/upload/Image/旋转潮戒.jpg"
								width="160" height="160" alt="">
						</a><br>
							<p class="lh1 m-t-20">
								<a href="goods.jsp?goodsId=12" target="_blank">旋转潮戒</a>
							</p>
							<p class="lh1 m-t-15">￥128.0</p></li>

						<li class="tc fl m-l-12 fl m-t-15"><a href="#"
							target="_blank"></a><a href="goods.jsp?goodsId=13"
							target="_blank"></a><a href="goods.jsp?goodsId=13"
							target="_blank"><img
								src="http://img1.liwuyou.com/images/upload/Image/紧箍咒对戒.jpg"
								width="160" height="160" alt="">
						</a>

							<p class="lh1 m-t-20">
								<span style="white-space:nowrap;"><a
									href="goods.jsp?goodsId=13" target="_blank">紧箍咒对戒</a>
								</span>
							</p>
							<p class="lh1 m-t-15">￥128.0</p></li>
						<li class="tc fl m-l-12 fl m-t-15"><a href="#"
							target="_blank"></a><a href="goods.jsp?goodsId=14"
							target="_blank"></a><a href="goods.jsp?goodsId=14"
							target="_blank"><img alt=""
								src="http://img1.liwuyou.com/images/upload/Image/5.jpg"
								width="160" height="160">
						</a>
							<p class="lh1 m-t-20">
								<a href="goods.jsp?goodsId=14" target="_blank">神烦狗</a><span
									id="__kindeditor_bookmark_end_389__" style="display:none;"></span>
							</p>
							<p class="lh1 m-t-15">￥98.0</p></li>

						<li class="tc fl m-l-12 fl m-t-15"><a href="#"
							target="_blank"></a><a href="goods.jsp?goodsId=15"
							target="_blank"></a><a href="goods.jsp?goodsId=15"
							target="_blank"><img
								src="http://img1.liwuyou.com/images/upload/Image/招财猪(1344).jpg"
								width="160" height="160" alt="">
						</a>
							<p class="lh1 m-t-20">
								<a href="goods.jsp?goodsId=15" target="_blank">猪年吉祥</a><span
									id="__kindeditor_bookmark_end_472__" style="display:none;"></span>
							</p>
							<p class="lh1 m-t-15">￥128.0</p></li>
					</ul>
				</div>
			</div>
			<div class="center m-t-60">
				<!--<div class="index-title f20 rel lh1">创意礼物<img src="images/title_bg.png" /></div>-->
				<div class="second-title index-child">
					<h3 class="f-666 f20 fn dib fl" style="background-color:#F5F5F5;">创意礼物</h3>
					<a class="fr f16" style="background-color:#F5F5F5;"
						href="http://www.liwuyou.com/category.php?id=234">查看更多</a>
				</div>
				<div class="index-content clear m-t-28">

					<div class="topic fl">
						<a href="#" target="_blank"></a><a href="goods.jsp?goodsId=24"
							target="_blank"></a><a href="goods.jsp?goodsId=24"
							target="_blank"></a><a href="goods.jsp?goodsId=24"
							target="_blank"></a><a href="goods.jsp?goodsId=24"
							target="_blank"><img
							src="http://img1.liwuyou.com/images/upload/Image/230-567停机坪(5243).jpg"
							width="230" height="567" alt="">
						</a>
					</div>
					<ul class="fr">

						<li class="tc fl m-l-12"><a href="#" target="_blank"></a><a
							href="goods.jsp?goodsId=16" target="_blank"><img
								src="http://img1.liwuyou.com/images/upload/Image/车载净化器.jpg"
								width="160" height="160" alt="">
						</a>
							<p class="lh1 m-t-20">车载净化器&nbsp;</p>
							<p class="lh1 m-t-15">￥169.0</p></li>

						<li class="tc fl m-l-12"><a href="#" target="_blank"></a><a
							href="goods.jsp?goodsId=17" target="_blank"><img
								src="http://img1.liwuyou.com/images/upload/Image/猴子(5310).jpg"
								width="160" height="160" alt="">
						</a>
							<p class="lh1 m-t-20">
								<a href="goods.jsp?goodsId=17" target="_blank">猴爱你</a>
							</p>
							<p class="lh1 m-t-15">￥148.0</p></li>
						<li class="tc fl m-l-12"><a href="#" target="_blank"></a><a
							href="goods.jsp?goodsId=18" target="_blank"></a><a
							href="/goods.php?id=3895" target="_blank"></a><a
							href="goods.jsp?goodsId=18" target="_blank"><img
								src="http://img5.liwuyou.com/images/upload/Image/爱的陪伴.jpg"
								width="160" height="160" alt="">
						</a>
							<p class="lh1 m-t-20">
								<a href="goods.jsp?goodsId=18" target="_blank">爱的陪伴</a>
							</p>
							<p class="lh1 m-t-15">￥158.0</p></li>
						<li class="tc fl m-l-12"><a href="#" target="_blank"></a><a
							href="goods.jsp?goodsId=19" target="_blank"><img
								src="http://img1.liwuyou.com/images/upload/Image/加湿器(1146).jpg"
								width="160" height="160" alt="">
						</a>
							<p class="lh1 m-t-20">生命能量</p>
							<p class="lh1 m-t-15">￥198.0</p></li>

						<li class="tc fl m-l-12 m-t-15"><a href="#" target="_blank"></a><a
							href="goods.jsp?goodsId=20" target="_blank"></a><a
							href="goods.jsp?goodsId=20" target="_blank"></a><a
							href="goods.jsp?goodsId=20" target="_blank"><img
								src="http://img3.liwuyou.com/images/upload/Image/高清日光镜.jpg"
								width="160" height="160" alt="">
						</a>
							<p class="lh1 m-t-20">
								<a href="goods.jsp?goodsId=20" target="_blank">高清日光镜</a>
							</p>
							<p class="lh1 m-t-15">￥269.0</p></li>

						<li class="tc fl m-l-12 fl m-t-15"><a href="#"
							target="_blank"></a><a href="goods.jsp?goodsId=21"
							target="_blank"><img
								src="http://img1.liwuyou.com/images/upload/Image/柠檬补水仪.jpg"
								width="160" height="160" alt="">
						</a>
							<p class="lh1 m-t-20">
								檬檬的心情<span id="__kindeditor_bookmark_end_47__"
									style="display:none;"></span><span
									id="__kindeditor_bookmark_end_53__" style="display:none;"></span>
							</p>
							<p class="lh1 m-t-15">￥42.0</p></li>

						<li class="tc fl m-l-12 fl m-t-15"><a
							href="goods.jsp?goodsId=22" target="_blank"></a><a
							href="goods.jsp?goodsId=22" target="_blank"></a><a
							href="goods.jsp?goodsId=22" target="_blank"></a><a
							href="goods.jsp?goodsId=22" target="_blank"><img
								src="http://img3.liwuyou.com/images/upload/Image/洁面仪.jpg"
								width="160" height="160" alt="">
						</a>
							<p class="lh1 m-t-20">
								<a href="goods.jsp?goodsId=22" target="_blank"><span
									style="white-space:nowrap;">小棉花洁面仪</span>
								</a>
							</p>
							<p class="lh1 m-t-15">
								<a href="goods.jsp?goodsId=22" target="_blank">￥429.0</a>
							</p></li>

						<li class="tc fl m-l-12 fl m-t-15"><a
							href="goods.jsp?goodsId=23" target="_blank"></a><a
							href="goods.jsp?goodsId=23" target="_blank"></a><a
							href="goods.jsp?goodsId=23" target="_blank"><img
								src="http://img2.liwuyou.com/images/upload/Image/液晶手绘板.jpg"
								width="160" height="160" alt="">
						</a><a href="#" target="_blank"><span
								id="__kindeditor_bookmark_end_3__" style="display:none;"></span>
						</a>
							<p class="lh1 m-t-20">
								<a href="goods.jsp?goodsId=23" target="_blank"><span
									style="white-space:nowrap;">小黄鸭液晶手绘板</span>
								</a><a href="#" target="_blank"><span
									id="__kindeditor_bookmark_end_35__" style="display:none;"></span>
								</a>
							</p>
							<p class="lh1 m-t-15">￥109.0</p></li>
					</ul>
				</div>
			</div>
			<!-- 热评商品 -->
			<div class="center m-t-60" bdsfid="319">
				<div class="index-title f20 rel lh1" bdsfid="320">
					热评商品<img src="http://www.liwuyou.com/themes/pc/images/title_bg.png"
						bdsfid="321">
				</div>
				<div class="index-content clear m-t-28 hot-list" bdsfid="322">
					<ul bdsfid="323">
						<li class="fl" bdsfid="324">
							<p class="tc" bdsfid="325">
								<a href="goods.jsp?goodsId=27" bdsfid="326"></a><a
									href="goods.jsp?goodsId=27" bdsfid="327"></a><a
									href="goods.jsp?goodsId=27" target="_blank" bdsfid="328"></a><a
									href="goods.jsp?goodsId=27" target="_blank"><img
									src="http://img1.liwuyou.com/images/upload/Image/热评1(4758).jpg"
									width="260" height="188" alt="">
								</a>
							</p>
							<div class="goods-cont" bdsfid="330">
								<p class="lh1 m-t-20 title lh1_5" bdsfid="331">
									<a href="goods.jsp?goodsId=27" target="_blank" bdsfid="332">这个小唱机是被朋友强烈安利的。拿到手好惊喜啊，复古黑胶唱机造型，做工超精致的，音质也不错。</a>
								</p>
								<p class="lh1 m-t-20 f12 f-9e9e9e" bdsfid="333">来自于 honugs
									的评价</p>
								<p class="lh1 m-t-10" bdsfid="334">小唱机&nbsp;&nbsp;/&nbsp;&nbsp;￥399.0</p>
							</div></li>
						<li class="fl m-l-13" bdsfid="335">
							<p class="tc" bdsfid="336">
								<a href="goods.jsp?goodsId=24" bdsfid="337"></a><a
									href="goods.jsp?goodsId=24" target="_blank" bdsfid="338"></a><a
									href="goodsjsp?goodsId=24" target="_blank" bdsfid="339"></a><a
									href="goods.jsp?goodsId=24" target="_blank"><img
									src="http://img1.liwuyou.com/images/upload/Image/热评2(9119).jpg"
									width="260" height="188" alt="">
								</a>
							</p>
							<div class="goods-cont" bdsfid="341">
								<p class="lh1 m-t-20 title lh1_5" bdsfid="342">
									<a href="goods.jsp?goodsId=24" target="_blank" bdsfid="343">杯子有质感
										，停机坪给手机充电， 恒温45℃左右，随时都有温水喝，加热也很快，而且底部不会烫，很安全。</a>
								</p>
								<p class="lh1 m-t-20 f12 f-9e9e9e" bdsfid="344">来自于
									104888***51@qq.com 的评价</p>
								<p class="lh1 m-t-10" bdsfid="345">停机坪
									&nbsp;&nbsp;/&nbsp;&nbsp;￥399.0</p>
							</div></li>
						<li class="fl m-l-13" bdsfid="346">
							<p class="tc">
								<a href="goods.jsp?goodsId=8"
									target="_blank"></a><a
									href="goods.jsp?goodsId=8" target="_blank"><img
									src="http://img1.liwuyou.com/images/upload/Image/热评3(5996).jpg"
									width="260" height="188" alt="">
								</a>
							</p>
							<div class="goods-cont">
								<p class="lh1 m-t-20 title lh1_5">
									<a href="goods.jsp?goodsId=8">蛮漂亮的，特别紫红色很迷人，还有蓝牙功能，好评</a><a
										href="goods.jsp?goodsId=8">。</a>
								</p>
								<p class="lh1 m-t-20 f12 f-9e9e9e">来自于 3373***78@qq.com 的评价</p>
								<p class="lh1 m-t-10">
									<span style="white-space:nowrap;">酷玩台灯</span>&nbsp;&nbsp;/&nbsp;&nbsp;￥49.0
								</p>
							</div></li>
						<li class="fl m-l-13" bdsfid="358">
							<p class="tc" style="white-space:normal;">
								<a href="goods.jsp?goodsId=21"><img
									src="http://img1.liwuyou.com/images/upload/Image/加湿器(6427).jpg"
									alt="">
								</a>
							</p>
							<div class="goods-cont" style="white-space:normal;">
								<p class="lh1 m-t-20 title lh1_5">
									<a href="goods.jsp?goodsId=21"><span>真心喜欢，颜值高，不用加湿功能的时候，
											还可以当做小夜灯，亮度正好，好赞。</span>
									</a>
								</p>
								<p class="lh1 m-t-20 f12 f-9e9e9e">来自雨 5712***55@qq.com 的评价</p>
								<p class="lh1 m-t-10">
									<span style="white-space:nowrap;"><span
										style="white-space:nowrap;">檬檬的心情</span>
									</span>&nbsp;&nbsp;/&nbsp;&nbsp;￥42.0
								</p>
							</div></li>
					</ul>
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
						<img src="http://www.liwuyou.com/themes/pc/images/slogan.png">
					</div>
					<div class="top-box3 fl">
						<p class="fb f16">关注我们</p>
						<p class="m-t-10">
							<a class="icon-bgr icon-sina"></a> <a
								class="icon-bgr icon-tencent m-l-10"></a> <a
								class="icon-bgr icon-wechat m-l-10 rel"><span
								class="dn pic-wx"></span>
							</a>
						</p>
					</div>
					<div class="top-box4 fl tc">
						<p class="f24 lh1 fb">0755-86380505</p>
						<p class="f12">周一至周日 8:00-24:00</p>
						<a class="qqbtn lh1 m-t-10 dib">QQ在线交谈</a>
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
								rel="nofollow">粤ICP备10222238号-1</a>
							</span>
						</p>
					</div>
					<div class="fr">
						<p class="f-f5f5f5 f0">
							<a class="f-f5f5f5">关于我们</a><span>|</span> <a class="f-f5f5f5">帮助中心</a><span>|</span>
							<a class="f-f5f5f5">人才招聘</a><span>|</span> <a class="f-f5f5f5">售后服务</a><span>|</span>
							<a class="f-f5f5f5">配送与验收</a><span>|</span> <a class="f-f5f5f5">联系我们</a>
							<!-- <span>|</span> -->
							<!-- <a href="javascript:void(0)" target="_blank" class="f-f5f5f5">投诉建议</a></p> -->
						</p>
					</div>
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

	<div class="toolbars tc" id="back_to_top" style="display: none;">
		<a
			href="http://crm2.qq.com/page/portalpage/wpa.php?uin=4006112156&amp;cref=http://www.liwuyou.com/&amp;ref=&amp;f=1&amp;ty=1&amp;ap=&amp;as="
			target="_blank" class="ani-bg"><i class="icon-bgr icon-qq"></i>
		</a> <a href="javascript:void(0)" class="ani-bg m-t-10"><i
			class="icon-bgr icon-totop"></i>
		</a>
	</div>

	<script src="js/vue.js"></script>
	<!-- 实例化vue脚本 -->
	<script type="text/javascript">
		var vm = new Vue({
			el : "#app",
			data : {
				category : [ {
					href : "category",
					src : "images/index_03.jpg"
				}, {
					href : "category",
					src : "images/index_05.jpg"
				}, {
					href : "category",
					src : "images/index_07.jpg"
				}, {
					href : "category",
					src : "images/index_09.jpg"
				} ],
				userName : "yanzu",
			},
			methods : {

			}
		});
	</script>

	<script src="js/common.js"></script>
	<script type="text/javascript">
		//jQuery.noConflict(); //将变量$的控制权让渡
		(function($) {
			var $window = $(window), $totop = $("#back_to_top");
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
			;
			winTop();
		})(jQuery);
		$(".slider").slider({
			animate_type : "fade"
		});
	</script>

</body>
</html>
