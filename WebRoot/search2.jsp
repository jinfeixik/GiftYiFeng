<%@ page language="java" contentType="text/html; charset=UTF-8" import="com.qst.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.struts-tags.com" prefix="s"%>


<!DOCTYPE html>
<html> 
	<head>
		<title> 送什么礼物好?选最好的礼物网站-礼艺坊网 </title>

		<link type="text/css" rel="stylesheet" href="css/base.css">
		<link type="text/css" rel="stylesheet" href="css/style.css">

		<link type="text/css" rel="stylesheet" href="css/artDialog.css">
		<script src="https://hm.baidu.com/hm.js?2e66c26c9d62324132291faf1862cfa5"></script>
		<script src="js/jQuery.js"></script>
	</head>

	<body>
	<div id="app">
		<div class="header">
			<div class="center">
				<div class="logo icon-bgr icon-logo ani-bg fl m-t-17">
					<a href="index.jsp">礼艺坊首页</a>
				</div>
				<div class="category tc fl" id="category">
					<a href="index.jsp" class="f16 lh2">礼艺坊<i class="icon-bgr icon-list m-l-5"></i></a>
					<div id="category_pop" class="category-pop tc dn">
						<!-- <a class="last">&nbsp;</a> -->
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
					<a href="shopping_cart.jsp" class="m-l-5" id="nav_cart"><i class="icon-bgr icon-cart ani-bg"></i><span class="cart-count" id="cart_count" style="display: none;">0</span></a>
					<div class="user-box user-signin dn" id="nav_user_box">
						<i class="icon-bgr icon-operate"></i>
						<dl class="tc">
							<dt class="f-b28850">US000061435</dt>
							<dd class="lh2">
								<a href="/user.php?act=order_list">我的订单</a>
							</dd>
							<dd class="lh2">
								<a href="/user.php?act=collection_list">我的收藏</a>
							</dd>
							<dd class="lh2">
								<a href="/user.php?act=logout">退出登录</a>
							</dd>
						</dl>
					</div>
					<div class="user-box user-cart dn" id="nav_cart_box"><i class="icon-bgr icon-operate"></i>
						<p class="f12 f-999 tc p-y-20">购物车中还没有商品，赶紧选购吧！</p>
					</div>
				</div>
				<div class="search fr m-t-31">
					<input type="text" name="search" id="message">
					<a href="javascript:void(0)" class="icon-bgr icon-search m-l-5" id="head-searchbtn"></a>
				</div>
			</div>
		</div>

		<div class="currentloc bg-f5f5f5 clear">
			<div class="center f12">
				<div class="fl">
					<a href="/">首页</a><span>/</span>
					<a href="/search.php">礼物搜索</a><span>/</span></div>
				<a href="http://crm2.qq.com/page/portalpage/wpa.php?uin=4006112156&amp;cref=http://www.liwuyou.com/&amp;ref=&amp;f=1&amp;ty=1&amp;ap=&amp;as=" class="fr qqbtn tc f-666" target="_blank">QQ在线交谈</a>
				<span class="fr">服务热线：0755-86380505&nbsp;(8:00－24:00)</span>
				<span class="fr m-r-100 f-a5937d"></span>
			</div>
		</div>
		<div class="query-box query-box-list">
			<div class="center">
				<div class="clear">
					<div class="query fl rel">
					
						<dl class="clear">
							<dt class="fl tc">场合&nbsp;:</dt>
							<dd class="fl link-list">
							<template v-for="(item, index) in occation" >
								<a class="focus" v-if="index==0">全部</a>
								<a href="javascript:void(0);" @click="occationmethod($event)" id="occation">{{item}}</a>
							</template>
							</dd>
						</dl>
						<dl class="clear b-t-1">
							<dt class="fl tc">对象&nbsp;:</dt>
							<dd class="fl link-list" >
							<template v-for="(item, index) in object">
								<a class="focus" v-if="index==0">全部</a>
								<a href="javascript:void(0);" @click="objectmethod($event)" id="object">{{item}}</a>
							</template>
							</dd>
						</dl>
						<dl class="clear b-t-1">
							<dt class="fl tc">分类&nbsp;:</dt>
							<dd class="fl link-list" >
							<template v-for="(item, index) in classify">
								<a class="focus" v-if="index == 0">全部</a>
								<a href="javascript:void(0);" @click="classifymethod($event)" id="classify">{{item}}</a>
							</template>
							</dd>
							
						</dl>
						<dl class="clear b-t-1">
							<dt class="fl tc">价格&nbsp;:</dt>
							<dd class="fl link-list" >
							<template v-for="(item, index) in price">
								<a class="focus" v-if="index == 0" >全部</a>
								<a href="javascript:void(0);"  @click="pricemethod($event)">{{item}}</a>
								<input type="hidden" id="price" :value="index"/>
							</template>
							</dd>
						</dl>
					</div>

				</div>
			</div>
		</div>

		<div class="cat-box">
			<div class="center">
				<div class="cat-title clear p-y-20">
					<div class="sorts fl">

						<a href="search.php?object_cat=0&amp=0" class="dib">畅销</a><span class="dib f-d4d4c7">｜</span>
						<a href="search.php?object_cat=0&amp=0" class="dib focus">最新</a><span class="dib f-d4d4c7">｜</span>
						<a href="search.php?object_cat=0&amp=0" class="dib">价格由低到高</a><span class="dib f-d4d4c7">｜</span>
						<a href="search.php?object_cat=0&amp=0" class="dib">价格由高到低</a>

					</div>
				</div>
				<ul class="cat-list clear">
					<template v-for="(goods, index) in goods_lists">
					
						<li class="fl p-30 m-t-20 ani-bd-shadow rel" v-if="index == 0 || (index % 4) == 0">
							<i class="icon-bgr icon-bgcircle" v-if="goods.time < 3">新品</i>
							<a :href="goods.url" target="_blank" class="img-link">
								<img :src="goods.image" class="normalpic focus">
							</a>
							<p class="overtxt m-t-20 cat-name">
								<a :href="goods.url" target="_blank" :title="goods.name">{{goods.name}}</a>
							</p>
							<p>{{goods.price}}</p>
							<p class="f12 f-666 tr m-t-20 clear com-diy"><span class="fr">无人评价</span></p>
						</li>
						<li class="fl p-30 m-l-20 m-t-20 ani-bd-shadow rel" v-else>
							<i class="icon-bgr icon-bgcircle">新品</i>
							<a :href="goods.url" target="_blank" class="img-link">
								<img :src="goods.image" class="normalpic focus">
							</a>
							<p class="overtxt m-t-20 cat-name">
								<a :href="goods.url" target="_blank" :title="goods.name">{{goods.name}}</a>
							</p>
							<p>{{goods.price}}</p>
							<p class="f12 f-666 tr m-t-20 clear com-diy"><span class="fr">无人评价</span></p>
						</li>
					</template>
				</ul>

				<div class="pages tc p-y-40">
					<a class="prev icon-bgr icon-page-l" href=""></a>
					<a href="search.php?keywords=&amp;environment_cat=0&amp;object_cat=0&amp;choice_cat=0&amp;brand=0&amp;sort=goods_id&amp;order=DESC&amp;min_price=&amp;max_price=&amp;action=&amp;intro=&amp;goods_type=0&amp;sc_ds=0&amp;outstock=0&amp;page=1" class="current">1</a>
					<a href="search.php?keywords=&amp;environment_cat=0&amp;object_cat=0&amp;choice_cat=0&amp;brand=0&amp;sort=goods_id&amp;order=DESC&amp;min_price=&amp;max_price=&amp;action=&amp;intro=&amp;goods_type=0&amp;sc_ds=0&amp;outstock=0&amp;page=2" class="">2</a>
					<a href="search.php?keywords=&amp;environment_cat=0&amp;object_cat=0&amp;choice_cat=0&amp;brand=0&amp;sort=goods_id&amp;order=DESC&amp;min_price=&amp;max_price=&amp;action=&amp;intro=&amp;goods_type=0&amp;sc_ds=0&amp;outstock=0&amp;page=3" class="">3</a>
					<a href="search.php?keywords=&amp;environment_cat=0&amp;object_cat=0&amp;choice_cat=0&amp;brand=0&amp;sort=goods_id&amp;order=DESC&amp;min_price=&amp;max_price=&amp;action=&amp;intro=&amp;goods_type=0&amp;sc_ds=0&amp;outstock=0&amp;page=4" class="">4</a>
					<a href="search.php?keywords=&amp;environment_cat=0&amp;object_cat=0&amp;choice_cat=0&amp;brand=0&amp;sort=goods_id&amp;order=DESC&amp;min_price=&amp;max_price=&amp;action=&amp;intro=&amp;goods_type=0&amp;sc_ds=0&amp;outstock=0&amp;page=5" class="">5</a>
					<a href="search.php?keywords=&amp;environment_cat=0&amp;object_cat=0&amp;choice_cat=0&amp;brand=0&amp;sort=goods_id&amp;order=DESC&amp;min_price=&amp;max_price=&amp;action=&amp;intro=&amp;goods_type=0&amp;sc_ds=0&amp;outstock=0&amp;page=6" class="">6</a>
					<a class="next icon-bgr icon-page-r" href="search.php?keywords=&amp;environment_cat=0&amp;object_cat=0&amp;choice_cat=0&amp;brand=0&amp;sort=goods_id&amp;order=DESC&amp;min_price=&amp;max_price=&amp;action=&amp;intro=&amp;goods_type=0&amp;sc_ds=0&amp;outstock=0&amp;page=2"></a>
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
						<a>QQ在线交谈</a>
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
		var message="";
			var classify = "";
			var price = 0;
			var occation = "";
			var object = "";
		$(function() {
				var vm = new Vue({
					el: "#app",
					data: {
					
						goods_lists:[],
						userName: "yanzu",
						classify:["创意","浪漫", "养生", "定制", "星座", "音乐", "吃货", "爱车", "烟民", "办公", "潮人", "运动", "家居", "酒茶", "实用"],
						object:["朋友", "长辈", "晚辈", "男生", "女生", "老公", "老婆", "兄弟", "姐妹", "闺蜜", "父亲", "母亲", "男生", "女士", "老师"],
						occation:["生日", "表白", "纪念日", "结婚", "订婚", "本命年", "乔迁", "晋升", "分别", "毕业", "答谢", "祝贺", "致歉", "约会"], 
						price:["100以下", "100-200", "300-500", "500以下"],
					},
					methods: {
					
						
					
						objectmethod: function(event) {
				           //获取点击对象      
				           var el = event.currentTarget;
				           object=el.innerHTML;
				           console.log("当前对象的内容："+el.innerHTML);
				           el.className = 'focus';
				            ajax();
				        }, 
				        classifymethod: function(event) {
				           //获取点击对象      
				           var el = event.currentTarget;
				           classify=el.innerHTML;
				           console.log("当前类别的内容："+el.innerHTML);
				           el.className = 'focus';
				           ajax();
				        }, 
				        occationmethod: function(event) {
				           //获取点击对象      
				           var el = event.currentTarget;
				           occation=el.innerHTML;
				           console.log("当前场合的内容："+el.innerHTML);
				           el.className = 'focus';
				            ajax();
				        }, 
				        pricemethod: function(event) {
				           //获取点击对象      
				          	var e = event
				           var el = event.currentTarget;
				           price = el.innerHTML;
				           console.log("当前价格的内容："+el.innerHTML);
				           e.setAttribute("style-len", event.style.length)
				           el.currentTarget.className = 'focus';
				           ajax();
				        }
					},
					created:function(){
						$.ajax({
						  url: "findGoodsType?time=" + new Date().getTime(),
						  cache: true,
						  type: "POST",
						  data:{message:message, occation:occation, price:0, object:object, classify:classify},
						  dataType:"json",
						  success: function(data){
							  //var jsonObj = eval(data);
							  var jsonLength=Object.keys(data.search_list).length;
							  data.length = jsonLength;
							   console.log("data长度 " +data.length);
							  //处理数据
							  for(var i = 0 ; i < data.length ; i++){
							  	  data.search_list[i].price = new Number(data.search_list[i].price).toFixed(1);
								  data.search_list[i].url = "goods.jsp?goodsId="+data.search_list[i].id;
							  }
							  console.log("search_list长度 " +data.search_list);
							  vm.goods_lists = data.search_list;
							  
							  //getSearchList(data.search_list);
						  }
						});
					},
					mounted:function(){
						
					}
				});
				ajax(); 
			});
			/* message = $("#message").val();
			price = $("#price").val();
			classify = $("#classify").val();
			occation = $("#occation").val();
			object = $("#object").val(); */
			
			console.log(message +"输入框");
			console.log(occation +"场合");
			console.log(price +"价格");
			console.log(object +"对象");
			console.log(classify +"分类");
			
			function ajax(){
			alert("heheda");
				$.ajax({
				  url: "findGoodsType?time=" + new Date().getTime(),
				  cache: true,
				  type: "POST",
				  data:{message:message, occation:occation, price:0, object:object, classify:classify},
				  dataType:"json",
				  success: function(data){
				  alert("搜索进行中" +data.length);
					  //var jsonObj = eval(data);
					  var jsonLength=Object.keys(data.search_list).length;
					  data.length = jsonLength;
					   console.log(data.length);
					  //处理数据
					  for(var i = 0 ; i < data.length ; i++){
					  	  data.search_list[i].price = new Number(data.search_list[i].price).toFixed(1);
						  data.search_list[i].url = "goods.jsp?goodsId="+data.search_list[i].id;
					  }
					  console.log(data.search_list);
					  vm.goods_lists = data.search_list;
					  
					  //getSearchList(data.search_list);
				  }
				});
				alert("完成");
			}
			
	
			
			
		</script>
		
		<div class="toolbars tc" id="back_to_top" style="display: none; opacity: 1;">
			<a href="http://crm2.qq.com/page/portalpage/wpa.php?uin=4006112156&amp;cref=http://www.liwuyou.com/&amp;ref=&amp;f=1&amp;ty=1&amp;ap=&amp;as=" target="_blank" class="ani-bg"><i class="icon-bgr icon-qq"></i></a>
			<a href="javascript:void(0)" class="ani-bg m-t-10"><i class="icon-bgr icon-totop"></i></a>
		</div>
		<script src="js/common.js"></script>
		<%-- <script src="js/imgtabs.js"></script> --%>
		<script>
			(function($) {
				var $window = $(window),
					$totop = $("#back_to_top");
				$window.scroll(function() {
					winTop();
				});

				function winTop() {
					if($window.scrollTop() < 100) {
						$totop.stop().fadeOut(300);
					} else {
						$totop.stop().fadeIn(300);
					}
				}
				winTop();
				/*search页过滤条件*/
				$(".query-box-list").find("dl").each(function(ind, ele) {
					var width = 0,
						height = 28,
						$ele = $(ele);
					$ele.find(".link-list").find("a").each(function(index, element) {
						width += $(element).outerWidth(true);
					});
					var lines = Math.ceil(width / 1020);
					if(lines > 1) {
						$ele.find(".more").on("click", function() {
							if($(this).hasClass("hidden")) {
								$ele.find(".link-list").animate({
									height: lines * height + "px"
								}, 300);
								$(this).removeClass("hidden").find(".icon-arrowD").removeClass("icon-arrowD").addClass("icon-arrowU");
							} else {
								$ele.find(".link-list").animate({
									height: height + "px"
								}, 300);
								$(this).addClass("hidden").find(".icon-arrowU").removeClass("icon-arrowU").addClass("icon-arrowD");
							}
						});
					} else {
						$ele.find(".more").hide();
					}
				});
			})(jQuery);

			$(".filters a").on("click", function() {
				var $this = $(this),
					param = $this.data("param");
				var value = 0;
				if($this.html()) {
					$this.html("");
				} else {
					value = 1;
					$this.html("√");
				}

				if(param === "special") {
					if(value == 1) {
						$('.cat-list li:visible').each(function(i, n) {
							if($(this).hasClass('promoting')) {
								$(this).show();
							} else {
								$(this).hide();
							}
						});
						$('.cat-list li.promoting:visible').each(function(i, n) {
							if(i % 4 == 0) {
								$(this).removeClass('m-l-20');
							} else {
								$(this).addClass('m-l-20');
							}
						});
					} else {

						if($('.filter-diy').html() != '') {
							$('.cat-list li.diy-icon').each(function(i, n) {
								if(i % 4 == 0) {
									$(this).removeClass('m-l-20').show();
								} else {
									$(this).addClass('m-l-20').show();
								}
							});
						} else {
							$('.cat-list li').each(function(i, n) {
								if(i % 4 == 0) {
									$(this).removeClass('m-l-20').show();
								} else {
									$(this).addClass('m-l-20').show();
								}
							});
						}
					}
				} else if(param === "diy") {
					if(value == 1) {
						$('.cat-list li:visible').each(function(i, n) {
							if($(this).hasClass('diy-icon')) {
								$(this).show();
							} else {
								$(this).hide();
							}
						});
						$('.cat-list li.diy-icon:visible').each(function(i, n) {
							if(i % 4 == 0) {
								$(this).removeClass('m-l-20');
							} else {
								$(this).addClass('m-l-20');
							}
							showImg(n, true);
						});
					} else {
						if($('.filter-special').html() != '') {
							$('.cat-list li.promoting').each(function(i, n) {
								if(i % 4 == 0) {
									$(this).removeClass('m-l-20').show();
								} else {
									$(this).addClass('m-l-20').show();
								}
							});
						} else {
							$('.cat-list li').each(function(i, n) {
								if(i % 4 == 0) {
									$(this).removeClass('m-l-20').show();
								} else {
									$(this).addClass('m-l-20').show();
								}
								showImg(n, false);
							});
						}

					}

				} else {
					alert("非法操作");
				}

			});
		</script>

</body>

</html>