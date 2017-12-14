<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/productListDetail.css">
<title>商品詳細画面</title>
<script type="text/javascript">
history.forward();
</script>
</head>
<body>

		<!--ヘッダーメニューここから-->
		<jsp:include page="subjsp/header.jsp" flush="true"/>
		<!--ヘッダーメニューここまで-->

		<!-- メインここから -->
		<div id="main">
		<br><div  class="pageback">
		<a href='<s:url action="GoHomeAction"/>'>TOP</a>
		&nbsp;>
		<a href='<s:url action="ProductInfoAction"/>'>商品一覧</a>
		&nbsp;>&nbsp;
		<a>商品詳細</a>
		</div>

		<h2 class="title">商品詳細</h2><br>

		<!--商品詳細-->
		<div class="box">
		<div class="image_box">
		<img src= '<s:property value="productInfoDTO.imageFilePath" />' alt="商品画像"></div>

		<div  class="detail_box">
		<div class="product_name_kana">
		<s:property value="productInfoDTO.productNameKana" /></div>
		<div class="product_name">
		<s:property value="productInfoDTO.productName" /></div><br>
		<div class="product_description">
		<s:property value="productInfoDTO.productDescription" /></div>
		<div class="price">
		税込:<s:property value="productInfoDTO.price" />円</div>
		<div class="release_company">
		発売会社:<s:property value="productInfoDTO.releaseCompany" /></div>
		<div class="release_date">
		発売年月日:<s:property value="productInfoDTO.releaseDate" /></div>

		<s:form action="PutProductIntoCartAction">
		購入個数:<select name="count">
		<option value="1" selected="selected">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		</select>
		<br><br>
		<div class="gocart_btn">
		<s:hidden name="productId" value="%{productId}" /></div>
		<s:submit value="カートに追加"/>
		</s:form></div></div>
		<br><br>

		<div class="same_category_box">
		<h3 class="title2">関連商品</h3>
		<s:iterator value="similarInfoDTOList">
		<s:property value="productName" />
		<a href='<s:url action="ProductInfoDetailAction"><s:param name="productId" value="%{productId}"/></s:url>'>
		<s:property value="imageFilePath" /></a>
		</s:iterator></div>

<!-- レビューここから -->
		<div class="review">
		<h3 class="title2">レビュー</h3>

		<s:iterator value="reviewList">
		<s:property value="evaluation" />
		投稿者:<s:property value="familyName" /> <s:property value="firstName" />
		<s:property value="insertDate" />
		<s:property value="reviewDetail" />
		</s:iterator>
		</div>
		<!-- レビューここまで追加しました -->
		</div>
		<!-- メインここまで -->

		<!--フッターここから-->
		<div id="footer">
		<p>Copyright© yataberyouhin All Rights Reserved.</p>
		</div>
		<!--フッターここまで-->
</body>
</html>