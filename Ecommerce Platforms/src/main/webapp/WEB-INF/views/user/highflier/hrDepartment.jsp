<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<title>내담씨앤씨</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- include  -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/recruit.css">
<jsp:include page="/WEB-INF/views/user/common/script_css_js.jsp" />
<!-- include end  -->
<!-- 사용자 정의 끝 -->
</head>
<body>
<!-- haeder -->
<jsp:include page="/WEB-INF/views/user/common/header.jsp" />
<!-- haeder -->
<body>
    <div id="wrap">
		<section id="container">
            <div id="contents" class="contents_top">>
                <div class="sub_title_area">
                    <div class="inner_container">
                        <h2 class="sub_title">인사제도</h2>
                    </div>
                </div><!-- // .sub_title_area -->

                <div class="top_visual_area recruit">
                    <div class="inner_container">
                        <div class="top_txt_outer">
                            <div class="top_txt_area">
                                <p class="top_txt2">내담씨앤씨의 인사제도를 소개합니다.</p>
                                <p class="top_txt3">
                                    (주)내담C&C는 삼성멀티캠퍼스의 집합 또는 온라인 교육과 현장 교육을 통해 인재를 육성하며 <br />
                                    다양한 복리후생 지원을 함으로서 조직에 대한 신뢰와 일에 대한 자부심 <br / >
                                    사원들 간의 재미있고 신바람 나는 직장을 만들어 나가고 있습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                </div><!-- // .top_visual_area -->

                <div class="layout_section_outer recruit2">
                    <div class="inner_container">
                        <div class="layout_head">
                            <p class="top_txt1">
                                채용 프로세스
                            </p>
                        </div>
                        <div class="layout_body process-area">
                            <div class="process-flow size-01 type01">
                                <ol class="flow_list">
                                    <li class="color1">
                                        <span class="flow_num color1">01</span>
                                        <p class="flow_txt">
                                            <em>01</em><br class="hide_768">
                                            양식 다운로드/작성
                                        </p>
                                    </li>
                                    <li class="color2">
                                        <span class="flow_num color2">02</span>
                                        <p class="flow_txt">
                                            <em>02</em><br class="hide_768">
                                            Email 접수
                                        </p>
                                    </li>
                                    <li class="color3">
                                        <span class="flow_num color3 txt-white">03</span>
                                        <p class="flow_txt txt-white">
                                            <em>03</em><br class="hide_768">
                                            1차 서류전형
                                        </p>
                                    </li>
                                    <li class="color4">
                                        <span class="flow_num color4 txt-white">04</span>
                                        <p class="flow_txt txt-white">
                                            <em>04</em><br class="hide_768">
                                            2차 면접전형
                                        </p>
                                    </li>
                                    <li class="color5">
                                        <span class="flow_num color5 txt-white">05</span>
                                        <p class="flow_txt txt-white">
                                            <em>05</em><br class="hide_768">
                                            입사확정
                                        </p>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>

                    <div class="inner_container">
                        <div class="layout_head">
                            <p class="top_txt1">
                                인사제도
                            </p>
                        </div>

                        <div class="layout_body process-area">
                            <div class="process-flow size-02 type01">
                                <ul class="box-layout_3 is-vertical">
                                    <li class="items common-cont_box">
                                        <p class="cont_title">
                                        <em>01</em> 연봉제</p>
                                        <p class="cont_desc">
                                            능력과 성과에 따라 보수를 결정하는 연봉제 실시
                                        </p>
                                    </li>
                                    <li class="items common-cont_box">
                                        <p class="cont_title">
                                        <em>02</em> 성과보상제도</p>
                                        <p class="cont_desc">
                                            개인업무 성과와 업무수행 역량에 대한 평가로 구성되며 12월 하반기에 실시 / 지급
                                        </p>
                                    </li>
                                    <li class="items common-cont_box">
                                        <p class="cont_title"><em>03</em> 근무시간 / 휴가</p>
                                        <p class="cont_desc">
                                            주 5일 근무와 연차 휴가 시행
                                        </p>
                                    </li>
                                    <li class="items common-cont_box">
                                        <p class="cont_title"><em>04</em> 복리후생</p>
                                        <p class="cont_desc">
                                            법정 4대보험, 출산지원금, 학자금 지원
                                        </p>
                                    </li>
                                    <li class="items common-cont_box">
                                        <p class="cont_title"><em>05</em> 경조금 지원</p>
                                        <p class="cont_desc">
                                            본인 결혼을 비롯해 부모회갑, 형제 결혼 등 경조사 지원
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </div>                       
                    </div>
					<div class="inner_container">
                        <div class="layout_head">
                            <p class="top_txt1">
                                교육제도
                            </p>
                        </div>
						<div class="layout_body process-area">
                            <div class="process-flow size-02 type01">
                                <ul class="box-layout_3 is-vertical">
                                    <li class="items common-cont_box">
                                        <p class="cont_title">
                                        <em>01</em> 교육 훈련비 지원</p>
                                        <p class="cont_desc">
                                             IT 관련 자격증 및 현장 업무에 필요한 각종 교육 훈련비 제공
                                        </p>
                                    </li>
                                    <li class="items common-cont_box">
                                        <p class="cont_title">
                                        <em>02</em> 신입사원 교육</p>
                                        <p class="cont_desc">
                                            Workshop등의 교육과정을 통해 신입사원들이 조직과 기술에 대해 이해하고 <br /> 
                                            (주)내담C&C인으로 성장하기 위한 발판을 마련
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </div>                         
                    </div>               
                </div><!-- // .layout_section_outer -->

            </div><!-- // #contents -->
        </section><!-- // #container -->
    </div><!-- // #wrap -->
<!-- footer -->		
<jsp:include page="/WEB-INF/views/user/common/footer.jsp" />
<!-- footer -->
</body>
</html>