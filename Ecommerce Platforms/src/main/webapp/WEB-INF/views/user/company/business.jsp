<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<title>내담씨앤씨</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/partnerShip.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/company.css">
<jsp:include page="/WEB-INF/views/user/common/script_css_js.jsp" />
</head>
  <body>
  <jsp:include page="/WEB-INF/views/user/common/header.jsp" />
        <section id="container" style="padding-top: 0;">
            <div id="contents">
            	<div class="business_introduce_wrapper">
                    <div class="division_container">
                        <div class="visual_txt_area com_intro">
                            <p class="txt3">
                            	혁신 그리고 신뢰와 열정으로
                            	<br />새로운 도전과 함께 큰 미래를 만들어갑니다.
                            </p>
                        </div>
                    </div>
                </div>
				<div class="business_title_area">
                    <div class="inner_container">
                        <h2 class="sub_title business_sub_title">사업 개요</h2>
                    </div>
                </div><!-- // .sub_title_area -->                
				<div class="layout_section_outer type04" data-js="anchor-target">
                    <div class="inner_container">
                        <div class="layout_head">
                            <p class="top_txt1">
                            	내담씨앤씨는 고객사의 고객 만족 및 내부 경쟁력 향상을 통하여 <br /> 
                            	기업의 성장을 이끄는 서비스를 제공 하고자 노력합니다.
                            </p>
                            <p class="top_txt3">
                                Process 및 System 컨설팅 경험에서 축적된 Know How를 바탕으로 업무에 필요한 Solution을 개발/보급하고, 자체 보유 Web 개발 툴을 활용하여
								전문 SI Application 개발 서비스와 DB 모델링, 컨설팅 등을 제공합니다.
                            </p>
                        </div>

                        <div class="layout_body">
                            <div class="welfare_benefit_area">
                                <ul class="welfare_benefit_list common-layout_2 is-vertical">
                                    <li class="items">
                                        <div class="welfare_benefit_box">
                                            <p class="benefit_title">
                                            	<span class="number">|</span>유형 전문 서비스
                                            </p>
                                            <p class="benefit_desc">
                                                Real Life는 일터를 벗어난 뒤 비로소 시작되기에
                                            </p>
                                            <ul class="benefit_list">
                                                <li>IT Application 운영 / 개선</li>
                                                <li>IT Solution Implementation</li>
                                                <li>DB 모델링 및 데이터 아키텍쳐</li>
                                                <li>SI Solution 개발</li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="items">
                                        <div class="welfare_benefit_box">
                                            <p class="benefit_title"><span class="number">|</span>무형 전문 서비스</p>
                                            <p class="benefit_desc">
                                                소중한 여가생활은 더욱 풍성하게
                                            </p>
                                            <ul class="benefit_list">
	                                            <li>시스템 진단 및 추진과제 개발</li>
	                                            <li>성과관리 체계 개발</li>
                                                <li>Business Process 설계</li>
                                                <li>SCM 교육 / 변화 관리</li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="layout_section_outer type04" data-js="anchor-target" style="padding: 0 0 160px;">
                	<div class="inner_container">
                        <div class="layout_head">
                            <p class="top_txt1">
                            	핵심 가치
                            </p>
                            <p class="top_txt3">
                                고객 중심의 서비스와 지속적인 파트너쉽으로 고객이 새로운 가치를 경험 할 수 있도록 합니다.
								신뢰, 존중, 열정, 정직, 도전을 바탕으로 최상의 팀웍을 통해, 끎임없이 변화하고 도전하며
								최고의 고객가치를 창조하는 핵심가치를 실천 합니다.
                            </p>
                        </div>                	
						<div class="layout_body process-area">
	                         <div class="business-flow">
	                             <ol class="flow_list">
	                                 <li class="color1">
	                                  <div class="flow_business_div_1 flow_color1">
										<p class="flow_main_title">
                                           	<span class="number">01 </span><br />신뢰
                                        </p>	                                  
	                                  </div>
	                                  <div class="flow_business_div_2">
	                                     <p class="flow_business_text_1">
	                                         IT Service 전문가<br class="hide_768">
	                                     </p>
	                                     <p class="flow_business_text_2">
											 국내 유수의 대기업들과<br /> 
										     파트너쉽을 맺고<br />
											 다년간 프로젝트 수행		                                     
	                                     </p>
	                                   </div>
	                                 </li>
	                                 <li class="color2">
	                                  <div class="flow_business_div_1 flow_color2">
										<p class="flow_main_title">
                                           	<span class="number">02 </span><br />존중
                                        </p>	                                  
	                                  </div>	                                 
	                                   <div class="flow_business_div_2">
	                                     <p class="flow_business_text_1">
	                                         맞춤형 서비스<br class="hide_768">
	                                     </p>
	                                     <p class="flow_business_text_2">
											 내담C&C만의<br />
											 IT Total Service로<br />
											 고객을 우선으로 하는	                                     
	                                     </p>
	                                   </div>
	                                 </li>
	                                 <li class="color3">
	                                  <div class="flow_business_div_1 flow_color3">
										<p class="flow_main_title">
                                           	<span class="number">03 </span><br />열정
                                        </p>	                                  
	                                  </div>	                                 
	                                   <div class="flow_business_div_2">
	                                     <p class="flow_business_text_1">
	                                         도전과 혁신<br class="hide_768">
	                                     </p>
	                                     <p class="flow_business_text_2">
											 일에 대한 몰입과<br />
											 실행력으로 성과 창출을<br />
											 위하여 끊임없는 노력                                 
	                                     </p>
	                                   </div>
	                                 </li>
	                                 <li class="color4">
	                                  <div class="flow_business_div_1 flow_color4">
										<p class="flow_main_title">
                                           	<span class="number">04 </span><br />정직
                                        </p>	                                  
	                                  </div>	                                 
	                                   <div class="flow_business_div_2">
	                                     <p class="flow_business_text_1">
	                                         헌신<br class="hide_768">
	                                     </p>
	                                     <p class="flow_business_text_2">
											 정도를 지켜<br />
											 맡은 업무에<br />
											 최고가 되기 위한 헌신	                                     
	                                     </p>
	                                   </div>
	                                 </li>
	                                 <li class="color5">
	                                  <div class="flow_business_div_1 flow_color5">
										<p class="flow_main_title">
                                           	<span class="number">05 </span><br />도전
                                        </p>	                                  
	                                  </div>	                                 
	                                   <div class="flow_business_div_2">
	                                     <p class="flow_business_text_1">
	                                         IT Total Service<br class="hide_768">
	                                         Provider로 성장
	                                     </p>
	                                     <p class="flow_business_text_2">
											 국내 대기업 위주의<br />
											 글로벌 경쟁력을 갖춘<br />
											 서비스	                                     
	                                     </p>
	                                   </div>
	                                 </li>
	                             </ol>
	                         </div>
	                     </div> 
	                 </div>               
                </div>
				<div class="layout_section_outer type04" data-js="anchor-target" style="padding: 0 0 160px;">
                    <div class="inner_container">
                        <div class="layout_head">
                            <p class="top_txt1">
                            	Vision & Mission
                            </p>
                            <p class="top_txt3">
                                내담씨앤씨는 2008년 7월에 첫 발걸음을 내디뎠습니다. 
								고객의 만족을 위하여 보다 합리적이고 최대한 많은 기업이 만족하길 바라는 마음에서
								컨설턴트급 경력자로 구성된 내담人들이 같은 꿈을 갖고 목표를 함께하고 있습니다.
                            </p>
                        </div>
                        <div class="layout_sub_body">
                             <div class="welfare_benefit_area">
                                <ul class="welfare_benefit_list common-layout_2 is-vertical">
                                    <li class="items_2">
                                        <div class="business_layout_sub">
                                        	<img class="vision_Icon" >
											<p class="business_layout_sub_title">
	                                            VISION
                                            </p>                                            
                                            <p class="business_layout_sub_contents">
                                            	글로벌 경쟁력을 갖춘 IT Total Service로의 성장 목표 
                                            </p>
                                        </div>
                                    </li>
                                    <span class="jb-division-line"></span>
                                    <li class="items_2">
                                        <div class="business_layout_sub">
                                            <p class="business_layout_sub_title">
                                            	MISION
                                            </p>
                                            <p class="business_layout_sub_contents">
                                            	고객사의 고객만족 및  내부 경쟁력 향상
                                            </p>
                                        </div>
                                    </li>
                                    <span class="jb-division-line"></span>
                                    <li class="items_2">
                                        <div class="business_layout_sub">
                                            <p class="business_layout_sub_title">
                                            	MISION
                                            </p>
                                            <p class="business_layout_sub_contents">
                                            	고객사의 고객만족 및 내부 경쟁력 향상
                                            </p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div> 
                    </div>
                </div>                
            </div><!-- // #contents -->
        </section><!-- // #container -->  
  <jsp:include page="/WEB-INF/views/user/common/footer.jsp" />	
  </body>
</html>
