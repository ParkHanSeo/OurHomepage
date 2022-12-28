<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<title>내담씨앤씨</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/location.css">
<jsp:include page="/WEB-INF/views/user/common/script_css_js.jsp" />
</head>
  <body>
  <jsp:include page="/WEB-INF/views/user/common/header.jsp" />
<div id="wrap" class="history">
<div id="search-layer">
    <div class="inner">
        <div class="area_search">
            <form autocomplete="off" action="/searchall/search_results" method="post">
                 <input type="search" id="inputSearch" name="searchAll" placeholder="무엇이 궁금하신가요?" maxlength="30"> 
                 <label for="inputSearch" class="blind">검색어</label>
                 <span class="icon_search">
                    <input type="submit" id="btnCommonSearchAll" value="검색"> 
               	</span>
            </form>
            
            <p class="result-error-txt" style="display:none;">검색어를 입력해주세요.</p>
          
            <div class="hash_area search_tag">
            <a href="javascript:void(0);" onclick="hashtagLink('/searchall/search_results?searchAll=','AI')" class="hash_tag">#AI</a><a href="javascript:void(0);" onclick="hashtagLink('/searchall/search_results?searchAll=','블록체인')" class="hash_tag">#블록체인</a><a href="javascript:void(0);" onclick="hashtagLink('/searchall/search_results?searchAll=','NFT')" class="hash_tag">#NFT</a><a href="javascript:void(0);" onclick="hashtagLink('/searchall/search_results?searchAll=','빅데이터')" class="hash_tag">#빅데이터</a><a href="javascript:void(0);" onclick="hashtagLink('/searchall/search_results?searchAll=','클라우드')" class="hash_tag">#클라우드</a><a href="javascript:void(0);" onclick="hashtagLink('/searchall/search_results?searchAll=','CJONE')" class="hash_tag">#CJONE</a><a href="javascript:void(0);" onclick="hashtagLink('/searchall/search_results?searchAll=','데이터마케팅')" class="hash_tag">#데이터마케팅</a></div>
        </div>
        <a href="" class="btn_close_search">
            <span class="blind">검색창 닫기</span>
            <i class="close-ico">
                <span class="line line1"></span>
                <span class="line line2"></span>
                <span class="line line3"></span>
            </i>
        </a>
    </div>
</div>
<script>
$(function(){
	// 검색어 유효성 체크
	$("#btnCommonSearchAll").click(function(){
		if($("#inputSearch").val() == "") {
			$(".result-error-txt").show();
			return false;	
		}
	});
});
</script>


        <section id="container">
            <div id="contents" class="contents_top">
                <div class="sub_title_area">
                    <div class="inner_container">
                        <h2 class="sub_title">오시는 길</h2>
                    </div>
                </div><!-- // .sub_title_area -->

                <div class="layout_section_outer location_area type03">
                    <div class="inner_container">
                        <p class="common_txt-40">
                            내담씨앤씨는 판교 본사, 가산을 지사로 두고 있습니다.
                        </p>

                        <ul class="common-layout_2 is-vertical location_list introduction_vertical">
                            <li class="items">
                                <p class="location_img">
                                	<img src="${pageContext.request.contextPath}/resources/user/images/naedam_map_1.png" alt="">
                                </p>
                                <div class="location_text">
	                                <p class="location_name">본사</p>
	                                <p class="location_info">
	                                    경기도 성남시 분당구 판교역로231, S동 711호 (삼평동, H square) <br>
	                                    신분당선 판교역 1~4번 출구에서 버스로 3분 소요 <br>
	                                    TEL 031-712-8315 <br>
	                                    FAX 031-789-3545
	                                </p>
	                                <a class="location_btn" href="https://www.google.co.kr/maps/place/%ED%8A%B8%EC%9C%88%EC%8B%9C%ED%8B%B0%EB%82%A8%EC%82%B0/@37.5508656,126.9706723,17z/data=!4m8!1m2!2m1!1z7ISc7Jq47Yq567OE7IucIOyaqeyCsOq1rCDtlZzqsJXrjIDroZwgMzY2!3m4!1s0x0:0x1c9209ffc65a5fe0!8m2!3d37.550738!4d126.9727197?shorturl=1" target="_blank" title="새창"><i class="icon pin"></i>지도보기</a>
	                            </div>
                            </li>
                            <li class="items">
                                <p id="map" style="width:100%; height: 453px; border-radius: 3%;"></p>
                            </li>
                            <li class="items">
                                <p class="location_img">
                                	<img src="${pageContext.request.contextPath}/resources/user/images/naedam_map_2.jpg" alt="">
                                </p>
                                <div class="location_text">
	                                <p class="location_name">가산 오피스</p>
	                                <p class="location_info">
	                                    서울시 금천구 벛꽃로 298 대륭포스트타워6차 1104호 (가산동 50-3) <br>
	                                    7호선 가산디지털단지역 2번 출구 연결 <br>
	                                    TEL 02-2083-5590 <br>
	                                    FAX 02-2083-5594
	                                </p>
	                                <a class="location_btn" href="https://goo.gl/maps/6sm5Fz8c68DZ8LGRA" target="_blank" title="새창"><i class="icon pin"></i>지도보기</a>
	                            </div>
                            </li>
                            <li class="items">
								<p id="map2" style="width:100%; height: 453px; border-radius: 3%;"></p>            
                            </li>
                        </ul>
                    </div>
                </div>

            </div><!-- // #contents -->
        </section><!-- // #container -->
</div>
<div class="layer_wrapper is-movie" id="pop_movie">
    <div class="layer_outer">
        <div class="layer_inner">
            <div class="layer_body">
                <div class="movie_iframe_wrap">
                    <iframe src="" title="" class="movie_iframe"></iframe>
                </div>
            </div>
            <button type="button" class="icon pop-close" onclick="moviePopClose(this);">닫기</button>
        </div><!-- // .layer_inner -->
    </div><!-- // .layer_outer -->
</div><!-- // .layer_wrapper -->
  <jsp:include page="/WEB-INF/views/user/common/footer.jsp" />
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=980632dcd1b0ae95b2725f497c36e51d"></script>
<script>
// 본사 map
var mapContainer = document.getElementById('map'), 
    mapOption = { 
        center: new kakao.maps.LatLng(37.401323, 127.108592), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };
var map = new kakao.maps.Map(mapContainer, mapOption);
//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.401323, 127.108592);
// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});
// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

//지사 map
var mapContainer2 = document.getElementById('map2'), 
mapOption2 = { 
    center: new kakao.maps.LatLng(37.481466, 126.883878), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};
var map2 = new kakao.maps.Map(mapContainer2, mapOption2);
//마커가 표시될 위치입니다 
var markerPosition2  = new kakao.maps.LatLng(37.481466, 126.883878);
//마커를 생성합니다
var marker2 = new kakao.maps.Marker({
position: markerPosition2
});
//마커가 지도 위에 표시되도록 설정합니다
marker2.setMap(map2);
    
</script>	
  </body>
</html>
