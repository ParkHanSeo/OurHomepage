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
        <section id="container" class="is-movie" style="padding-top: 0;">
            <div id="contents">
                <div class="business-wrapper division_wrapper">
                    <div class="division_container">
                        <div class="visual_txt_area com_intro">
                            <p class="txt1">
                            	혁신 그리고 신뢰와 열정으로
                            	<br />함께 미래를 만들어갑니다.
                            </p>
                        </div>
                    </div>
                </div>
                <div>
				<div class="sub_title_area">
                    <div class="inner_container contents_top">
                        <h2 class="sub_title business_sub_title">사업부 소개</h2>
                    </div>
                </div><!-- // .sub_title_area -->
					<div class="inner_container">
                        <p class="common_txt-40">
                            내담씨앤씨의 사업부를 소개합니다.<!-- <br class="hide_768"> -->
                        </p>

                        <ul class="common-layout_2 is-vertical division_list">
                            <li class="items item_left">
                                <p class="division_img img_left">
                                	<%-- <img src="${pageContext.request.contextPath}/resources/user/images/company/division/division_business.png" alt=""> --%>
                                	<img src="${pageContext.request.contextPath}/resources/user/images/company/division/ex_strategic.jpg" alt="">
                                </p>
                                <div class="div_division_left">
	                                <p class="division_name">전략기획팀</p>
	                                <p class="division_info">
	                                    - 사업전략기획/수립<br>
	                                    - 신규사업개발 및 제휴<br>
	                                    - Global Business 연계<br>
	                                    - 디자인 지원<br>
	                                    - IR<br>
	                                </p>
	                            </div>
                            </li>
                            <li class="items item_left">
                                <p class="division_img img_left">
                                	<%-- <img src="${pageContext.request.contextPath}/resources/user/images/company/division/division_disital.png" alt=""> --%>
                                	<img src="${pageContext.request.contextPath}/resources/user/images/company/division/ex_digtal twin.jpg" alt="">
                                </p>
                                <div class="div_division_left">
	                                <p class="division_name">Digital Twin 사업부</p>
	                                <p class="division_info">
	                                    - 산업 데이터 모니터링 <br>
	                                    - 공정관리 시스템 <br>
	                                    - 양방향 정보교환 설계<br>
	                                    - 다자간 의사 결정 지원<br>
	                                    - 제품 수명 주기 결정<br>
	                                </p>
	                            </div>
                            </li>
                            <li class="items item_left">
                                <p class="division_img img_left">
                                	<img src="${pageContext.request.contextPath}/resources/user/images/company/division/ex_hi-tech.jpg" alt="">
                                	<%-- <img src="${pageContext.request.contextPath}/resources/user/images/company/division/division_hitech.jpeg" alt=""> --%>
                                </p>
                                <div class="div_division_left">
	                                <p class="division_name">ICT 사업부</p>
	                                <p class="division_info">
	                                	- SCM,PLM,CRM 개발<br>
	                                    - 사업전략기획/수립<br>
	                                    - 신규사업개발 및 제휴<br>
	                                    - 공장 자동화 S/W<br>
										- EES S/W ERP/MES 개발<br>
	                                </p>
	                            </div>
                            </li>
                            <li class="items item_left">
                                <p class="division_img img_left">
                                	<img src="${pageContext.request.contextPath}/resources/user/images/company/division/ex_vision ai.jpg" alt="">
                                	<%-- <img src="${pageContext.request.contextPath}/resources/user/images/company/division/division_visionai.jpeg" alt=""> --%>
                                </p>
                                <div class="div_division_left">
	                                <p class="division_name">Vision AI 사업부</p>
	                                <p class="division_info">
	                                    - 객체 인식 / 분석 AI 서비스<br>
	                                    - 선행 학습된 Model 제공 <br>
	                                    - 객체 인식 및 텍스트 판독 <br>
	                                    - 상황 분석 및 실시간 연동 <br>
	                                </p>
	                            </div>
                            </li>
                            <li class="items item_left">
                                <p class="division_img img_left">
                                	<img src="${pageContext.request.contextPath}/resources/user/images/company/division/ex_cloud.jpg" alt="">
                                	<%-- <img src="${pageContext.request.contextPath}/resources/user/images/company/division/division_cloud.png" alt=""> --%>
                                </p>
                                <div class="div_division_left">
	                                <p class="division_name">Cloud MSP 사업부</p>
	                                <p class="division_info">
	                                    - 클라우드 인프라 컨설팅<br>
	                                    - 고객 맞춤 아키텍쳐 설계<br>
	                                    - 최적화된 Migration 설계<br>
	                                    - 클라우드 서비스 운영 관리<br>
	                                </p>
	                            </div>
                            </li>
                            <li class="items item_left">
                                <p class="division_img img_left">
                                	<img src="${pageContext.request.contextPath}/resources/user/images/company/division/ex_si.jpg" alt="">
                                	<%-- <img src="${pageContext.request.contextPath}/resources/user/images/company/division/division_si.png" alt=""> --%>
                                </p>
                                <div class="div_division_left">
	                                <p class="division_name">SI 사업부</p>
	                                <p class="division_info">
	                                    - SCM,CRM 컨설팅/개발<br>
	                                    - System Modeling<br>
	                                    - 외부 System 1/F<br>
	                                    - Solution Business<br>
	                                    - Si (System Integration)<br>
	                                </p>
	                            </div>
                            </li>                            
                        </ul>
                    </div>
                 </div>
            </div><!-- // #contents -->
        </section><!-- // #container -->
<!-- footer -->		
<jsp:include page="/WEB-INF/views/user/common/footer.jsp" />
<!-- footer -->
</body>
</html>