<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.struts-tags.com" prefix="s"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布商品</title>
</head>
<body>
<%-- 
	 <s:form action="test/addGoods" method="post" theme="simple" enctype="multipart/form-data">
  		
  		商品类型： 对象：<s:radio name="goodsTypeObject" list="#{'长辈':'长辈', '晚辈':'晚辈', '朋友':'朋友'  }"/><br>
  				场合<s:radio name="goodsTypeOccation" list="#{'纪念日':'纪念日', '表白':'表白', '生日':'生日'  }"/><br>
  				分类<s:radio name="goodsTypeClassify" list="#{'浪漫':'浪漫', '创意':'创意', '养生':'养生'  }"/><br>
  		
		商品名称：<s:textfield name="goodsName" size="20"></s:textfield><br>
		商品价格：<s:textfield name="goodsPrice" size="20"></s:textfield><br>
		商品描述：<s:textfield name="goodsDiscreable" size="20"></s:textfield><br>
		商品参数：<s:textfield name="goodsSpecifiction" size="20"></s:textfield><br>
  		
  		
  		第一个样式<br>
  		商品库存:	<s:textfield name="goodsStyleStock" size="20"></s:textfield><br>
  		商品样式:	<s:textfield name="goodsStyleName" size="20"></s:textfield><br>
  		
  		商品图片:	<s:file name="myFile" size="20"/><br>
  		第二个样式<br>
  		商品样式:	<s:textfield name="goodsStyleName" size="20"></s:textfield><br>
  		商品库存:	<s:textfield name="goodsStyleStock" size="20"></s:textfield><br>
  		商品图片:	<s:file name="myFile" size="20"/><br>
  		<s:submit value="提交"></s:submit>
  	
  	</s:form> --%>
  	
  	<form action="test/addGoods" method="post" enctype="multipart/form-data">
  		

  	商品类型：<br> 对象：<input type="radio" name="tbGoodsTypeInfo.goodsTypeObject" value="长辈">长辈  
  				<input type="radio" name="tbGoodsTypeInfo.goodsTypeObject" value="晚辈">晚辈
  				<input type="radio" name="tbGoodsTypeInfo.goodsTypeObject" value="朋友">朋友<br>
  			场合：<input type="radio" name="tbGoodsTypeInfo.goodsTypeOccation" value="纪念日">纪念日
  				<input type="radio" name="tbGoodsTypeInfo.goodsTypeOccation" value="表白">表白
  				<input type="radio" name="tbGoodsTypeInfo.goodsTypeOccation" value="生日">生日<br>
  			分类：<input type="radio" name="tbGoodsTypeInfo.goodsTypeClassify" value="浪漫">浪漫
  				<input type="radio" name="tbGoodsTypeInfo.goodsTypeClassify" value="养生">养生
  				<input type="radio" name="tbGoodsTypeInfo.goodsTypeClassify" value="创意">创意<br>
  		
  	
  	商品名称：<input name="tbGoodsDetailInfo.goodsName" type="text"/><br>
		商品价格：<input name="tbGoodsDetailInfo.goodsPrice" type="text"/><br>
		商品描述：<input name="tbGoodsDetailInfo.goodsDiscreable" type="text"/><br>
		商品参数：<input name="tbGoodsDetailInfo.goodsSpecifiction" type="text"/><br>

  <br>
  		商品库存:	<input name="tbGoodsStyleInfo[0].goodsStyleStock" type="text"/><br>
  		商品样式:	<input name="tbGoodsStyleInfo[0].goodsStyleName" type="text"/><br>
  		商品图片:	<input name="myFile" type="file"><br>

  		商品库存:	<input name="tbGoodsStyleInfo[1].goodsStyleStock" value="" type="text"/><br>
  		商品样式:	<input name="tbGoodsStyleInfo[1].goodsStyleName" value="" type="text"/><br>

  		商品图片:	<input name="myFile" type="file">
  		商品库存:	<input name="tbGoodsStyleInfo[2].goodsStyleStock" type="text"/><br>
  		商品样式:	<input name="tbGoodsStyleInfo[2].goodsStyleName" type="text"/><br>
  		商品图片:	<input name="myFile" type="file">
  	
  		
  		<input type="submit" value="提交">
  	</form>
  	
  	
  	
    
</body>
</html>