<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>电脑网站支付return_url</title>
</head>
<%@ page import="java.util.*"%>
<%@ page import="java.util.Map"%>
<%@ page import="com.alipay.config.*"%>
<%@ page import="com.alipay.api.*"%>
<%@ page import="com.alipay.api.internal.util.*"%>
<%
/* *
 * 功能：支付宝服务器同步通知页面
 * 日期：2017-03-30
 */

	//获取支付宝GET过来反馈信息
	Map<String,String> params = new HashMap<String,String>();
	Map<String,String[]> requestParams = request.getParameterMap();
	for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
		String name = (String) iter.next();
		String[] values = (String[]) requestParams.get(name);
		String valueStr = "";
		for (int i = 0; i < values.length; i++) {
			valueStr = (i == values.length - 1) ? valueStr + values[i]
					: valueStr + values[i] + ",";
		}
		//乱码解决，这段代码在出现乱码时使用
		valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
		params.put(name, valueStr);
	}
	
	boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type); //调用SDK验证签名

	//——请在这里编写您的程序（以下代码仅作参考）——
	if(signVerified) {
		//商户订单号
		 String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),"UTF-8");
	
		//支付宝交易号
		String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"),"UTF-8");
	
		//付款金额
		String total_amount = new String(request.getParameter("total_amount").getBytes("ISO-8859-1"),"UTF-8");
		

		//out.println("trade_no:"+trade_no+"<br/>out_trade_no:"+out_trade_no+"<br/>total_amount:"+total_amount);
	}else {
	//	out.println("验签失败");
	}
	//——请在这里编写您的程序（以上代码仅作参考）——
%>
<body>

<script type="text/javascript" >

function paysuccess(){

var str = location.href;

var num = str.indexOf("?");
str = str.substr(num+1);

var arr = str.split("&");
for(var i=0; i<arr.length; i++)
console.log(arr[i]);

var trade_no = arr[5];
var out_trade_no = arr[1];

var arr2 = out_trade_no.split("%");
out_trade_no=arr2[0];

var total_amount=arr[3];
console.log(trade_no.indexOf("="));
console.log("no:"+trade_no.substr(trade_no.indexOf("=")+1));
console.log("no:"+out_trade_no.substr(out_trade_no.indexOf("=")+1));
window.location.href ="paysuccess?out_trade_no="+out_trade_no.substr(out_trade_no.indexOf("=")+1)+"&trade_no="+trade_no.substr(trade_no.indexOf("=")+1)+"&total_amount="+total_amount.substr(total_amount.indexOf("=")+1);

}
paysuccess();


</script>





</body>
</html>