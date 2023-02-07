<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<title>내담씨앤씨</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width, user-scalable=no">
<jsp:include page="/WEB-INF/views/user/common/script_css_js.jsp" />
</head>
  <body>
  <jsp:include page="/WEB-INF/views/user/common/header.jsp" />
   <div id="wrap" class="visual-center">
        <section id="container">
            <div id="contents" class="contents_top">
                <div class="sub_title_area">
                    <div class="inner_container">
                        <h2 class="sub_title">S I</h2>
                    </div>
                </div><!-- // .sub_title_area -->

                <div class="top_visual_area service_top_area type02">
                    <div class="inner_container aos-init aos-animate" data-aos="fade-up" data-aos-offset="0" data-aos-duration="300" data-aos-delay="150" data-aos-easing="linear">
                        <div class="top_txt_outer">
                            <div class="top_txt_area">
                                <span class="top_txt1">고객사 업무에 필요한 S/W 를 개발, 보급합니다.</span>
                                <p class="top_txt2">S I (System Integration)</p>
                                <p class="top_txt3">
                                    고객사 업무에 필요로 하는 정보시스템에 관한 기획에서부터 개발과 구축하고, <br class="hide_768"> 
                                    나아가서는 운영까지의 모든 서비스를 제공합니다.
                                </p>
                            </div>
                        </div>
                    </div>
                </div><!-- // .top_visual_area -->

                
                    <div class="inner_container">
                        <div class="layout_head">
                            <p class="si_txt1">
                            	IT Total Service 시스템 구축 전문가들이 함께 합니다.
                            </p>
                        </div>
						<div class="layout_body process-area">
							<div class="process-flow size-01 type01">
								<ol class="flow_list">
									<li class="si_li">
                                        <div class="recomm_box">
                                            <img src="${pageContext.request.contextPath}/resources/user/images/introduction/introduction_si_sub_1.jpg" alt="공공기관">
                                            <p class="recomm_txt">
                                                공공기관
                                            </p>
                                        </div>
                                    </li>
									<li class="si_li">
                                        <div class="recomm_box">
                                            <img src="${pageContext.request.contextPath}/resources/user/images/introduction/introduction_si_sub_2.jpg" alt="금융">
                                            <p class="recomm_txt">
                                                금융
                                            </p>
                                        </div>
                                    </li>
                                    <li class="si_li">
                                        <div class="recomm_box">
                                            <img src="${pageContext.request.contextPath}/resources/user/images/introduction/introduction_si_sub_3.jpg" alt="통신">
                                            <p class="recomm_txt">
                                                통신
                                            </p>
                                        </div>
                                    </li>
                                    <li class="si_li">
                                        <div class="recomm_box">
                                            <img src="${pageContext.request.contextPath}/resources/user/images/introduction/introduction_si_sub_4.jpg" alt="전자상거래">
                                            <p class="recomm_txt">
                                                전자상거래
                                            </p>
                                        </div>
                                    </li>
                                    <li class="si_li">
                                        <div class="recomm_box">
                                            <img src="${pageContext.request.contextPath}/resources/user/images/introduction/introduction_si_sub_5.jpg" alt="반도체">
                                            <p class="recomm_txt">
                                                반도체
                                            </p>
                                        </div>
                                    </li>
                                    <li class="si_li">
                                        <div class="recomm_box">
                                            <img src="${pageContext.request.contextPath}/resources/user/images/introduction/introduction_si_sub_6.jpg" alt="물류/서비스">
                                            <p class="recomm_txt">
                                                물류 / 서비스
                                            </p>
                                        </div>
                                    </li>
								</ol>
							</div>
						</div>                        
                        <%-- <div class="layout_body">
                            <div class="recomm_industry_slider">
                                <ul class="swiper-wrapper common-layout_3 is-vertical swiper_si_layout">
                                    <li class="items swiper-slide">
                                        <div class="recomm_box">
                                            <img src="${pageContext.request.contextPath}/resources/user/images/introduction/introduction_si_sub_1.jpg" alt="공공기관">
                                            <p class="recomm_txt">
                                                공공기관
                                            </p>
                                        </div>
                                    </li>
                                    <li class="items swiper-slide">
                                        <div class="recomm_box">
                                            <img src="${pageContext.request.contextPath}/resources/user/images/introduction/introduction_si_sub_2.jpg" alt="금융">
                                            <p class="recomm_txt">
                                                금융
                                            </p>
                                        </div>
                                    </li>
                                    <li class="items swiper-slide">
                                        <div class="recomm_box">
                                            <img src="${pageContext.request.contextPath}/resources/user/images/introduction/introduction_si_sub_3.jpg" alt="통신">
                                            <p class="recomm_txt">
                                                통신
                                            </p>
                                        </div>
                                    </li>
                                    <li class="items swiper-slide">
                                        <div class="recomm_box">
                                            <img src="${pageContext.request.contextPath}/resources/user/images/introduction/introduction_si_sub_4.jpg" alt="전자상거래">
                                            <p class="recomm_txt">
                                                전자상거래
                                            </p>
                                        </div>
                                    </li>
                                    <li class="items swiper-slide">
                                        <div class="recomm_box">
                                            <img src="${pageContext.request.contextPath}/resources/user/images/introduction/introduction_si_sub_5.jpg" alt="반도체">
                                            <p class="recomm_txt">
                                                반도체
                                            </p>
                                        </div>
                                    </li>
                                    <li class="items swiper-slide">
                                        <div class="recomm_box">
                                            <img src="${pageContext.request.contextPath}/resources/user/images/introduction/introduction_si_sub_6.jpg" alt="물류/서비스">
                                            <p class="recomm_txt">
                                                물류 / 서비스
                                            </p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div> --%>
                    
                </div>

                <div class="layout_section_outer biz_difference is-gray" data-js="anchor-target">
                    <div class="inner_container">
                        <div class="layout_body">
                            <ol class="difference_list">
                                <li>
                                    <div class="difference_img aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
                                        <img src="${pageContext.request.contextPath}/resources/user/images/introduction/introduction_si_1.jpg" alt="">
                                    </div>
                                    <div class="difference_box aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
                                        <p class="difference_title">
											업무에 필요한 시스템 구축
                                        </p>
                                        <p class="difference_desc">
                                           고객사 업무에 필요로 하는 정보시스템에 관한 기획에서부터 <br>
                                           최적의 시스템을 구축합니다.
											고객사 시스템을 안정적으로 신속하게 운영할 수 있도록 유지보수 서비스를 제공합니다.
                                        </p>
                                    </div>
                                </li>
                                <li class="is-right">
                                    <div class="difference_img aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
                                        <img src="${pageContext.request.contextPath}/resources/user/images/introduction/introduction_si_2.jpg" alt="">
                                    </div>
                                    <div class="difference_box aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
                                        <p class="difference_title">
											통합 유지보수
                                        </p>
                                        <p class="difference_desc">
                                            <Strong>시스템/보안/네트워크 정보시스템의 최적의 통합 유지보수 수행</Strong> <br><br>
                                            업무에 필요로 하는 정보시스템에 관한 기획에서부터 최적의 시스템을 
											안정적으로 신속하게 운영할 수 있도록 유지보수 서비스 제공합니다.<br><br>
											장애 수정, 기능 개선, 버전 업데이트, 정기점검 등을 통해 유저들이 시스템을
											안정적으로 사용 할 수 있도록 운영/관리를 위한 서비스를 제공합니다.
                                        </p>
                                    </div>
                                </li>
                                <li>
                                    <div class="difference_img aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
                                        <img src="${pageContext.request.contextPath}/resources/user/images/introduction/introduction_si_3.jpg" alt="">
                                    </div>
                                    <div class="difference_box aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
                                        <p class="difference_title">
											농협 전문서비스
                                        </p>
                                        <p class="difference_desc">
                                        	농협 경제 업무 및 유통 축산 업무에 특화된 시스템 개발 <br><br>
                                        	특화된 높은 기술력과 오랜 개발 경험을 기반으로 최적의 역량을 투입하여 최상의 사용성과 성능을 보유한 시스템을 개발하여 고객사 서비스의 성공적인 런칭과 활성화를 위한 서비스를 제공합니다.

                                        </p>
                                    </div>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div><!-- // .biz_difference -->
            </div><!-- // #contents -->
        </section><!-- // #container -->
    </div><!-- // #wrap -->
  <jsp:include page="/WEB-INF/views/user/common/footer.jsp" />	
  </body>
</html>
