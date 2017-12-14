<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザー情報入力画面</title>
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
<th><h3>新規ユーザー登録</h3></th>
</tr>

	<s:form action="CheckUserInfoAction">
		<s:iterator value="errMsgList" >
			<s:property />
		</s:iterator>

		<tr>
			<td>姓:<s:textfield  name="familyName" value="%{familyName}" /></td>
			<td>名:<s:textfield  name="firstName" value="%{firstName}" /></td>
			<td>姓ふりがな:<s:textfield  name="familyNameKana" value="%{familyNameKana}" /></td>
			<td>名ふりがな:<s:textfield  name="firstNameKana" value="%{firstNameKana}" /></td>
			<td>ID:<s:textfield  name="userId" value="%{userId}" /></td>
			<td>パスワード:<s:password name="password" value="%{password}" /></td>
			<td>性別:<s:radio name="sex" list="#{'0': '男性', '1': '女性'}" value="0" /></td>
			<td>メールアドレス:<s:textfield  name="email" value="%{email}" /></td>
			<td><br><td>
			<td><s:submit value="登録情報確認" /></td>
		</tr>
	</s:form>

</tbody>
</table>

</body>
</html>