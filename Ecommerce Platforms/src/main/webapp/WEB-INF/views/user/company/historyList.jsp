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
/* 
img {
	vertical-align: middle;
	border: 0;
	display: block;
	max-width: 100%;
	height: auto;
} */
.main_title {
	font-size: x-large;
}

@font-face {
	font-family: 'GothicA1-Light';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/GothicA1-Light.woff2')
		format('woff2');
	font-weight: 300;
	font-style: normal;
}

body {
	font-family: 'GothicA1-Light';
}

#cont1 li {
	margin-left: 0px;
}

.history {
	
}
</style>
<script type="text/javascript">
	/* 연혁 처음 값에 class 추가 */
	$(document).ready(function() {
		$('ol').children('li:eq(0)').addClass("first");
	})
</script>
<body>
	<!-- haeder -->
	<jsp:include page="/WEB-INF/views/user/common/header.jsp" />
	<!-- haeder -->
	<div class="history" id="wrap">
		<section id="container">
			<div id="contents">
				<div class="sub_title_area">
					<div class="common-swiper_area">
						<div class="inner_container">
							<h2 class="sub_title">(주)내담C&C 연혁</h2>
						</div>

					</div>
					<!-- // .sub_title_area -->
					<div class="top_visual_area type01">
						<div class="inner_container">
							<div class="top_txt_outer">
								<div class="top_txt_area">
									<!-- <p class="top_txt2"
										style="color: black; margin-top: 160px;">
										</p> -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 서브 타이틀 -->
				<div class="common-swiper_area">
					<div class="inner_container">
						<div class="common-swiper_tab">
						<p class="top_txt2"
										style="color: black;">
										(주)내담C&C의 연혁을 알려드립니다.</p>
							<ul class="swiper-wrapper">
							
								
							
								<!-- <li class="swiper-slide active"><a href="/company/history"
									class="is-link">회사연혁</a></li> -->
								<div class="layout_section_outer history_sec">
									<div>
										<div class="tab-cont-wrap">
											<div class="tab-cont active" id="cont1">
												<ol>
													<c:forEach var="year" items="${years}">
														<li>
															<h3>
																<c:out value="${year.year}" />
															</h3>
															<dl>
																<c:forEach var="month" items="${months}">
																	<c:if test="${month.year == year.year}">
																		<!-- 해당년도의 월 -->
																		<dt>
																			<fmt:formatNumber type="number" pattern="##" minIntegerDigits="2" value="${month.month}"/>
																			<%-- <c:out value="${month.month}" /> --%>
																		</dt>
																		<!-- 해당하는 연혁 -->
																		<c:forEach var="content" items="${history}">
																			<c:if
																				test="${(month.month == content.month)&&(month.year == content.year)}">
																				<dd>
																					<c:out value="${content.content}" />
																				</dd>
																			</c:if>
																		</c:forEach>
																	</c:if>
																</c:forEach>
															</dl>

														</li>
													</c:forEach>
													<!-- S: 삭제 예정 -->
													<li>
														<h3>2021</h3>
														<dl>
															<dt>05</dt>
															<dd>반델란드와 AI 스마트 물류 사업 업무 협약 체결</dd>
															<dd>반델란드와 AI 스마트 물류 사업 업무 협약 체결</dd>
															<dt>03</dt>
															<dd>반델란드와 AI 스마트 물류 사업 업무 협약 체결</dd>
															<dd>반델란드와 AI 스마트 물류 사업 업무 협약 체결</dd>
														</dl>
													</li>
													<li>
														<h3>2020</h3>
														<dl>
															<dt>02</dt>
															<dd>반델란드와 AI 스마트 물류 사업 업무 협약 체결</dd>
															<dd>반델란드와 AI 스마트 물류 사업 업무 협약 체결</dd>
															<dt>01</dt>
															<dd>반델란드와 AI 스마트 물류 사업 업무 협약 체결</dd>
															<dd>반델란드와 AI 스마트 물류 사업 업무 협약 체결</dd>
														</dl>
													</li>
													<li>
														<h3>2020</h3>
														<dl>
															<dt>02</dt>
															<dd>반델란드와 AI 스마트 물류 사업 업무 협약 체결</dd>
															<dd>반델란드와 AI 스마트 물류 사업 업무 협약 체결</dd>
															<dt>01</dt>
															<dd>반델란드와 AI 스마트 물류 사업 업무 협약 체결</dd>
															<dd>반델란드와 AI 스마트 물류 사업 업무 협약 체결</dd>
														</dl>
													</li>
													<!-- E: 삭제 예정 -->
												</ol>
											</div>
										</div>
									</div>
								</div>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- // #container -->
	</div>

	<!-- footer -->
	<jsp:include page="/WEB-INF/views/user/common/footer.jsp" />
	<!-- footer -->
</body>
</html>