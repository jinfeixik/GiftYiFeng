<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
			<meta name="Generator" content="www.liwuyou.com ">
			<meta charset="utf-8">
			<meta name="author" content="zhaoyulong">
			<meta name="renderer" content="webkit">
			<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
			<title>用户中心_网</title>
			<meta name="Keywords" content="生日礼物,结婚礼物,女朋友生日礼物,男朋友生日礼物,礼物网,送男朋友什么礼物好,送女朋友什么礼物好,七夕情人节礼物,创意情人节礼物,圣诞节礼物">
			<meta name="Description" content="还在为送生日礼物，结婚礼物，圣诞节礼物发愁吗？情人节却因为拿不出一份情人节礼物而烦恼？来网挑选您的礼物吧，千款好礼，让您不再为送女朋友，送男朋友，送客户，送长辈什么礼物好而烦恼。网，专业的礼物网，您身边的送礼专家。">
			<link type="text/css" rel="stylesheet" href="css/base.css">
			<link type="text/css" rel="stylesheet" href="css/user.css">
			<link type="text/css" rel="stylesheet" href="css/idialog.css">
			<script src="https://hm.baidu.com/hm.js?2e66c26c9d62324132291faf1862cfa5"></script>
			<script src="js/jquery.js"></script>

	</head>

	<body>

		<div class="header">
			<div class="center">
				<div class="logo icon-bgr icon-logo ani-bg fl m-t-17">
					<a href="index.jsp">首页</a>
				</div>
				<div class="category tc fl" id="category">
					<a href="#" class="f16 lh2">礼物分类<i class="icon-bgr icon-list m-l-5"></i></a>
					<div id="category_pop" class="category-pop tc dn">
						<a href="category.php?id=385">少女心饰</a>
						<a href="category.php?id=386">萌萌美物</a>
						<a href="category.php?id=387">为爱停留</a>
						<a href="category.php?id=388">潮流时尚</a>
						<a href="category.php?id=389">科技达人</a>
						<a href="category.php?id=390">幸福烙印</a>
						<a href="category.php?id=391">爱情保鲜</a>
						<a class="last">&nbsp;</a>
					</div>
				</div>
				<div class="nav fl f16 lh2 m-t-28 rel">
					<a class="fst" id="gift_guide">送礼导航</a>
					<!--
        -->
					<a href="/category.php?id=234">创意礼物</a>
					<!--
        -->
					<a href="/search.php?page=1&amp;sort=goods_id&amp;order=DESC#goods_list">新品上架</a>
					<!--
        -->
					<a href="/category.php?id=127">七夕情人节</a>
					<!--
        <img src="themes/pc/images/christ_icon.png" class="dib christ-icon">--></div>

				<div class="operate fr m-t-31 rel" id="user_operate">
					<a href="UserInfo.jsp" id="nav_user"><i class="icon-bgr icon-user m-7 ani-bg"></i></a>
					<a href="shopping_cart.jsp" class="m-l-5" id="nav_cart"><i class="icon-bgr icon-cart ani-bg"></i><span class="cart-count" id="cart_count">1</span></a>
					<div class="user-box user-signin dn" id="nav_user_box">
						<i class="icon-bgr icon-operate"></i>
						<dl class="tc">
							<dt class="f-b28850">${user.userName}</dt>
							<!--<dd class="lh2"><a href="javascript:void(0)">浏览记录</a></dd>-->
							<dd class="lh2"><a href="myOrderlist">我的订单</a></dd>
							<dd class="lh2"><a href="showMyCollect">我的收藏</a></dd>
							<dd class="lh2"><a href="logout">退出登录</a></dd>
						</dl>
					</div>
					<div class="user-box user-cart dn" id="nav_cart_box"><i class="icon-bgr icon-operate"></i>
						<table class="f12">
							<tbody>
								<tr class="gds">
									<td width="25%">
										<a href="goods.php?id=3417"><img width="60px" src="http://img3.liwuyou.com/images/201710/source_img/3417_P_1508300243547.png!list115.jpg"></a>
									</td>
									<td class="overtxt" width="50%">
										<a href="goods.php?id=3417">音乐枕趴趴熊（蓝牙版）</a><br>礼物款式:蓝牙心动熊<br>个性定制:普通款（送眼罩）</td>
									<td class="tr" width="25%">X1<br>￥158.0<br>
										<a class="remove_item" data-rec-id="1351716" href="javascript:void(0)">删除</a>
									</td>
								</tr>
								<tr>
									<td colspan="3">
										<div class="clear m-t-10"><span class="fl">共计1件商品<br><b>合计：<span class="f-d93732">￥158.0</span></b>
											</span>
											<a href="flow.php" class="fr btn-red-sml ani-bg">去购物车结算</a>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="search fr m-t-31">
					<input type="text" name="search" id="head-search">
					<a href="javascript:void(0)" class="icon-bgr icon-search m-l-5" id="head-searchbtn"></a>
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
								<a href="javascript:void(0)" class="group-who">不限</a>
								<a href="javascript:void(0)" class="group-who">公主女票</a>
								<a href="javascript:void(0)" class="group-who">欧巴男票</a>
								<a href="javascript:void(0)" class="group-who">潮爸辣妈</a>
								<a href="javascript:void(0)" class="group-who">兄弟闺蜜</a>
								<a href="javascript:void(0)" class="group-who">熊孩子</a>
								<a href="javascript:void(0)" class="group-who">生意伙伴</a>
								<a href="javascript:void(0)" class="group-who">致谢恩师</a>
								<a href="javascript:void(0)" class="group-who"></a>
							</dd>
						</dl>
						<dl class="clear">
							<dt class="fl p-y-10">为啥送：</dt>
							<dd class="fl p-y-10">
								<a href="javascript:void(0)" class="group-why">不限</a>
								<a href="javascript:void(0)" class="group-why">表白撩妹</a>
								<a href="javascript:void(0)" class="group-why">过生日</a>
								<a href="javascript:void(0)" class="group-why">圣诞节</a>
								<a href="javascript:void(0)" class="group-why">情人节</a>
								<a href="javascript:void(0)" class="group-why">去求婚</a>
								<a href="javascript:void(0)" class="group-why">纪念日</a>
								<a href="javascript:void(0)" class="group-why">想送任性</a>
							</dd>
						</dl>
						<!--<dl class="clear b-b-1"><dt class="fl p-y-10">送给谁：</dt><dd class="fl p-y-10"><a href="javascript:void(0)" class="focus">女朋友／老婆</a><a href="javascript:void(0)">男朋友／老公</a><a href="javascript:void(0)">父母</a><a href="javascript:void(0)">长辈</a><a href="javascript:void(0)">客户</a><a href="javascript:void(0)">老师</a><a href="javascript:void(0)">好基友</a><a href="javascript:void(0)">闺蜜</a></dd></dl>-->
					</div>
					<!--<span class="fr f16 f-808080 m-t-17 m-r-60">全国8000个城市<br>3小时免费送达</span>-->
				</div>
				<div class="btnbox">
					<a href="javascript:void(0)" class="f12 btn-red-sml ani-bg navigation-search">搜索</a>
				</div>
			</div>
		</div>

		<div class="currentloc bg-f5f5f5 clear">
			<div class="center f12">
				<div class="fl">
					<a href="index.jsp">首页</a><span>/</span><a href="myOrderlist" >我的订单</a><span>/</span>订单详情</div>
				<a href="http://crm2.qq.com/page/portalpage/wpa.php?uin=4006112156&amp;cref=http://www.liwuyou.com/&amp;ref=&amp;f=1&amp;ty=1&amp;ap=&amp;as=" class="fr qqbtn tc f-666" target="_blank">QQ在线交谈</a>
				<span class="fr f-666">服务热线：0755-86380505&nbsp;(8:00－24:00)</span>
				<span class="fr m-r-100 f-a5937d"><!-- 节日名称  <i class="icon-bgr icon-gift m-l-10"></i>--></span>
			</div>
		</div>

		<div class="md-account clear bg-f5f5f5">
			<div class="center">
				<div class="user-left fl bg-fff">
					<p class="tc user-exit">
						<a class="icon-bgr icon-account" title="退出" href="logout"></a><br><span class="dib p-t-10">${user.userName }</span></p>
					<ul class="tree-list m-t-28">
						<li>
							<a href="myOrderlist" class="current">我的订单</a>
						</li>
						<li class="m-t-15">
							<a href="UserInfo.jsp" class="">个人信息</a>
						</li>
						<li>
							<a href="UpdatePassword.jsp" class="">修改密码</a>
						</li>
						<li>
							<a href="addressList" class="">我的地址簿</a>
						</li>
						<li class="m-t-15">
							<a href="showMyCollect" class="">我的收藏</a>
						</li>
					</ul>
				</div>
				<div class="user-right fr bg-fff">
					<div class="user-title f30 f-666">订单详情</div>
					<div class="user-content">
						<!---无订单是显示内容<p class="m-t-40 f18 f-999 tc">还没有任何订单呢</p>-->
						<br>
                        <span style="font-size: 20px">订单号:${orderDetail.orderOrderNumber}</span>
                        <br>
                        <br>
                        <br>
                        <span style="font-size: 20px">商品信息</span>
                        <br>
                        <br>
                        <ul class="order-list">
							<li class="m-b-20 b-1">						      
						         <div class="down">
									<p class="line clear rel"><span class="fl m-r-10">   <img src="${orderDetail.goodsImagePath}"></span><span class="fl goods-name overtxt m-r-10"> ${orderDetail.goodsName }*${orderDetail.orderGoodsNumber} </span><span class="fl"> ${orderDetail.goodsStyleName}</span><span class="fl" style="float:right">¥ ${orderDetail.goodsPrice}</span>
		                            </p>
		                         </div> 
							</li>
						</ul>
                        <br>          
                        <hr>
                        <br>
                        <br>      
                        <span style="font-size: 20px">收货信息</span>
                        <br>
                        <br>
                        <span>收货人：${orderDetail.tbUserAddressInfo.addressReciverName}</span><br>
                        <span>联系电话：  ${orderDetail.tbUserAddressInfo.addressReciverPhoneNumber}</span><br>
                        <span>收货地址：
                        ${orderDetail.tbUserAddressInfo.addressReciverDetailAddress}&nbsp; ${orderDetail.tbUserAddressInfo.addressReciverAddress}&nbsp; ${orderDetail.tbUserAddressInfo.addressPostalCode}
                   
					</div>
				</div>
			</div>
		</div>

<!-- 底部 -->
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
							<a  class="icon-bgr icon-sina"></a>
							<a  class="icon-bgr icon-tencent m-l-10"></a>
							<a  class="icon-bgr icon-wechat m-l-10 rel"><span class="dn pic-wx"></span></a>
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
						<p class="f-c3c3c3"><span class="m-r-16">© liwuyou.com</span><span><a rel="nofollow" >粤ICP备10222238号-1</a></span></p>
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
				sub_navigation_map: eval({
					"\u4e0d\u9650\u5723\u8bde\u8282": "\/category.php?id=42",
					"\u516c\u4e3b\u5973\u7968\u5723\u8bde\u8282": "\/category.php?id=42",
					"\u6b27\u5df4\u7537\u7968\u5723\u8bde\u8282": "\/category.php?id=48",
					"\u4e0d\u9650\u4e0d\u9650": "\/search.php",
					"\u4e0d\u9650\u8868\u767d\u64a9\u59b9": "\/category.php?id=99",
					"\u4e0d\u9650\u8fc7\u751f\u65e5": "\/category.php?id=20",
					"\u4e0d\u9650\u60c5\u4eba\u8282": "\/category.php?id=49",
					"\u4e0d\u9650\u53bb\u6c42\u5a5a": "\/category.php?id=153",
					"\u4e0d\u9650\u7eaa\u5ff5\u65e5": "\/category.php?id=96",
					"\u4e0d\u9650\u60f3\u9001\u4efb\u6027": "http:\/\/www.liwuyou.com\/",
					"\u516c\u4e3b\u5973\u7968\u4e0d\u9650": "\/category.php?id=163",
					"\u516c\u4e3b\u5973\u7968\u8868\u767d\u64a9\u59b9": "\/category.php?id=267",
					"\u516c\u4e3b\u5973\u7968\u8fc7\u751f\u65e5": "\/category.php?id=40",
					"\u516c\u4e3b\u5973\u7968\u60c5\u4eba\u8282": "\/category.php?id=119",
					"\u516c\u4e3b\u5973\u7968\u53bb\u6c42\u5a5a": "\/category.php?id=153",
					"\u516c\u4e3b\u5973\u7968\u7eaa\u5ff5\u65e5": "\/category.php?id=96",
					"\u516c\u4e3b\u5973\u7968\u60f3\u9001\u4efb\u6027": "\/category.php?id=293",
					"\u6b27\u5df4\u7537\u7968\u4e0d\u9650": "\/category.php?id=59",
					"\u6b27\u5df4\u7537\u7968\u8868\u767d\u64a9\u59b9": "\/category.php?id=87",
					"\u6b27\u5df4\u7537\u7968\u8fc7\u751f\u65e5": "\/category.php?id=82",
					"\u6b27\u5df4\u7537\u7968\u60c5\u4eba\u8282": "\/category.php?id=62",
					"\u6b27\u5df4\u7537\u7968\u53bb\u6c42\u5a5a": "",
					"\u6b27\u5df4\u7537\u7968\u7eaa\u5ff5\u65e5": "\/category.php?id=84",
					"\u6b27\u5df4\u7537\u7968\u60f3\u9001\u4efb\u6027": "\/category.php?id=59",
					"\u6f6e\u7238\u8fa3\u5988\u4e0d\u9650": "\/category.php?id=47",
					"\u6f6e\u7238\u8fa3\u5988\u8868\u767d\u64a9\u59b9": "\/category.php?id=51",
					"\u6f6e\u7238\u8fa3\u5988\u8fc7\u751f\u65e5": "\/category.php?id=79",
					"\u6f6e\u7238\u8fa3\u5988\u60c5\u4eba\u8282": "",
					"\u6f6e\u7238\u8fa3\u5988\u53bb\u6c42\u5a5a": "",
					"\u6f6e\u7238\u8fa3\u5988\u7eaa\u5ff5\u65e5": "\/category.php?id=96",
					"\u6f6e\u7238\u8fa3\u5988\u60f3\u9001\u4efb\u6027": "\/category.php?id=47",
					"\u5144\u5f1f\u95fa\u871c\u4e0d\u9650": "\/category.php?id=356",
					"\u5144\u5f1f\u95fa\u871c\u8868\u767d\u64a9\u59b9": "\/category.php?id=267",
					"\u5144\u5f1f\u95fa\u871c\u8fc7\u751f\u65e5": "\/category.php?id=77",
					"\u5144\u5f1f\u95fa\u871c\u60c5\u4eba\u8282": "",
					"\u5144\u5f1f\u95fa\u871c\u53bb\u6c42\u5a5a": "",
					"\u5144\u5f1f\u95fa\u871c\u7eaa\u5ff5\u65e5": "",
					"\u5144\u5f1f\u95fa\u871c\u60f3\u9001\u4efb\u6027": "\/category.php?id=356",
					"\u718a\u5b69\u5b50\u4e0d\u9650": "\/category.php?id=58",
					"\u718a\u5b69\u5b50\u8868\u767d\u64a9\u59b9": "",
					"\u718a\u5b69\u5b50\u8fc7\u751f\u65e5": "\/category.php?id=38",
					"\u718a\u5b69\u5b50\u60c5\u4eba\u8282": "",
					"\u718a\u5b69\u5b50\u53bb\u6c42\u5a5a": "",
					"\u718a\u5b69\u5b50\u7eaa\u5ff5\u65e5": "",
					"\u718a\u5b69\u5b50\u60f3\u9001\u4efb\u6027": "\/category.php?id=124",
					"\u751f\u610f\u4f19\u4f34\u4e0d\u9650": "\/category.php?id=54",
					"\u751f\u610f\u4f19\u4f34\u8868\u767d\u64a9\u59b9": "",
					"\u751f\u610f\u4f19\u4f34\u8fc7\u751f\u65e5": "\/category.php?id=55",
					"\u751f\u610f\u4f19\u4f34\u60c5\u4eba\u8282": "",
					"\u751f\u610f\u4f19\u4f34\u53bb\u6c42\u5a5a": "",
					"\u751f\u610f\u4f19\u4f34\u7eaa\u5ff5\u65e5": "",
					"\u751f\u610f\u4f19\u4f34\u60f3\u9001\u4efb\u6027": "\/category.php?id=78",
					"\u81f4\u8c22\u6069\u5e08\u4e0d\u9650": "\/category.php?id=150",
					"\u81f4\u8c22\u6069\u5e08\u8868\u767d\u64a9\u59b9": "",
					"\u81f4\u8c22\u6069\u5e08\u8fc7\u751f\u65e5": "\/category.php?id=150",
					"\u81f4\u8c22\u6069\u5e08\u60c5\u4eba\u8282": "",
					"\u81f4\u8c22\u6069\u5e08\u53bb\u6c42\u5a5a": "",
					"\u81f4\u8c22\u6069\u5e08\u60f3\u9001\u4efb\u6027": "\/category.php?id=150"
				})
			};
		</script>

		<script src="js/common.js"></script>

		<div class="sogoutip" style="z-index: 2147483645; visibility: hidden;"></div>
		<div class="sogoubottom" id="sougou_bottom" style="display: block;"></div>
		<div id="ext_stophi" style="z-index: 2147483647;">
			<div class="extnoticebg"></div>
		</div>
		<div id="ext_overlay" class="ext_overlayBG" style="display: none; z-index: 2147483646;"></div><iframe class="sogou_sugg_feedbackquan" frameborder="0" scrolling="no" src="http://ht.www.sogou.com/websearch/features/yun6.jsp?pid=sogou-brse-d2a452edff079ca6&amp;w=1366&amp;v=7421&amp;st=1565003613905&amp;od=208&amp;ls=1565003589574&amp;lc=&amp;lk=&amp;sd=69&amp;cd=0&amp;kd=0&amp;u=1554100362335498&amp;y=854CA8D66293C3BB06701648B01AE720&amp;query=%E7%94%A8%E6%88%B7%E4%B8%AD%E5%BF%83_%E7%A4%BC%E6%97%A0%E5%BF%A7%E7%BD%91|http%3A%2F%2Fwww.liwuyou.com%2Fuser.php%3Fact%3Dorder_list&amp;r=http%3A%2F%2Fwww.liwuyou.com%2F" style="background: transparent; border: none; display: block; height: 84px; width: 100%; z-index: 2147483645;"></iframe></body>

</html>