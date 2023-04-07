<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.qst.entity.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%
	int[] num = (int[]) request.getAttribute("num");
%>


<html>
<head>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/lib/static/h-ui.admin/css/style.css" />

<title>评论星级分析</title>
</head>
<body>
	<nav class="breadcrumb">
	<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
	统计管理 <span class="c-gray en">&gt;</span> 评论星级统计<a
		class="btn btn-success radius r"
		style="line-height:1.6em;margin-top:3px"
		href="javascript:location.replace(location.href);" title="刷新"><i
		class="Hui-iconfont">&#xe68f;</i>
	</a></nav>
	<div class="page-container">
		<div class="f-14 c-error"></div>
		<div id="container" style="min-width:700px;height:400px">
			<input type="hidden" value="<%=num[0]%>" id="one" />
			<input type="hidden" value="<%=num[1]%>" id="two" /> 
			<input type="hidden" value="<%=num[2]%>" id="three" />
			<input type="hidden" value="<%=num[3]%>" id="four" />
			<input type="hidden" value="<%=num[4]%>" id="five" />
		</div>
		
		
	</div>
	
	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript" src="${pageContext.request.contextPath}/lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layer/2.4/layer.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/lib/static/h-ui/js/H-ui.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/lib/static/h-ui.admin/js/H-ui.admin.js"></script>
	<!--/_footer 作为公共模版分离出去-->

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib/hcharts/Highcharts/5.0.6/js/highcharts.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib/hcharts/Highcharts/5.0.6/js/modules/exporting.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/lib/hcharts/Highcharts/5.0.6/js/highcharts-3d.js"></script>
	<script type="text/javascript">
﻿﻿  $(function() {
var one = document.getElementById('one').value ;
var two = document.getElementById('two').value ;
var three = document.getElementById('three').value ;
var four = document.getElementById('four').value ;
var five = document.getElementById('five').value ;
var total = Number(one)+Number(two)+Number(three)+Number(four)+Number(five);
//alert(ff+"haha"+total);
    $('#container').highcharts({

        chart: {
            type: 'pie',
            options3d: {
                enabled: true,
                alpha: 45,
                beta: 0
            }
        },
        title: {
            text: '该商品的评论星级分布'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                depth: 35,
                dataLabels: {
                    enabled: true,
                    format: '{point.name}'
                }
            }
        },
        series: [{
            type: 'pie',
            name: '星级占比',
            data: [
                ['一星',   one*100/total],
                ['二星',   two*100/total],
                ['三星',   three*100/total],
                ['四星',   four*100/total],
                ['五星(好评)',   five*100/total]
            ]
        }]
    });
});
</script>
</body>
</html>