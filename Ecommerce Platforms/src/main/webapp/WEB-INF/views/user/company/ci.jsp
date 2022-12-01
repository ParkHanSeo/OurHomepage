<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<title>내담씨앤씨</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta property="og:url" content="https://www.jhta.co.kr">

<!-- include  -->
<jsp:include page="/WEB-INF/views/user/common/script_css_js.jsp" />
<!-- include end  -->
<!-- 사용자 정의 끝 -->
</head>
<style>
.content {
    padding-top: 40px;
    padding-bottom: 40px;
    width: 1170px;
	margin-right: auto;
	margin-left: auto;
	padding-left: 15px;
	padding-right: 15px;   
}
.main_title{
	font-size: x-large;
}
</style>
<body class="page-92 dep1-about-the-academy--fc page-url-history--fc">
<!-- haeder -->
<jsp:include page="/WEB-INF/views/user/common/header.jsp" />
<!-- haeder -->

	<section id="wrapper">
		<main id="contents">
			<div class="content">
				<div class="heading">
			        <h1 class="main_title">
			            C I 규정
			        </h1>
			        <p class="center">
			            (주)내담C&amp;내담C&C의 '내담'은 한 걸음 한 걸음 앞으로 '내딛는다'라는 뜻의 순우리말입니다.<br>
			            내담의 주 컬러인 파란색과 깔끔한 로고체를 사용하여 기술의 신뢰, 정직, 정확, 그리고 열린 기업의 이미지를 뜻합니다. 날카로운 직선과
			            곡선의 적절한 배함은 정확, 신속하면서 유연한 내담의 성격을 뜻합니다.
			        </p>
		        </div>
		        <div class="margin-bottom-30"></div>
		        <p>
		        	<img src="${pageContext.request.contextPath}/resources/imgs/neadam/ci_1.jpeg" class="img-responsive center">
		        </p>
		        <p>
		        	<img src="${pageContext.request.contextPath}/resources/imgs/neadam/ci_2.png">
		        </p>
	        </div>
			<%-- <div>
				<img class = "busness_main" src="${pageContext.request.contextPath}/resources/imgs/neadam/division.png">
			</div>
			<div>
				<img class = "busness_main2" src="${pageContext.request.contextPath}/resources/imgs/neadam/division_2.png">
			</div> --%>
		</main>
	</section>
	
<!-- footer -->		
<jsp:include page="/WEB-INF/views/user/common/footer.jsp" />
<!-- footer -->
</body>
</html>