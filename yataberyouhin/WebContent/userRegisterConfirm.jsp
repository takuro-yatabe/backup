<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録内容確認画面</title>
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
<th><h3>新規ユーザー登録確認画面</h3></th>
</tr>

	<s:form action="RegisterUserInfoAction">

		<tr>
		<td>姓:<s:property value="familyName" /><s:hidden name="familyName" value="%{familyName}" /></td>
		<td>名:<s:property value="firstName" /><s:hidden name="firstName" value="%{firstName}" /></td>
		<td>姓ふりがな:<s:property value="familyNameKana" /><s:hidden name="familyNameKana" value="%{familyNameKana}" /></td>
		<td>名ふりがな:<s:property value="firstNameKana" /><s:hidden name="firstNameKana" value="%{firstNameKana}" /></td>
		<td>ID:<s:property value="userId" /><s:hidden name="userId" value="%{userId}" /></td>
		<td>パスワード:<s:property value="password" /><s:hidden name="password" value="%{password}" /></td>
		<td>性別:<s:if test="sex.equals('0')"><s:div>男性</s:div></s:if>
		<s:elseif test="sex.equals('1')"><s:div>女性</s:div></s:elseif><s:hidden name="sex" value="%{sex}" /></td>
		<td>メールアドレス:<s:property value="email" /><s:hidden name="email" value="%{email}" /></td>
		<td><br></td>
		<td><s:submit value="登録情報完了" /></td>

	</s:form>
</tbody>
</table>
</body>
</html>