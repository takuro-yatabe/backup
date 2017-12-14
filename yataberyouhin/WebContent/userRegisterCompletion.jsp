<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新規登録完了画面</title>
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
<th>新規登録完了しました</th>
</tr>
<tr>
<td>ログイン画面は<s:a href="login.jsp">こちら</s:a></td>
</tr>
</tbody>
</table>
</body>
</html>