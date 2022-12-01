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

img {
    vertical-align: middle;
    border: 0;    
	display: block;
    max-width: 100%;
    height: auto;    
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
			            연혁
			        </h1>
			        <p class="center">
			            (주)내담C&C의 연혁을 알려드립니다.
			        </p>
		        </div>
		        <div class="margin-bottom-30"></div>
		        <p>
		        	<img src="${pageContext.request.contextPath}/resources/imgs/neadam/history_1.jpeg" class="img-responsive center">
		        </p>
		        <p>
		        	<img src="${pageContext.request.contextPath}/resources/imgs/neadam/history_2.jpeg" class="busness_main">
		        </p>
				<p>
		        	<img src="${pageContext.request.contextPath}/resources/imgs/neadam/history_3.png">
		        </p>		        		        		        
	        </div>
		</main>
	</section>
	
<!-- footer -->		
<jsp:include page="/WEB-INF/views/user/common/footer.jsp" />
<!-- footer -->
</body>
</html>