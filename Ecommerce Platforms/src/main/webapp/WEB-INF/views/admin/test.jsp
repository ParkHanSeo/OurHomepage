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
.content2 {
    padding-top: 40px;
    padding-bottom: 40px;
    width: 1170px;
	margin-right: auto;
	margin-left: auto;
	padding-left: 15px;
	padding-right: 15px;   
}

img {
    vertical-align: middle;
    border: 0;    
	display: block;
    max-width: 100%;
    height: auto;    
}
.main_title{
	font-size: x-large;
}
</style>
<!-- haeder -->
<jsp:include page="/WEB-INF/views/user/common/header.jsp" />
<!-- haeder -->
<body>

<section id="wrapper">
		<main id="contents">	
			<div class="content">
				<div class="heading">
			        <h1 class="main_title">
			            오시는 길
			        </h1>
			        <p class="center">
			                        
			        </p>
		        </div>
		        <div class="margin-bottom-30"></div>
                <p>
                    (주)내담C&amp;C는 고객분들의 방문을 환영합니다.
                </p>
                <div id="map1" style="width:100%;height:350px;"></div>
              	<div class="map-explain">
                  <h2>(주)내담C&amp;C 본사</h2>
                  <p>
                      <i class="fa fa-map-marker"></i> 경기도 성남시 분당구 판교역로231, S동 711호 (삼평동, H square)<br>
                      <i class="fa fa-train"></i> 신분당선 판교역 1~4번 출구에서 버스로 3분 소요<br>
                      - 71, 73, 602-14, 812번 버스<br>
                      <i class="fa fa-phone"></i> 031-712-8315<br>
                      <i class="fa fa-fax"></i> 031-789-3545
                  </p>
              	</div>
              	<div class="margin-bottom-30"></div>	               		        		        
                <div id="map2" style="width:100%;height:350px;"></div>

                <div class="map-explain">
                    <h2>(주)내담C&amp;C 가산지사</h2>
                    <p>
                        <i class="fa fa-map-marker"></i> 서울시 금천구 벛꽃로 298 대륭포스트타워6차 1104호 (가산동 50-3)<br>
                        <i class="fa fa-train"></i> 7호선 가산디지털단지역 2번 출구 연결<br>
                        <i class="fa fa-phone"></i> 02-2083-5590<br>
                        <i class="fa fa-fax"></i> 02-2083-5594
                    </p>
                </div>

            </div>	        
		</main>
	</section>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=980632dcd1b0ae95b2725f497c36e51d"></script>
<script>
var mapContainer1 = document.getElementById('map1'), // 지도를 표시할 div 
    mapOption1 = { 
        center: new kakao.maps.LatLng(37.401323, 127.108592), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };
// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map1 = new kakao.maps.Map(mapContainer1, mapOption1); 

// 마커가 표시될 위치입니다 
var markerPosition1  = new kakao.maps.LatLng(37.401323, 127.108592);
// 마커를 생성합니다
var marker1 = new kakao.maps.Marker({
    position: markerPosition1
});
// 마커가 지도 위에 표시되도록 설정합니다
marker1.setMap(map1);


var mapContainer2 = document.getElementById('map2'), // 지도를 표시할 div 
    mapOption2 = { 
        center: new kakao.maps.LatLng(37.481466, 126.883878), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map2 = new kakao.maps.Map(mapContainer2, mapOption2); 
// 마커가 표시될 위치입니다 
var markerPosition2  = new kakao.maps.LatLng(37.481466, 126.883878);
// 마커를 생성합니다
var marker2 = new kakao.maps.Marker({
    position: markerPosition2
});
// 마커가 지도 위에 표시되도록 설정합니다
marker2.setMap(map2);
</script>


	
	
<!-- footer -->		
<jsp:include page="/WEB-INF/views/user/common/footer.jsp" />
<!-- footer -->
</body>
</html>