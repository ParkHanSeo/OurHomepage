<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<title>내담씨앤씨</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/company.css">
<jsp:include page="/WEB-INF/views/user/common/script_css_js.jsp" />
</head>
  <body>
  <jsp:include page="/WEB-INF/views/user/common/header.jsp" />

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
                        <h2 class="sub_title">C I</h2>
                    </div>
                </div><!-- // .sub_title_area -->


                <div class="layout_section_outer intro tech type01 layout_symbol" data-js="anchor-target">
                    <div class="inner_container">
                        <div class="layout_body">
                            <div class="common-img_box naedam_main_img">
                                <img src="${pageContext.request.contextPath}/resources/user/images/ci_contents.png" class="nd_main" alt="">
                            </div>
                        </div>
                            <div class="img-txt_box">
	                            <div class="common-img_box naedam_main_img">
	                                <img src="${pageContext.request.contextPath}/resources/user/images/ci_footer.png" class="nd_reverse" alt="">
	                            </div>
                            </div>
                    </div>
                </div><!-- // .layout_section_outer -->

            </div><!-- // #contents -->
        </section><!-- // #container -->
  <jsp:include page="/WEB-INF/views/user/common/footer.jsp" />
  </body>
</html>
