<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="./css/login.css">
<title>ログイン画面</title>
</head>
<body>

	<!--ヘッダーメニューここから-->
	<jsp:include page="subjsp/header.jsp" flush="true" />
	<!--ヘッダーメニューここまで-->

	<!--メインここから -->
	<div id="main">
		<br>


		<div class="pageback">
			<a href='<s:url action="GoHomeAction"/>'>TOP</a> &nbsp;>&nbsp; <a>ログイン</a>
		</div>
		<h2 class="title">ログイン</h2>
		<br> <br>
		<div class="member">

			<h3>登録済みのお客様</h3>

			<h5>
				<s:iterator value="errMsgList">
					<s:div>
						<s:property />
					</s:div>
				</s:iterator>
			</h5>

			<div class="member_form">
				<s:form action="LoginAction" theme="simple">

					<div class="member_form_title">
						ユーザーID<br>
					</div>
					<div class="member_textbox">
						<s:textfield type="text" name="userId" value="%{#session.saveId}" />
						<br>
					</div>

					<br>
					<div class="member_form_title">
						パスワード<br>
					</div>
					<div class="member_textbox">
						<s:password name="password" />
					</div>

					※半角英数字のみで入力してください。<br>
					パスワードをお忘れの方は<a href="passwordResetting.jsp">こちら</a>


					<p>
						<s:checkbox name="saveLogin" />
						ID保存
					</p>

					<div class="member_btn">
						<button type="submit" class="">ログイン</button>
					</div>
				</s:form>
			</div>
		</div>



		<div class="nomember">
			<h3>初めてのお客様</h3>
			商品購入の際はユーザー登録をお願いします。<br><br>
			<div class="nomember_btn">
				<button type="submit"
					onclick="location.href='<s:url action="GoUserRegisterAction"/>'">新規ユーザー登録</button>
			</div>
		</div>



	</div>
	<!--メインここまで -->

	<!--フッターここから-->
	<div id="footer">
		<p>Copyright© yataberyouhin All Rights Reserved.</p>
	</div>
	<!--フッターここまで-->

	<script type="text/javascript" src="script.js"></script>
</body>
</html>