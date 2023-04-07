<%@ page language="java" contentType="text/html; charset=UTF-8" import="com.qst.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.struts-tags.com" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/static/h-ui.admin/css/style.css" />

<title>商品列表</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/lib/zTree/v3/css/zTreeStyle/zTreeStyle.css" type="text/css">
</head>
<body class="pos-r">

<div style="">
	<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 产品管理 <span class="c-gray en">&gt;</span> 产品列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
	<div class="page-container">
		<form action="delectGoods" id="form" method="post">
		<div class="cl pd-5 bg-1 bk-gray mt-20"> 
		<span class="l">
		<input type="button" onclick="datadel()" class="btn btn-danger radius" value="批量删除">
		<a class="btn btn-primary radius" data-title="添加商品" data-href="${pageContext.request.contextPath}/goods_add.jsp" onclick="Hui_admin_tab(this)" href="javascript:;"><i class="Hui-iconfont">&#xe600;</i> 添加商品</a>
		</span> 
		<span class="r">
			商品数量 ： <font color="red" >${goodsListMassageVo.size() }</font> 
		</span> 
	</div>
		<div class="mt-20">
			<table class="table table-border table-bordered table-bg table-hover table-sort">
				<thead>
					<tr class="text-c">
						<th width="40"><input name="" type="checkbox" value=""></th>
						<th width="40">ID</th>
						<th width="60">缩略图</th>
						<th width="100">商品名称</th>
						<th>简介</th>
						<th width="100">价格</th>
						<th width="60">商品状态</th>
						<th width="100">操作</th>
					</tr>
				</thead>
				<tbody>
				<s:iterator value="goodsListMassageVo" var="typeInfo">
					<tr class="text-c va-m">
						<td><input type="checkbox" name="goodIds" size="20" value="${goodsId}" /></td>
						<!-- <td><input name="" type="checkbox" value=""></td> -->
						<td><s:property value="goodsId" /></td>
						<td>
							<a onClick="product_show('哥本哈根橡木地板','product-show.html','10001')" href="javascript:;">
								<img width="60" class="product-thumb" src="${goodsImagePath}">
							</a>
						</td>
						<td class="text-l">
							<a style="text-decoration:none" onClick="" href="analysisCommentStar?goodsId=${goodsId}">
								<s:property value="goodsName" />
							</a>
						</td>
						<td class="text-l"><s:property value="goodsDiscreable" /></td>
						<td>￥<span class="price"><s:property value="goodsPrice" /></span> </td>
						<c:choose>
						<c:when test="${goodsStatus==0}">
							<td class="td-status"><span class="label label-success radius">已发布</span></td>
						</c:when>
						<c:otherwise>
							<td class="td-status"><span  class="label label-defaunt radius">已下架</span></td>
						</c:otherwise>
					</c:choose>
						<td class="td-manage">
							<c:choose>
								<c:when test="${goodsStatus==0}">
								<a style="text-decoration:none" class="ml-5"
									onClick="article_stop(this,${goodsId})" href="javascript:;"
									title="下架"><i class="Hui-iconfont">&#xe6de;</i>
								</a>
							</c:when>
							<c:otherwise>
								<a style="text-decoration:none" class="ml-5"
								onClick="article_start(this,${goodsId})" href="javascript:;"
								title="发布"><i class="Hui-iconfont">&#xe603;</i></a>
							</c:otherwise>
							
							</c:choose>
						
							
							<a style="text-decoration:none" class="ml-5" onClick="product_edit('商品编辑','updateInGoodsInfo?goodsId=${goodsId}')" href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a> 
							<a style="text-decoration:none" class="ml-5" onClick="product_del(this, ${goodsId})" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a>
						</td>
					</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
		</form>
	</div>
</div>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/lib/zTree/v3/js/jquery.ztree.all-3.5.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/lib/My97DatePicker/4.8/WdatePicker.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
var setting = {
	view: {
		dblClickExpand: false,
		showLine: false,
		selectedMulti: false
	},
	data: {
		simpleData: {
			enable:true,
			idKey: "id",
			pIdKey: "pId",
			rootPId: ""
		}
	},
	callback: {
		beforeClick: function(treeId, treeNode) {
			var zTree = $.fn.zTree.getZTreeObj("tree");
			if (treeNode.isParent) {
				zTree.expandNode(treeNode);
				return false;
			} else {
				/* demoIframe.attr("src",treeNode.file + ".html"); */
				return true;
			}
		}
	}
};

$(document).ready(function(){
	var t = $("#treeDemo");
	/* t = $.fn.zTree.init(t, setting, zNodes);
	demoIframe = $("#testIframe");
	demoIframe.on("load", loadReady); */
	var zTree = $.fn.zTree.getZTreeObj("tree");
	/* zTree.selectNode(zTree.getNodeByParam("id",'11')); */
});

$('.table-sort').dataTable({
	"aaSorting": [[ 1, "desc" ]],//默认第几个排序
	"bStateSave": true,//状态保存
	"aoColumnDefs": [
	  {"orderable":false,"aTargets":[0,7]}// 制定列不参与排序
	]
});
/*产品-添加*/
function product_add(title,url){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
/*产品-查看*/
function product_show(title,url,id){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}


/* 产品下架 */
function article_stop(obj,id){
	layer.confirm('确认要下架吗？', function(index){
		$.ajax({
			url: "${pageContext.request.contextPath}/updateGoodsStatus?goodsId=" +id+"&status=1"
		});	
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="article_start(this,${sub.sId})" href="javascript:;" title="发布"><i class="Hui-iconfont">&#xe603;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已下架</span>');
		$(obj).remove();
		layer.msg('已下架!', { icon: 1, time: 1000 });
		layer.close(index);	
		 
	});
}
/*产品-发布*/
function article_start(obj,id){
	layer.confirm('确认要发布吗？',function(index){
		$.ajax({
			url: "${pageContext.request.contextPath}/updateGoodsStatus?goodsId="+id+"&status=0"
		});
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="article_stop(this,${sub.sId})" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
		$(obj).remove();
		layer.msg('已发布!',{icon: 6,time:1000});
		layer.close(index);
	});
}

/*产品-编辑*/
function product_edit(title,url){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}



function product_del(obj,id){

	layer.confirm('确认要删除吗？', function(index){
		$.ajax({
			url:  "${pageContext.request.contextPath}/deleteGoodsOne?goodsId="+id,
		});	
		$(obj).parents("tr").remove();
		layer.msg('已删除!', { icon: 1, time: 1000 });
		layer.close(index);	
		 
	});
}


function datadel() {
	layer.confirm('确认要删除选中内容吗？', function(index){
		$("#form").submit();
		$(obj).parents("tr").remove();
		layer.msg('已删除!', { icon: 1, time: 1000 });
		layer.close(index);	
	});
}
</script>
</body>
</html>