<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<title>내담씨앤씨</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/partnerShip.css">
<jsp:include page="/WEB-INF/views/user/common/script_css_js.jsp" />
</head>
  <body>
  <jsp:include page="/WEB-INF/views/user/common/header.jsp" />
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
                        <h2 class="sub_title">Partner Ship</h2>
                    </div>
                </div><!-- // .sub_title_area -->
                <div class="layout_section_outer esg_program-area type04 partner_layout">
                    <div class="inner_container">
                        <div class="layout_head">
                            <p class="top_txt1">
                                내담씨앤씨의 파트너십의 관계에 있어서 <br>
                                성장 및 역략 강화를 지원합니다.
                            </p>
                        </div>
                        <div class="layout_body is-margin2">
                            <div class="esg_program">
                                <ul class="esg_program_list">
                                    <li>
                                        <div class="esg_program_img">
                                        	<%-- <img src="${pageContext.request.contextPath}/resources/user/images/delete/img-thumbnail-01-pc@2x.png" alt=""> --%>
                                        	<img src="${pageContext.request.contextPath}/resources/user/images/delete/partner1_2.jpg" alt="">
                                        </div>
                                        <div class="esg_program_desc">
                                            <p class="esg_program_txt">내담C&C</p>
                                            <ul class="common-txt-list">
                                                <li>내담C&C는 중소기업 및 중견기업과의 파트너쉽을 맺고 운영하고 있습니다.</li>
                                                <li>내담C&C는 최소 운영비로 지속적인 경영 혁신을 추진 가능하도록 지원합니다.</li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="is-right">
                                        <div class="esg_program_img">
                                        	<img src="${pageContext.request.contextPath}/resources/user/images/delete/partner1.jpg" alt="">
                                        	<%-- <img src="${pageContext.request.contextPath}/resources/user/images/delete/img-thumbnail-02-pc@2x.png" alt=""> --%>
                                        </div>
                                        <div class="esg_program_desc">
                                            <p class="esg_program_txt">기업의 이익 위하여</p>
                                            <ul class="common-txt-list">
                                                <li>내담C&C는 정보시스템 운영 진단 및 추진과제 Road map을 제공합니다.</li>
                                                <li>내담C&C는 기업의 정보화 교육 및 컨설팅, Business Process 정립 및 보완을 지원합니다.</li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="esg_program_img">
                                            <img src="${pageContext.request.contextPath}/resources/user/images/delete/patner_promise.jpg" alt="">
                                            <%-- <img src="${pageContext.request.contextPath}/resources/user/images/delete/img-thumbnail-03-pc@2x.png" alt=""> --%>
                                        </div>
                                        <div class="esg_program_desc">
                                            <p class="esg_program_txt">내담 파트너에 대한 우리의 약속</p>
                                            <ul class="common-txt-list">
                                                <li>내담C&C 서비스를 통해 지속적인 경영 혁신을 추진할 수 있습니다.</li>
                                                <li>내담C&C는 불필요한 IT Solution 투자를 최소화 합니다. </li>
                                                <li>내담C&C는 IT Solution 운영부담을 최소화 합니다. </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="is-right">
                                        <div class="esg_program_img">
                                            <%-- <img src="${pageContext.request.contextPath}/resources/user/images/delete/img-thumbnail-04-pc@2x.png" alt=""> --%>
                                        	<img src="${pageContext.request.contextPath}/resources/user/images/delete/partner_goal.jpg" alt="">
                                        </div>
                                        <div class="esg_program_desc">
                                            <p class="esg_program_txt">내담의 목표</p>
                                            <ul class="common-txt-list">
                                                <li>
                                                	대한민국 중소기업 및 중견기업이 내담C&C와 나아감으로써<br>
                                                	IT 경쟁력을 확보하고 IT Solution의 낭비요소를 제거하는 것이<br>
                                                	내담C&C의 궁극적인 목표입니다.
                                                </li>
                                                
                                            </ul>
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
