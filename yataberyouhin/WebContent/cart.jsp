<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>カート画面</title>
<link rel="stylesheet" type="text/css" href="./css/cart.css">
</head>
<body>

	<!--ヘッダーメニューここから-->
	<jsp:include page="subjsp/header.jsp" flush="true" />
	<!--ヘッダーメニューここまで-->
	<!-- メインここから -->
	<div id="main">
		<br>
		<div class="pageback">
			<a href='<s:url action="GoHomeAction"/>'>TOP</a> &nbsp;>&nbsp; <a>カート</a>
		</div>

		<h2 class="title">カート</h2>
		<table border="1"
			style="width: 1000px; background-color: #f5f5f5; text-align: center;">
			<caption>カートの中には以下の商品が入っています。</caption>
			<s:if test="! cartList.isEmpty()">
				<s:iterator value="cartList">
					<s:form action="GoCartAction" theme="simple">

						<thead style="background-color: #d3d3d3;">
							<tr>
								<th></th>
								<th>商品名</th>
								<th>ふりがな</th>
								<th>値段</th>
								<th>購入個数</th>
								<th>発売会社名</th>
								<th>発売年月日</th>
								<th></th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td><img src='<s:property value="imageFilePath" />'
									alt="商品画像"></td>
								<td><s:property value="productName" /></td>
								<td><s:property value="productNameKana" /></td>
								<td><s:property value="price" />円</td>
								<td><s:property value="count" /></td>
								<td><s:property value="releaseCompany" /></td>
								<td><s:property value="releaseDate" /></td>
								<td><s:hidden name="deleteProduct" value="%{productId}" />
									<s:submit value="削除" /></td>
							</tr>
						</tbody>
					</s:form>
				</s:iterator>

			</s:if>
			<s:else>
				<tr>
					<td>カートの中は空です</td>
				</tr>
			</s:else>


		</table>
		<br>
		<div class="totalprice">
			合計金額:
			<s:property value="totalPrice" />
			<span>円</span>
		</div>
		<br>

		<div class="settlement_btn">
			<a href='<s:url action="PurchaseInfoAction" />'>決済画面へ</a>
		</div>
	</div>
	<br>
	<br>
	<!--メインここまで -->

	<!--フッターここから-->
	<div id="footer">
		<p>Copyright© yataberyouhin All Rights Reserved.</p>
	</div>
	<!--フッターここまで-->

</body>
</html>