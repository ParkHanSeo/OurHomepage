<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
  <head>
    <title>내담씨앤씨</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- jquery -->
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/ani.css"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/resources/css/swiper-bundle.min.css"
    />
    <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/html/_skin/js/vendor/jquery-3.2.1.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/swiper.js"></script>
    <!-- ScrollMagic -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.7/ScrollMagic.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.7/plugins/debug.addIndicators.min.js"></script>
	<!-- GSAP -->
	<script src="//cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TweenMax.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.5/plugins/animation.gsap.js"></script>
	<!-- include  -->
	<jsp:include page="/WEB-INF/views/user/common/script_css_js.jsp" />
	<!-- include end  -->		
  </head>
  <style>
  .tung{
  	padding: 200;
  }
  </style>
  <body>
    <div class="swiper mySwiper slider">
      <div class="swiper-wrapper">
        <div class="swiper-slide bg1">
          <span>Neadam</span>
          <p>주요 사업</p>
          <div>
            Process 및 System 컨설팅 경험에서 축적된 Know How를 바탕으로 업무에 필요한 Solution을 개발/보급하고, 
            <br>자체 보유 Web 개발 툴을 활용하여 전문 SI Application 개발 서비스와 DB 모델링, 컨설팅 등을 제공합니다.
          </div>
        </div>
        <div class="swiper-slide bg2">
          <span>Neadam</span>
          <p>고객사의 고객 만족</p>
          <div>
            (주)내담C&C는 축적된 경험 및 Knowhow와 이를 뒷받침 해주는 전문화된 Skill 및 Solution을 기반으로 고객사의 고객 만족 및 내부 경쟁력 향상을 이끌어 내어
            <br>한단계 업그레이드 시키는 것을 Mission으로 하고 있으며 나아가 글로벌 경쟁력을 갖춘 IT Total Service Provider 기업으로의 성장을 비전으로 하고 있습니다.
          </div>
        </div>
        <div class="swiper-slide bg3">
          <span>Neadam</span>
          <p>IT Out Sourcing</p>
          <div>
            IT Outsourcing은 IT시스템 관련된 개발, 인력, 장비 등 IT전반에 대한 관리 활동을 외부 전문기업에 위탁하여 관리 하는 것을 말합니다.
			<br>내담씨앤씨는 공공, 금융, 통신, 전자상거래, 제조, 인프라 등 다양한 산업영역의 전문적인 IT 서비스 수행을 통해 축적한 Know How를 기반으로
          </div>
        </div>
        <div class="swiper-slide bg4">
          <span>Neadam</span>
          <p>PartnerShip</p>
          <div>
            일반 중소기업 및 중견기업에서는 현재 자본/기술 및 인력 문제와 내부 운영 효율 제고 및 경쟁력 향상이라는 과제를 안고 있으나, 자체적인 경영혁신 방법 및 투자 여력이 없는 실정입니다.
			<br>이에 (주)내담C&C는 중소기업 및 중견기업과의 파트너쉽을 맺고 운영하며 최소 운영비로 지속적인 경영 혁신을 추진 가능하도록 지원합니다.
          </div>
        </div>
      </div>
    </div>
    <div class="tung">
    	<span>
    		빈 공백
    	</span>
    </div>
    <div>
   		<article>
			<div class="main_visual__quick" >
				<nav class="main_visual__quick-nav inner" style="margin: 1 0 25%;">
					<a href="${pageContext.request.contextPath}/user/company/businessList" class="about">
						<p class="btn__txt-wrap">
							<span class="btn__txt">회사 소개</span>
						</p>
					</a> 
					<a href="${pageContext.request.contextPath}/user/company/divisionList" class="consult">
						<p class="btn__txt-wrap">
							<span class="btn__txt">사업부 소개</span>
						</p>
					</a> 
					<a href="${pageContext.request.contextPath}/user/introduction/solutionList" class="review">
						<p class="btn__txt-wrap">
							<span class="btn__txt">사업 부분</span>
						</p>
					</a> 
					<a href="${pageContext.request.contextPath}" class="location">
						<p class="btn__txt-wrap">
							<span class="btn__txt">채용 안내</span>
						</p>
					</a> 
					<a href="${pageContext.request.contextPath}" class="inquiry">
						<p class="btn__txt-wrap">
							<span class="btn__txt">공지사항</span>
						</p>
					</a>
				</nav>
			</div>
		</article>
    </div>
    <div>
    	<span>SOLUTION</span>
    </div>
    <div class="swiper mid">
      <div class="swiper-wrapper">
        <div class="swiper-slide mg1">
        	<span>보유 솔루션</span>
        	<br><p>다양한 IT 분야에서의<br>구축 경험을 토대로<br>다양한 솔류션과 서비스를 개발합니다.</p>
		</div>
        <div class="swiper-slide mg2">
        	<span>IT Out Sourcing</span>
        	<br><p>IT Total System으로<br>IT 분야의 전반적인 관리가<br>편리해집니다.</p>
        </div>
        <div class="swiper-slide mg3">
        	<span>Application 개발</span>
        	<br><p>전문인력을 바탕으로<br>고객의 요구에 맞는 특화된 개발 서비스를<br>제공 가능합니다.</p>
        </div>
        <div class="swiper-slide mg4">
        	<a>회사 조직도 및 연혁</a>
        </div>
        <div class="swiper-slide mg5">
        	<a>회사비전</a>
        </div>
        <div class="swiper-slide mg6">
        	<a>입사지원 바로가기</a>
        </div>
      </div>
    </div>    
    
    
    <script src="${pageContext.request.contextPath}/resources/js/default.js"></script>
  </body>
</html>
