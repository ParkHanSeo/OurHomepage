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
      href="${pageContext.request.contextPath}/resources/css/test.scss"
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
<script src="${pageContext.request.contextPath}/resources/js/default.js"></script>
  <body>
<div class="wrap">
  <div class="top">
    <h1>ScrollMagic Demo</h1>
    <p>스크롤매직 라이브러리 데모입니다.<br/><a href="http://scrollmagic.io/examples/" target="_blank">여기</a>에서 더 많은 예시를 확인할 수 있습니다.</p>
  </div>
  <div class="main">
    <div class="spacer"></div>
    <div class="trigger" id="trigger1">Trigger 1</div>
    <div class="iconWrap">
      <div id="animate1" class="animation1">Hello, there!</div>
    </div>
    <div class="spacer"></div>
    <div class="trigger" id="trigger2">Trigger 2</div>
    <div class="ani2Wrap">
      <div class="animation2 box">one</div>
      <div class="animation2 box">two</div>
      <div class="animation2 box">three</div>
      <div class="animation2 box">four</div>
    </div>
    <div class="spacer"></div>
  </div>
  <div class="footer"><a href="https://nykim.work">nykim.work</a></div>
</div>
  </body>
</html>
