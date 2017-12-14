<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>購入完了画面</title>
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
<td><h3>購入が完了しました</h3></td>
</tr>
<tr>
<td>Homeにもどる場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></td>
</tr>
</tbody>
</table>

</body>
</html>