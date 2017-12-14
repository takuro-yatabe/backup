<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>購入履歴画面</title>
</head>
<body>
<jsp:include page="subjsp/header.jsp" flush="true"/>
<table>
<s:if test="purchaseHistoryDTO==null">
 <h3>購入情報はありません</h3>
 </s:if>
 <s:else>
  <h3>購入情報は以下になります</h3>
 <table border="1">
<s:iterator value="purchaseHistoryDTO">
<tr>
 <th>商品名</th>
 <th>商品名かな</th>
 <th>価格</th>
 <th>購入個数</th>
 <th>画像</th>
 <th>画像名</th>
 <th>発売会社</th>
 <th>発売年月</th>
</tr>
 <tr>
  <td><s:property value="productName"/></td>
  <td><s:property value="productNameKana"/></td>
  <td><s:property value="price"/><span>円</span></td>
  <td><s:property value="count"/>個</td>
  <td><s:property value="imageFilePath"/></td>
  <td><s:property value="imageFileName"/></td>
  <td><s:property value="releaseCompany"/></td>
   <td><s:property value="releaseDate"/></td>
 </tr>
</s:iterator>
</table>
<s:form action="PurchaseHistoryAction">
 <input type="hidden" name="deleteFlg" value="1">
 <s:submit value="削除" method="delete"/>
</s:form>
</s:else>
<s:if test="message !=null">
  <h3><s:property value="message"/></h3>
</s:if>
<tr>
<td>マイページにもどる場合は<a href='<s:url action="MyPage2Action"/>'>こちら</a></td>
<td><br></td>
<td>Homeにもどる場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></td>
</tr>
</table>
</body>
</html>