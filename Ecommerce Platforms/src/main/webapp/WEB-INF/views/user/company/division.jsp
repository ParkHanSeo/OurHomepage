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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/company.css">
<jsp:include page="/WEB-INF/views/user/common/script_css_js.jsp" />
<!-- include end  -->
<!-- 사용자 정의 끝 -->
</head>
<body>
<!-- haeder -->
<jsp:include page="/WEB-INF/views/user/common/header.jsp" />
<!-- haeder -->

<script>
$(function(){
	// 검색어 유효성 체크
	$("#btnCommonSearchAll").click(function(){
		if($("#inputSearch").val() == "") {
			$(".result-error-txt").show();
			return false;	
		}
	});
});

</script>
        <section id="container" class="is-movie">
            <div id="contents">
                <div class="business-wrapper">
                    <img class="business_top_img" src="${pageContext.request.contextPath}/resources/user/images/business_top.jpg">
                    <div class="inner_container">
                        <div class="visual_txt_area com_intro">
                            <p class="txt1">
                            	혁신 그리고 신뢰와 열정으로
                            	<br />새로운 도전과 함께 큰 미래를 만들어갑니다.
                            </p>
                        </div>
                    </div>
                </div>
				<div class="sub_title_area contents_top">
                    <div class="inner_container">
                        <h2 class="sub_title">사업부 소개</h2>
                    </div>
                </div><!-- // .sub_title_area -->
                <div class="inner_business_container">
                    <img class="business_division" src="${pageContext.request.contextPath}/resources/imgs/neadam/division_3.png">
                </div>
            </div><!-- // #contents -->
        </section><!-- // #container -->
<!-- footer -->		
<jsp:include page="/WEB-INF/views/user/common/footer.jsp" />
<!-- footer -->
</body>
</html>