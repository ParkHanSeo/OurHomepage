<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<title>내담씨앤씨</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- include  -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/employee.css">
<jsp:include page="/WEB-INF/views/user/common/script_css_js.jsp" />
<!-- include end  -->
<!-- 사용자 정의 끝 -->
</head>
<body>
<!-- haeder -->
<jsp:include page="/WEB-INF/views/user/common/header.jsp" />
<!-- haeder -->
<div id="wrap">
        <section id="container">
            <div id="contents" class="contents_top employee_contents">
                <div class="sub_title_area">
                    <div class="inner_container">
                        <h2 class="sub_title">인재상</h2>
                    </div>
                </div><!-- // .sub_title_area -->
				<div class="top_visual_area recruit">
                    <div class="inner_container">
                        <div class="top_txt_outer">
                            <div class="top_txt_area txt_notice">
                                <p class="top_txt2">
                                	최고의 경쟁력을 가진 인재 육성
                                </p>
                                <p class="top_txt3">
                                    (주)내담C&C는 진취적이고 프로정신을 가진 인재를 소중히 여기는 기업입니다.<br />
                                    내담C&C와 미래를 함께 할 당신의 지원을 기다립니다.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>                
                <div class="layout_section_outer layout_employee" data-js="anchor-target">
                    <div class="inner_container">
                        <div class="employee_layout_body">
                            <div class="culture_card_area">
                                <ul class="culture_card_list common-layout_2 box-type02 is-vertical">
                                    <li class="bg-type01 employee_li_items">
                                        <a href="#self">
                                            <p class="culture_card_title">
                                                뛰어남
                                            </p>
                                            <p class="sub_txt">Excellence</p>
                                            <i class="icon culture-icon-01"></i>
                                            <span class="icon card_ui-more employee_icon_black"></span>
                                        </a>
                                        <div class="culture_card_detail">
                                            <ul class="culture_card_txt">
                                                <li>
                                                    최고와 더불어 최선을 다하는 인재를 추구합니다.
                                                </li>
                                            </ul>
                                            <button type="button" class="icon card_ui-close"></button>
                                        </div>
                                    </li>
                                    <li class="bg-type02 employee_li_items">
                                        <a href="#self">
                                        	<p class="culture_card_title">
                                                혁신
                                            </p>
                                            <p class="sub_txt">Innovation</p>
                                            <i class="icon culture-icon-02"></i>
                                            <span class="icon card_ui-more employee_icon_white"></span>
                                        </a>
                                        <div class="culture_card_detail">
                                            <ul class="culture_card_txt">
                                                <li>
                                                    끊임없이 혁신을 꿈꾸는 인재를 추구합니다.
                                                </li>
                                            </ul>
                                            <button type="button" class="icon card_ui-close is-black"></button>
                                        </div>
                                    </li>                                                              
                                    <li class="bg-type03 employee_li_items">
                                        <a href="#self">
                                            <p class="culture_card_title">
                                                고민
                                            </p>
                                            <p class="sub_txt">Customer Fixation</p>
                                            <i class="icon culture-icon-03"></i>
                                            <span class="icon card_ui-more employee_icon_black"></span>
                                        </a>
                                        <div class="culture_card_detail">
                                            <ul class="culture_card_txt">
                                                <li>
                                                    고객의 기대와 요구에 앞서 고민하고 실천하는 인재를 추구합니다.
                                                </li>
                                            </ul>
                                            <button type="button" class="icon card_ui-close is-black"></button>
                                        </div>
                                    </li>
                                    <li class="bg-type04 employee_li_items">
                                        <a href="#self">
                                            <p class="culture_card_title">
                                                협동심
                                            </p>
                                            <p class="sub_txt">Teamwork</p>
                                            <i class="icon culture-icon-04"></i>
                                            <span class="icon card_ui-more employee_icon_white"></span>
                                        </a>
                                        <div class="culture_card_detail">
                                            <ul class="culture_card_txt">
                                                <li>
                                                    협력을 통해 더 큰 성과를 창출하는 인재를 추구합니다.
                                                </li>
                                            </ul>
                                            <button type="button" class="icon card_ui-close"></button>
                                        </div>
                                    </li>
                                    <li class="bg-type05 employee_li_items">
                                        <a href="#self">
                                            <p class="culture_card_title">
                                                책임감
                                            </p>
                                            <p class="sub_txt">Community</p>
                                            <i class="icon culture-icon-04"></i>
                                            <span class="icon card_ui-more employee_icon_black"></span>
                                        </a>
                                        <div class="culture_card_detail">
                                            <ul class="culture_card_txt">
                                                <li>
													기업의 역할과 책임을 이해하고 실천하는 인재를 추구합니다.
                                                </li>
                                            </ul>
                                            <button type="button" class="icon card_ui-close"></button>
                                        </div>
                                    </li>
                                    <li class="bg-type06 employee_li_items">
                                        <a href="#self">
                                            <p class="culture_card_title">
                                                댕청미
                                            </p>
                                            <p class="sub_txt">Fun</p>
                                            <i class="icon culture-icon-04"></i>
                                            <span class="icon card_ui-more employee_icon_white"></span>
                                        </a>
                                        <div class="culture_card_detail">
                                            <ul class="culture_card_txt">
                                                <li>
                                                    유머와 재능을 살려 즐겁게 일하는 일터를 만드는 인재를 추구합니다.
                                                </li>
                                            </ul>
                                            <button type="button" class="icon card_ui-close"></button>
                                        </div>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- // #contents -->
        </section><!-- // #container -->
</div>
</body>
<!-- footer -->		
<jsp:include page="/WEB-INF/views/user/common/footer.jsp" />
<!-- footer -->
</html>