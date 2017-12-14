<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>決済確認画面</title>
<script type="text/javascript">
history.forward();
</script>
</head>
<body>

		<!--タイトルロゴここから-->
		<div class="logo">ヤタベ良品</div>
		<!--タイトルロゴここまで-->

		<!--ヘッダーメニューここから-->
		<jsp:include page="subjsp/header.jsp" flush="true"/>


<table>
<tbody>
<s:form action="PurchaseCompletionAction">
<!-- 購入情報 -->
<s:iterator value="cartInfoDTOList">
 <tr>
 <td><h3>購入情報</h3></td>
 </tr>
 <tr>
  <td>商品名</td>
  <td><s:property value="productName"/></td>
 <tr>
  <td>商品かな</td>
  <td><s:property value="productNameKana"/></td>
 </tr>
 <tr>
  <td>価格</td>
  <td><s:property value="price"/><span>円</span></td>
 </tr>
 <tr>
  <td>購入個数</td>
  <td><s:property value="count"/><span>個</span></td>
 </tr>
 <tr>
  <td>画像</td>
  <td><s:property value="imageFilePath"/></td>
 </tr>
 <tr>
 <td>画像名前</td>
  <td><s:property value="imageFileName"/></td>
 </tr>
 <tr>
 <td>会社名</td>
 <td><s:property value="releaseCompany"/></td>
 </tr>
 <tr>
  <td>発売年月</td>
  <td><s:property value="releaseDate"/></td>
 </tr>
 </s:iterator>
 <tr>
  <td>合計金額</td>
  <td><s:property value="totalPrice"/><span>円</span></td>
 </tr>

<br><br>

 <!-- 宛先情報 -->
 <s:iterator value="destinationInfoListDTO">
 <tr>
 <td><h4><input type="radio" name="id" checked="checked"/>宛先情報</h4></td>
 </tr>
 <tr>
 <td>姓</td>
  <td><s:property value="familyName"/></td>
 </tr>
 <tr>
  <td>名</td>
  <td><s:property value="firstName"/></td>
 </tr>
 <tr>
  <td>姓かな</td>
  <td><s:property value="familyNameKana"/></td>
 </tr>
 <tr>
  <td>名かな</td>
  <td><s:property value="firstNameKana"/></td>
 </tr>
 <tr>
  <td>住所</td>
  <td><s:property value="userAddress"/></td>
 </tr>
 <tr>
  <td>電話番号</td>
  <td><s:property value="telNumber"/></td>
 </tr>
 <tr>
  <td>メールアドレス</td>
  <td><s:property value="email"/></td>
 </tr>
 </s:iterator>
 <s:submit value="完了"/>
 </s:form>



 <tr>
 <td><input type="button" value="購入宛先情報の新規登録"
			onclick="location.href= '<s:url action="GoDestinationRegisterAction" />' "></td>
			</tr>

			</tbody>
			</table>
</body>
</html>