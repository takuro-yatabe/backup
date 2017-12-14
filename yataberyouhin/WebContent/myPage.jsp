<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>マイページ画面</title>
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
<th><h2>マイページ</h2></th>
<th><br></th>
</tr>

<s:form action="PurchaseHistoryAction">
<s:iterator value="userInfoDTO">
 <tr>
  <td>姓</td>
  <td><s:property value="familyName"/></td>
 </tr>
 <tr>
  <td>名</td>
  <td><s:property value="firstName"/></td>
 </tr>
 <tr>
  <td>姓ふりがな</td>
  <td><s:property value="familyNameKana"/></td>
 </tr>
  <tr>
  <td>名ふりがな</td>
  <td><s:property value="firstNameKana"/></td>
 </tr>
 <tr>
 <tr>
  <td>性別</td>
  <td><s:property value="sex"/></td>
 </tr>
 <tr>
 <td>メールアドレス</td>
  <td><s:property value="email"/></td>
 </tr>
 </s:iterator>
<s:submit value="購入履歴を確認する"/>
</s:form>
<tr>
<td><br></td>
<td><p>Homeにもどる場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></p></td>
</tr>

</tbody>
</table>
</body>
</html>