<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.struts-tags.com" prefix="s" %>
<!DOCTYPE HTML>
<html>
<head>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/static/h-ui.admin/css/style.css" />

<title>新增商品</title>

<link href="${pageContext.request.contextPath}/admin/lib/webuploader/0.1.5/webuploader.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="page-container">
	<form class="form form-horizontal" id="submit" method="post" action="test/addGoods" enctype="multipart/form-data">
	
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>商品对象：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<!-- <input type="radio" class="input-text" id="goodsTypeObject" name="tbGoodsTypeInfo.goodsTypeObject" value="长辈">长辈 -->
			
				<div class="radio-box">
					<input  type="radio" id="goodsTypeObject" name="tbGoodsTypeInfo.goodsTypeObject" value="长辈"
						checked="checked"><label>长辈</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="goodsTypeObject" name="tbGoodsTypeInfo.goodsTypeObject" value="晚辈"
						><label>晚辈</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="goodsTypeObject" name="tbGoodsTypeInfo.goodsTypeObject" value="朋友"
					><label>朋友</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="goodsTypeObject" name="tbGoodsTypeInfo.goodsTypeObject" value="闺蜜"
					><label>闺蜜</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="goodsTypeObject" name="tbGoodsTypeInfo.goodsTypeObject" value="老师"
					><label>老师</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="goodsTypeObject" name="tbGoodsTypeInfo.goodsTypeObject" value="其他"
					><label>其他</label>
				</div>
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>商品分类：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<div class="radio-box">
					<input  type="radio" id="goodsTypeClassify" name="tbGoodsTypeInfo.goodsTypeClassify" value="浪漫"
						checked="checked"><label>浪漫</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="goodsTypeClassify" name="tbGoodsTypeInfo.goodsTypeClassify" value="养生"
						><label>养生</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="goodsTypeClassify" name="tbGoodsTypeInfo.goodsTypeClassify" value="创意"
					><label>创意</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="goodsTypeClassify" name="tbGoodsTypeInfo.goodsTypeClassify" value="吃货"
					><label>吃货</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="goodsTypeClassify" name="tbGoodsTypeInfo.goodsTypeClassify" value="潮人"
					><label>潮人</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="goodsTypeClassify" name="tbGoodsTypeInfo.goodsTypeClassify" value="其他"
					><label>其他</label>
				</div>
			</div>
		</div>
		
		
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>商品场合：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<!-- <input type="radio" class="input-text" id="goodsTypeObject" name="tbGoodsTypeInfo.goodsTypeObject" value="长辈">长辈 -->
			
				<div class="radio-box">
					<input  type="radio" id="goodsTypeOccation" name="tbGoodsTypeInfo.goodsTypeOccation" value="纪念日"
						checked="checked"><label>纪念日</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="goodsTypeOccation" name="tbGoodsTypeInfo.goodsTypeOccation" value="生日"
						><label>生日</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="goodsTypeOccation" name="tbGoodsTypeInfo.goodsTypeOccation" value="表白"
					><label>表白</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="goodsTypeOccation" name="tbGoodsTypeInfo.goodsTypeOccation" value="毕业"
					><label>毕业</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="goodsTypeOccation" name="tbGoodsTypeInfo.goodsTypeOccation" value="晋升"
					><label>晋升</label>
				</div>
				<div class="radio-box">
					<input type="radio" id="goodsTypeOccation" name="tbGoodsTypeInfo.goodsTypeOccation" value="其他"
					><label>其他</label>
				</div>
			</div>
		</div>
		

	
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>商品标题：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" id="goodsName" name="tbGoodsDetailInfo.goodsName">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">商品价格：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" id="goodsPrice" name="tbGoodsDetailInfo.goodsPrice">
			</div>
		</div>
		
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">商品描述：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" id="goodsDiscreable" name="tbGoodsDetailInfo.goodsDiscreable">
			</div>
		</div>
		
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">商品参数：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" id="goodsSpecifiction" name="tbGoodsDetailInfo.goodsSpecifiction">
			</div>
		</div>
		
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<input onclick="createbtn()" type="button"
					class="btn btn-primary radius" value="增加选项"> <input
					onclick="delbtn()" type="button" class="btn btn-primary radius"
					value="删除选项">
			</div>
		</div>
		
		<div id="createform">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">商品样式：</label>
			<div class="col-xs-2 col-sm-2">
			<input id="goodsStyleName"  name="tbGoodsStyleInfo[0].goodsStyleName" type="text" class="input-text" placeholder="款式1">
			</div>
			<div class="col-xs-2 col-sm-2">
			<input id="goodsStyleStock"  name="tbGoodsStyleInfo[0].goodsStyleStock" type="text" class="input-text" placeholder="库存1">
			</div>
			<div class="col-xs-2 col-sm-2">
			<input id="file"  name="myFile" type="file" class="input-text" placeholder="图片1">
			</div>
		</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"></label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="hidden" id="nodetotal" name="nodetotal" />
			</div>
		</div>
	
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button onClick="check()" class="btn btn-primary radius" type="button"><i class="Hui-iconfont">&#xe632;</i> 发布</button>
				<button onClick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
			</div>
		</div>
	</form>
</div>


<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/lib/jquery/1.9.1/jquery.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/lib/jquery.validation/1.14.0/messages_zh.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/lib/webuploader/0.1.5/webuploader.min.js"></script> 

<script>
		function check() {

			$("#submit").submit();
		}
	</script>


<script>
		
		var nodenum = 1;
		
		document.getElementById("nodetotal").value = nodenum;
		//下面是“增加选项”“删除选项”的按钮操作
		function createbtn() {

			var nodenum = $("#nodetotal").val();
			//如果选项少于10个才操作
			if (nodenum < 5) {
				nodenum++;
				var curnode = nodenum-1;
				var node = document.createElement("div");
				node.className = "row cl";
				node.innerHTML = "<label class='form-label col-xs-4 col-sm-2'></label>" 
					+ " <div class='col-xs-2 col-sm-2'><input id='goodsStyleName'  name='tbGoodsStyleInfo[" 
					+ curnode +"].goodsStyleName' type='text' class='input-text' placeholder='款式"
					+ nodenum +"'></div><div class='col-xs-2 col-sm-2'><input id='goodsStyleStock'  name='tbGoodsStyleInfo["
					+ curnode +"].goodsStyleStock' type='text' class='input-text' placeholder='库存"
					+ nodenum +"'></div> <div class='col-xs-2 col-sm-2'>"
					+ "<input id='file'  name='myFile' type='file' class='input-text' placeholder='图片"
					+ nodenum +"'></div>";		
							
				$("#createform").append(node);
				document.getElementById("nodetotal").value = nodenum;
				// alert(nodenum);
			} else {
				alert("最多5个款式");
			}
		}
		//逻辑跟上面一样
		function delbtn() {
			var nodenum = $("#nodetotal").val();
			if (nodenum > 1) {
				nodenum--;
				d = document.getElementById("createform");
				d.removeChild(d.lastChild);
				document.getElementById("nodetotal").value = nodenum;
			} else {
				alert("至少1个款式");
			}
		}
	</script>



</body>

</html>