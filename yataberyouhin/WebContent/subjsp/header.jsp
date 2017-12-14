<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/header.css">
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css">

</head>
<body>
	<!--タイトルロゴここから-->
	<br>
	<div id="top">
		<div class="logo">YATABE 谷田部良品</div>
		<!--タイトルロゴここまで-->

		<!-- 検索機能ここから-->
		<div class="search_category">
			<s:form action="ProductSearchAction">
				<select name="categoryId">

					<option selected value="1">すべてのカテゴリー</option>
					<s:iterator value="#session.mCategoryDTOList" status="st">
						<option value='<s:property value="categoryId"/>'>
							<s:property value="categoryName" /></option>
					</s:iterator>
					<s:submit value="検索" />
				</select>
			</s:form>
		</div>

		<div class="search_free">
			<s:form action="ProductSearchAction">
				<input type="search" name="keyword" placeholder="キーワードを入力">
				<s:submit value="検索" />
			</s:form>

		</div>

	<br>
	<br>
	<!-- 検索機能ここまで -->

	<!-- snsここから -->
	<div class="sns">
	<a href="#"> <span
		style="font-size: 150%; color:#676767;"><i
			class="fa fa-instagram"></i></span></a>
	<a href="#"> <span
		style="font-size: 150%; color:#676767;"><i
			class="fa fa-twitter"></i></span></a>
	<a href="#"> <span
		style="font-size: 150%; color:#676767;"><i
			class="fa fa-facebook-square"></i></span></a></div></div>
			<!-- snsここまで -->

	<!--ヘッダーメニューここから-->
	<br><div id="header">
		<div class="menu">
			<ul>
				<li><a href="GoHomeAction">ホーム</a></li>
				<s:if test="!#session.loginFlg">
					<li><a href="GoLoginAction">ログイン</a></li>
				</s:if>
				<s:else>
					<li><a href="LogoutAction">ログアウト</a>
				</s:else>

				<li><a href="GoCartAction">カート</a>
				<li><a href="ProductInfoAction">商品一覧</a></li>
				<s:if test="#session.loginFlg">
					<li><a href="MyPage2Action">マイページ</a></li>
				</s:if>
				<s:else>
				</s:else>

			</ul>
		</div>
	</div>
	<!--ヘッダーメニューここまで-->
</body>
</html>
