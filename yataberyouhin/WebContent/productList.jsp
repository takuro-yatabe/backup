<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/productList.css">
<title>商品一覧画面</title>
</head>
<body>

	<!--ヘッダーメニューここから-->
	<jsp:include page="subjsp/header.jsp" flush="true" />
	<!--ヘッダーメニューここまで-->

	<!-- メインここから -->
	<div id="main">
		<br>
		<div class="pageback">
			<a href='<s:url action="GoHomeAction"/>'>TOP</a> &nbsp;>&nbsp; <a>商品一覧</a>
		</div>

		<h2 class="title">商品一覧</h2>
		<br>


		<s:if test="productInfoDTOList==null">
			<h3>検索結果がありません。</h3>
			<h3>正しく入力してください。</h3>
		</s:if>

		<div class="array">
			<s:else>
				<s:iterator value="productInfoDTOList">
					<div class="image_box">
					<a href='<s:url action="ProductInfoDetailAction"><s:param name="productId" value="%{productId}"/></s:url>'>
						<img src='<s:property value="imageFilePath" />' alt="商品画像"></a><br>

						<div class="product_name_kana">
						<a href='<s:url action="ProductInfoDetailAction"><s:param name="productId" value="%{productId}"/></s:url>'>
							<s:property value="productNameKana" /></a><br></div>

					<div class="product_name">
					<b><a href='<s:url action="ProductInfoDetailAction"><s:param name="productId" value="%{productId}"/></s:url>'>
							<s:property value="productName" /></a></b><br></div>

					<div class="price">
					<b>税込<s:property value="price" />円</b><br></div>
					</div>
				</s:iterator>
			</s:else>
		</div>
	</div>
	<!-- メインここまで -->

	<!--フッターここから-->
	<div id="footer">
		<p>Copyright© yataberyouhin All Rights Reserved.</p>
	</div>
	<!--フッターここまで-->
</body>
</html>