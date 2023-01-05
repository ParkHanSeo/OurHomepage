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
			            사업부 소개
			        </h1>
			        <p class="center">
			            (주)내담C&amp;C는 축적된 경험 및 Knowhow와 이를 뒷받침 해주는 전문화된 Skill 및 Solution을 기반으로 고객사의 고객 만족 및 내부 경쟁력 향상을 이끌어 내어<br>
			            한단계 업그레이드 시키는 것을 Mission으로 하고 있으며 나아가 글로벌 경쟁력을 갖춘 IT Total Service Provider 기업으로의 성장을 비전으로 하고 있습니다.
			        </p>
		        </div>
		        <div class="margin-bottom-30"></div>
		        <p>
		        	<img src="${pageContext.request.contextPath}/resources/imgs/neadam/division.png" class="img-responsive center">
		        </p>
		        <p>
		        	<img src="${pageContext.request.contextPath}/resources/imgs/neadam/division_2.png">
		        </p>
				<p>
		        	<img src="${pageContext.request.contextPath}/resources/imgs/neadam/division_3.png">
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