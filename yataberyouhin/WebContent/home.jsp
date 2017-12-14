<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YATABE 谷田部良品</title>
<link rel="stylesheet" type="text/css" href="./css/home.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="./jquery.bxslider/jquery.bxslider.min.js"></script>
<link href="./jquery.bxslider/jquery.bxslider.css" rel="stylesheet">

<script type="text/javascript">
	$(function() {
		$(".bxslider").bxSlider({

			auto : true,
			controls : false,
			mode : 'fade',
			speed : 1000

		});
	});
</script>

</head>
<body>
	<!--ヘッダーここから-->
	<jsp:include page="subjsp/header.jsp" flush="true" />
	<!--ヘッダーここまで-->

	<!--メインここから -->
	<div id="main">

		<!-- PickUp スライドショーここから -->
		<br>
		<br>
		<br>
		<div class="pickup_title">
			<h2>今月のPickUp商品</h2>
		</div>
		<div class="slideshow">
			<ul class="bxslider">
				<li><img src="./image/kumabook.jpg"></li>
				<li><img src="./image/"></li>
				<li><img src="./image/"></li>
				<li><img src="./image/"></li>
			</ul>
		</div>
		<!-- PickUp スライドショーここまで -->

		<!-- categorybox title-->
		<br>
		<br>
		<br>
		<br>
		<div class="categorybox_book_title">
			<h3>本</h3>
		</div>

		<div class="categorybox_kaden_title">
			<h3>家電・パソコン</h3>
		</div>
		<div class="categorybox_omocya_title">
			<h3>おもちゃ・ゲーム</h3>
		</div>

		<div class="categorybox">
		<!-- categorybox 本 -->
		<div class="categorybox_book">
			<div class="book_image1"><img src="./image/soccerbook.jpg">
			<br><br><br>『<b>Yataber12月号</b>』<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;税込560円</div>
			<div class="book_image2"><img src="./image/gamebook.jpg">
			<br><br><br><br><br><br>『<b>どうぶつの林 攻略本</b>』<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;税込1200円</div>
			<div class="book_image3"><img src="./image/javabook.jpg">
			<br><br><br><br><br><br>『<b>初心者向けJava解説本</b>』<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;税込1200円</div>
			<div class="book_image4"><img src="./image/girlcomic.jpg">
			<br><br><br><br><br><br>『<b>少女漫画</b>』<br>&nbsp;&nbsp;税込450円</div>

		</div>
		<!-- categorybox 家電 -->
		<div class="categorybox_kaden">
			<div class="kaden_image1"><img src="./image/">
			<br><br><br>『<b></b>』<br>&nbsp;&nbsp;税込円</div>
			<div class="kaden_image2"><img src="./image/">
			<br><br><br><br><br>『<b></b>』<br>&nbsp;&nbsp;税込円</div>
			<div class="kaden_image3"><img src="./image/">
			<br><br><br><br><br><br>『<b></b>』<br>&nbsp;&nbsp;税込円</div>
			<div class="kaden_image4"><img src="./image/">
			<br><br><br><br><br>『<b></b>』<br>&nbsp;&nbsp;税込円</div>
		</div>
		<!-- categorybox  おもちゃ -->
		<div class="categorybox_omocya">
			<div class="omocya_image1"><img src="./image/">
			<br><br><br>『<b></b>』<br>&nbsp;&nbsp;税込円</div>
			<div class="omocya_image2"><img src="./image/">
			<br><br><br><br><br>『<b></b>』<br>&nbsp;&nbsp;税込円</div>
			<div class="omocya_image3"><img src="./image/">
			<br><br><br><br><br><br>『<b></b>』<br>&nbsp;&nbsp;税込円</div>
			<div class="omocya_image4"><img src="./image/">
			<br><br><br><br><br>『<b></b>』<br>&nbsp;&nbsp;税込円</div>
		</div>
		</div><br>


	</div>
	<br>
	<!--メインここまで -->

	<!--フッターここから-->
	<div id="footer">
		<p>Copyright© yataberyouhin All Rights Reserved.</p>
	</div>
	<!--フッターここまで-->
</body>
</html>