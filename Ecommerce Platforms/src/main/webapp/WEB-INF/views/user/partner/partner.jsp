<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<title>내담씨앤씨</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/partner.css">
<jsp:include page="/WEB-INF/views/user/common/script_css_js.jsp" />
</head>
  <body>
  <jsp:include page="/WEB-INF/views/user/common/header.jsp" />
<body data-aos-easing="ease" data-aos-duration="400" data-aos-delay="0">
    

    <div id="wrap" class="visual-center">

<div id="search-layer">
    <div class="inner">
        <div class="area_search">
            <form autocomplete="off" action="/searchall/search_results" method="post">
                 <input type="search" id="inputSearch" name="searchAll" placeholder="무엇이 궁금하신가요?" maxlength="30"> 
                 <label for="inputSearch" class="blind">검색어</label>
                 <span class="icon_search">
                    <img src="/images/common/03-foundation-icon-system-search-32-px.svg" alt="">
                    <input type="submit" id="btnCommonSearchAll" value="검색"> 
               	</span>
            </form>
            
            <p class="result-error-txt" style="display:none;">검색어를 입력해주세요.</p>

					<div class="hash_area search_tag">
						<a href="javascript:void(0);"
							onclick="hashtagLink('/searchall/search_results?searchAll=','AI')"
							class="hash_tag">#AI</a><a href="javascript:void(0);"
							onclick="hashtagLink('/searchall/search_results?searchAll=','블록체인')"
							class="hash_tag">#블록체인</a><a href="javascript:void(0);"
							onclick="hashtagLink('/searchall/search_results?searchAll=','NFT')"
							class="hash_tag">#NFT</a><a href="javascript:void(0);"
							onclick="hashtagLink('/searchall/search_results?searchAll=','빅데이터')"
							class="hash_tag">#빅데이터</a><a href="javascript:void(0);"
							onclick="hashtagLink('/searchall/search_results?searchAll=','클라우드')"
							class="hash_tag">#클라우드</a><a href="javascript:void(0);"
							onclick="hashtagLink('/searchall/search_results?searchAll=','CJONE')"
							class="hash_tag">#CJONE</a><a href="javascript:void(0);"
							onclick="hashtagLink('/searchall/search_results?searchAll=','데이터마케팅')"
							class="hash_tag">#데이터마케팅</a>
					</div>
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
                        <h2 class="sub_title">Partner</h2>
                    </div>
                </div><!-- // .sub_title_area -->

                <div class="layout_section_outer sub-main type03 service_sub_main">
                    <div class="inner_container">
                        <div class="layout_head">
                            <p class="top_txt1 service_txt1">
                                내담C&C의 Partner를 소개합니다.
                            </p>
                        </div>
                    </div>
                </div><!-- // .layout_section_outer -->

                <div class="layout_section_outer sub-main type08 service_top_layout" data-js="anchor-target">
                    <div class="inner_container">
                        <div class="layout_body">
                            <div class="icon_item_box">
                                <ul class="common-layout_3 is-vertical introduction_vertical">
                                    <li class="items partner_li samsung_electronics">
                                        <a href="#" class="icon_item_inner partner_a">
                                        </a>
                                    </li>
                                    <li class="items partner_li samsung_electronics">
                                        <a href="#" class="icon_item_inner partner_a">
                                            <p class="icon_item_title">
                                                삼성물산
                                            </p>
                                        </a>
                                    </li>
                                    <li class="items partner_li samsung_electronics">
                                        <a href="#" class="icon_item_inner partner_a">
                                            <p class="icon_item_title">
                                                삼성전기
                                            </p>
                                        </a>
                                    </li>
                                    <li class="items partner_li">
                                        <a href="#" class="icon_item_inner partner_a">
                                            <p class="icon_item_title">
                                                삼성SDI
                                            </p>
                                        </a>
                                    </li>
                                    <li class="items partner_li">
                                        <a href="#" class="icon_item_inner partner_a">
                                            <p class="icon_item_title">
                                                삼성SDS
                                            </p>
                                        </a>
                                    </li>
                                    <li class="items partner_li">
                                        <a href="#" class="icon_item_inner partner_a">
                                            <p class="icon_item_title">
                                                삼성디스플레이
                                            </p>
                                        </a>
                                    </li>
                                    <li class="items partner_li">
                                        <a href="#" class="icon_item_inner partner_a">
                                            <p class="icon_item_title">
                                                HUMAX
                                            </p>
                                        </a>
                                    </li>
                                    <li class="items partner_li">
                                        <a href="#" class="icon_item_inner partner_a">
                                            <p class="icon_item_title">
                                                MagnaChip
                                            </p>
                                        </a>
                                    </li>
                                    <li class="items partner_li">
                                        <a href="#" class="icon_item_inner partner_a">
                                            <p class="icon_item_title">
                                                SONY
                                            </p>
                                        </a>
                                    </li>
                                    <li class="items partner_li">
                                        <a href="#" class="icon_item_inner partner_a">
                                            <p class="icon_item_title">
                                                DOOSAN
                                            </p>
                                        </a>
                                    </li>
                                    <li class="items partner_li">
                                        <a href="#" class="icon_item_inner partner_a">
                                            <p class="icon_item_title">
                                                동부하이텍
                                            </p> 
                                        </a>
                                    </li>
                                    <li class="items partner_li">
                                        <a href="#" class="icon_item_inner partner_a">
                                            <p class="icon_item_title">
                                                대한상공회의소
                                            </p>
                                        </a>
                                    </li>
                                    <li class="items partner_li">
                                        <a href="#" class="icon_item_inner partner_a">
                                            <p class="icon_item_title">
                                                MEV 환경부
                                            </p>
                                        </a>
                                    </li>
                                    <li class="items partner_li">
                                        <a href="#" class="icon_item_inner partner_a">
                                            <p class="icon_item_title">
                                                해양수산부
                                            </p>
                                        </a>
                                    </li>
                                    <li class="items partner_li">
                                        <a href="#" class="icon_item_inner partner_a">
                                            <p class="icon_item_title">
                                                SK C&C
                                            </p>
                                        </a>
                                    </li>
                                    <li class="items partner_li">
                                        <a href="#" class="icon_item_inner partner_a">
                                            <p class="icon_item_title">
                                                SK Hynix
                                            </p>
                                        </a>
                                    </li>
                                    <li class="items partner_li">
                                        <a href="#" class="icon_item_inner partner_a">
                                            <p class="icon_item_title">
                                                EVERLANDRESORT
                                            </p>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div><!-- // .layout_section_outer -->
            </div><!-- // #contents -->
        </section><!-- // #container -->
    </div><!-- // #wrap -->

<div>
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




<div style="left: -1000px; overflow: scroll; position: absolute; top: -1000px; border: none; box-sizing: content-box; height: 200px; margin: 0px; padding: 0px; width: 200px;"><div style="border: none; box-sizing: content-box; height: 200px; margin: 0px; padding: 0px; width: 200px;"></div></div></body>
  <jsp:include page="/WEB-INF/views/user/common/footer.jsp" />	
  </body>
</html>
