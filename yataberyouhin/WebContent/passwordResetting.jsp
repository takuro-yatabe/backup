<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="./css/passwordResetting.css">
<title>パスワード再設定画面</title>
</head>
<body>

	<!--ヘッダーメニューここから-->
	<jsp:include page="subjsp/header.jsp" flush="true" />
	<!--ヘッダーメニューここまで-->

	<div id="main">
		<br>
		<br><br><div class="pageback">
			<a href='<s:url action="GoHomeAction"/>'>TOP</a> &nbsp;>&nbsp; <a>再パスワード設定</a>
		</div>
		<h3>パスワード再設定画面</h3>

		<br>
		<div class="new_password">
			<h5>
				<s:iterator value="errMsgList">
					<s:div>
						<s:property />
					</s:div>
				</s:iterator>
			</h5>
			<table>
				<tbody>
					<s:form action="PasswordResettingConfirmAction" theme="simple">
						<div class="new_password_title">
							ユーザーID<br>
						</div>
						<div class="new_password_textbox">
							<s:textfield name="userId" />
							<br>
						</div>
						<br>
						<div class="new_password_title">
							パスワード<br>
						</div>
						<div class="new_password_textbox">
							<s:password name="password" />
							<br>
						</div>
						<br>
						<div class="new_password_title">
							再確認パスワード<br>
						</div>
						<div class="new_password_textbox">
							<s:password name="passwordConfirm" />
							<br>
						</div>
						<br>
						<div class="new_password_btn">
							<s:submit value="再設定" />
						</div>
					</s:form>
				</tbody>
			</table>
		</div>
	</div>
	<!--フッターここから-->
	<div id="footer">
		<p>Copyright© yataberyouhin All Rights Reserved.</p>
	</div>
	<!--フッターここまで-->
</body>
</html>