<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<title>내담씨앤씨</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/> -->
<link rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/swiper_main.css">
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
</head>
<body>
	<!-- Slider main container -->
	<div class="swiper">
	  <!-- Additional required wrapper -->
	  <div class="swiper-wrapper">
	    <!-- Slides -->
	    <div class="swiper-slide">
			<a href="#">
				<div class="text-wrap">
					<h2>귀여운 첫번째 강아지</h2>
					<p>강아지는 귀엽다</p>
				</div>
				<img src="${pageContext.request.contextPath}/resources/imgs/imageBoard/dark_1.png">
			</a>
		</div>
	    <div class="swiper-slide">
			<a href="#">
				<div class="text-wrap">
					<h2>귀여운 두번째 강아지</h2>
					<p>다시봐도 귀엽다</p>
				</div>
				<img src="${pageContext.request.contextPath}/resources/imgs/imageBoard/dark_2.png">
			</a>
		</div>
	    <div class="swiper-slide">
			<a href="#">
				<div class="text-wrap">
					<h2>귀여운 세번째 강아지</h2>
					<p>키우고 싶다</p>
				</div>
				<img src="${pageContext.request.contextPath}/resources/imgs/imageBoard/dark_3.png">
			</a>
		</div>
	    ...
	  </div>
	  <!-- If we need pagination -->
	  <div class="swiper-pagination"></div>
	
	  <!-- If we need navigation buttons -->
	  <div class="swiper-button-prev"></div>
	  <div class="swiper-button-next"></div>
	
	</div>
	<link rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/swiper_style.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
	
</body>
</html>