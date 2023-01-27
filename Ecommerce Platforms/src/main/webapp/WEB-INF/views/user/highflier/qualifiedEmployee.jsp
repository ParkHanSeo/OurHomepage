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
            </div><!-- // #contents -->
                <div class="layout_section_outer layout_employee" data-js="anchor-target">
                    <div class="inner_container">
                        <div class="employee_layout_body">
                    		<div>
	                    		<p class="main_title">인재상</p>
    							<p class="talent_txt">(주)내담C&C는 진취적이고 프로정신을 가진 인재를 소중히 여기는 기업입니다.</p>                		
                    		</div>
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
                                                유연한
                                            </p>
                                            <p class="sub_txt">Flexible</p>
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
	                                <section class="contents_section">
										<div class="company_culture">
											<div class="main_title">
												<span>기업 문화</span>
												<span class="culture_bar" ></span>
											</div>
											<p class="culture_txt">내담은 기업과 근로자가 발 맞추어 성장하는 기업으로 상생을 추구합니다.<p>
		                                	<div class="culture_section">
		                                		<div class="company_culture_imgbox_left_01">
		                                		</div>
		                                		<div class="company_culture_box_right">
													<p class="culture_sub_title">내담은 신뢰와 존중을 사랑합니다. </p>
													<span class="culture_txt">
														더 나은 결과를 위해 자유롭게 자신의 의견을 표현하며, 서로의 견해가 다르다 하더라도 상대방의 의견에 귀를 기울입니다. <br>
														또한 전달하는 형식에 있어서 포장보다는 내용에 집중합니다. 화려한 PPT보다는 핵심적인 한문장을 전달하기 위해 노력합니다.
													</span>
		                                		</div>
		                               		</div>
										<div class="company_culture">
		                                	<div class="culture_section">
		                                		<div class="company_culture_imgbox_right_02">
		                                		</div>
		                                		<div class="company_culture_box_left">
													<p class="culture_sub_title">내담은 인재육성에 있어서 투자를 아끼지 않습니다. </p>
													<span class="culture_txt">
														구성원의 성장과 기업의 성장은 대동소이합니다. 따라서 내담은 교육사업에 지원을 아끼지 않습니다.<br>
														재직자 교육, 연수원 교육, 직무향상교육 및 자격증 취득 등의 구성원의 성장을 지원합니다. <br>
														또한 업무 중  필요한 장비가 있을 시, 회사에서 지원합니다.
													</span>
		                                		</div>
		                               		</div>
										<div class="company_culture">
		                                	<div class="culture_section">
		                                		<div class="company_culture_imgbox_left_03">
		                                		</div>
		                                		<div class="company_culture_box_right">
													<p class="culture_sub_title">내담은 구성원들에게 명확한 Process를 제시합니다. </p>
													<span class="culture_txt">
														구성원들의 시간과 노력은  무엇보다 큰 자산이며, 모든일에 집중하기에는 크나큰 집중력이 필요로 합니다. <br>
														따라서 내담은 구성원들에게 그들의 모든 일에 집중하는 것 보다는 효율적으로 일을 할 수 있도록 명확한 프로세스를 제시합니다.
													</span>
		                                		</div>
		                               		</div>
		                                </div>
	                                </section>
                            </div>
                        </div>
                    </div>
                </div>
        </section><!-- // #container -->
</div>
</body>
<!-- footer -->		
<jsp:include page="/WEB-INF/views/user/common/footer.jsp" />
<!-- footer -->
</html>