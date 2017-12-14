<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>購入情報確認画面</title>
</head>
<body>

		<!--タイトルロゴここから-->
		<div class="logo">ヤタベ良品</div>
		<!--タイトルロゴここまで-->

		<!--ヘッダーメニューここから-->
		<jsp:include page="subjsp/header.jsp" flush="true"/>

<table>
<tbody>

<tr>
<th><h3>宛先情報登録確認</h3></th>
</tr>

	<s:form action="RegisterDestinationInfoAction">


		<tr>
		<td>姓:<s:property value="familyName" /> <s:hidden name="familyName" value="%{familyName}" /></td>
		<td>名:<s:property value="firstName" /> <s:hidden name="firstName" value="%{firstName}" /></td>
		<td>姓ふりがな:<s:property value="familyNameKana" /> <s:hidden name="familyNameKana" value="%{familyNameKana}" /></td>
		<td>名ふりがな:<s:property value="firstNameKana" /> <s:hidden name="firstNameKana" value="%{firstNameKana}" /></td>
		<td>メールアドレス:<s:property value="email" /> <s:hidden name="email" value="%{email}" /></td>
		<td>電話番号:<s:property value="telNumber" /> <s:hidden name="telNumber" value="%{telNumber}" /></td>
		<td>住所:<s:property value="userAddress" /> <s:hidden name="userAddress" value="%{userAddress}" /></td>
		<td><br></td>
		<td><s:submit value="確定" /></td>
		</tr>


	</s:form>

</tbody>
</table>
</body>
</html>