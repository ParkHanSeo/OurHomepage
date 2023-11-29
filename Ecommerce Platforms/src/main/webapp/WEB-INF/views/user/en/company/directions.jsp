<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<title>회사소개 | 오시는 길 | 내담씨앤씨</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width, user-scalable=no">
<meta name="robots" content="index,nofollow">
<meta name="title" content="회사소개 | 오시는 길 | 내담씨앤씨">
<meta property="og:title" content="회사소개 | 오시는 길 | 내담씨앤씨">
<meta name="description" content="내담씨앤씨는 판교 본사, 서울 지사를 두고 있습니다.">
<meta property="og:description" content="내담씨앤씨는 판교 본사, 서울 지사를 두고 있습니다.">
<meta name="keywords" content="내담C&C, 내담씨앤씨, ndcnc, 내담, NDCNC, 내담씨앤씨 본사, 내담씨앤씨본사, 내담C&C 본사, 내담C&C본사, 내담 본사, 내담본사, 내담씨앤씨 지사, 내담씨앤씨지사, 내담C&C 지사, 내담C&C지사, 내담 지사, 내담지사">
<meta property="og:url" content="https://ndcc.co.kr/user/company/directionsList">

<jsp:include page="/WEB-INF/views/user/common/script_css_js.jsp" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/location.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/user/common/header.jsp" />
	<div id="wrap" class="history">
        <section id="container">
            <div id="contents" class="contents_top">
                <div class="sub_title_area">
                    <div class="inner_container">
                        <h2 class="sub_title">Location</h2>
                    </div>
                </div><!-- // .sub_title_area -->

                <div class="layout_section_outer location_area type03">
                    <div class="inner_container">
                        <p class="common_txt-40">
                            Naedam C&C has its headquarters in Pangyo and a branch office in Seoul.
                        </p>

                        <ul class="common-layout_2 is-vertical location_list introduction_vertical">
                            <li class="items">
                                <div class="location_text">
	                                <h3 class="location_name">HQ</h3>
	                                <p class="location_info">
	                                    S-711 (H square, Sampyeong-dong), 231 Pangyoyeok-ro, Bundang-gu, Seongnam-si, Gyeonggi-do, Republic of Korea <br>
	                                    It takes 3 minutes by bus from Exit 1 - 4 of Pangyo Station on the Shinbundang Line. <br>
	                                    TEL 031-712-8315 <br>
	                                    FAX 031-789-3545
	                                </p>
	                            </div>
                                <p class="location_img">
                                	<img src="${pageContext.request.contextPath}/resources/user/images/naedam_map_1.png" alt="">
                                </p>
                            </li>
                            <li class="items">
								<iframe class="location_btn" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6339.096899710103!2d127.10246527827482!3d37.400509682735084!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca7f434577899%3A0xae71bdfacd6566b1!2z64K064u07JSo7JWk7JSo!5e0!3m2!1sen!2skr!4v1677556845340!5m2!1sen!2skr"
										style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
								</iframe>
                            </li>
                            <li class="items">
                                <div class="location_text">
	                                <h3 class="location_name">Branch Office</h3>
	                                <p class="location_info">
	                                    11F 1104 (50-3 Gasan-dong), 298 Beotkkot-ro, Geumcheon-gu, Seoul <br>
	                                    Gasan Digital Complex Station on Line 7 connects to Exit 2 <br>
	                                    TEL 02-2083-5590 <br>
	                                    FAX 02-2083-5594
	                                </p>
	                            </div>
                                <p class="location_img">
                                	<img src="${pageContext.request.contextPath}/resources/user/images/naedam_map_2.jpg" alt="">
                                </p>
                            </li>
                            <li class="items">
								<iframe class="location_btn" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6332.244958258243!2d126.8748212697754!3d37.481436000000016!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9e1de5f177c5%3A0x75391baa9e0bc1b!2zKOyjvCnrgrTri7TslKjslaTslKgg7ISc7Jq47KeA7IKs!5e0!3m2!1sen!2skr!4v1677556939195!5m2!1sen!2skr" 
										style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
								</iframe>
                            </li>
                        </ul>
                    </div>
                </div>

            </div><!-- // #contents -->
      </section><!-- // #container -->
	</div>
  <jsp:include page="/WEB-INF/views/user/common/en_footer.jsp" />
</body>
</html>
