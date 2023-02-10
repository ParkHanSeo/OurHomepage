<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<title>내담씨앤씨</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width, user-scalable=no">
<jsp:include page="/WEB-INF/views/user/common/script_css_js.jsp" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/location.css">
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
                            내담씨앤씨는 판교 본사, 서울 지사를 두고 있습니다.
                        </p>

                        <ul class="common-layout_2 is-vertical location_list introduction_vertical">
                            <li class="items">
                                <div class="location_text">
	                                <h3 class="location_name">본사</h3>
	                                <p class="location_info">
	                                    경기도 성남시 분당구 판교역로231, S동 711호 (삼평동, H square) <br>
	                                    신분당선 판교역 1~4번 출구에서 버스로 3분 소요 <br>
	                                    TEL 031-712-8315 <br>
	                                    FAX 031-789-3545
	                                </p>
	                            </div>
                                <p class="location_img">
                                	<img src="${pageContext.request.contextPath}/resources/user/images/naedam_map_1.png" alt="">
                                </p>
                            </li>
                            <li class="items">
                                <iframe class="location_btn" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3169.5177283064227!2d127.10606707722165!3d37.40123603358722!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca7f434577899%3A0xae71bdfacd6566b1!2z64K064u07JSo7JWk7JSo!5e0!3m2!1sko!2skr!4v1672466052731!5m2!1sko!2skr"
										style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="noreferrer-when-downgrade">
								</iframe>
                            </li>
                            <li class="items">
                                <div class="location_text">
	                                <h3 class="location_name">서울 지사</h3>
	                                <p class="location_info">
	                                    서울시 금천구 벛꽃로 298 대륭포스트타워6차 1104호 (가산동 50-3) <br>
	                                    7호선 가산디지털단지역 2번 출구 연결 <br>
	                                    TEL 02-2083-5590 <br>
	                                    FAX 02-2083-5594
	                                </p>
	                            </div>
                                <p class="location_img">
                                	<img src="${pageContext.request.contextPath}/resources/user/images/naedam_map_2.jpg" alt="">
                                </p>
                            </li>
                            <li class="items">
								<iframe class="location_btn" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3166.1272088634846!2d126.8815848513167!3d37.481324379714785!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9f210b865e0d%3A0xadfac5f743c8151a!2z64yA66Wt7Y-s7Iqk7Yq47YOA7JuMNuywqA!5e0!3m2!1sko!2skr!4v1672639820068!5m2!1sko!2skr"  
										style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
								</iframe>
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
  </body>
</html>
