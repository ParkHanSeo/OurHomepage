<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<title>내담씨앤씨</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
                    <!-- <img src="/images/common/03-foundation-icon-system-search-32-px.svg" alt=""> -->
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

<form id="r_form" action="/recruit/job_notice" method="post" onsubmit="return false;">
	<input type="hidden" name="COMPANY" id="COMPANY" value="E10">
	<input type="hidden" name="BUSINESS_UNIT" id="BUSINESS_UNIT" value="E10BU">
	<input type="hidden" name="ZZ_TARGET_1" id="ZZ_TARGET_1" value="Z">
	<input type="hidden" name="ROWNO" id="ROWNO" value="10">
	<input type="hidden" name="PAGENO" id="PAGENO" value="1">
	<input type="hidden" name="TOTAL_COUNT" id="TOTAL_COUNT" value="143">
	<input type="hidden" name="ZZ_TITLE" id="ZZ_TITLE" value="">
</form>
		<section id="container">
            <div id="contents">
                <div class="sub_title_area">
                    <div class="inner_container">
                        <h2 class="sub_title">채용 공고</h2>
                    </div>
                </div><!-- // .sub_title_area -->

                <div class="top_visual_area recruit">
                    <div class="inner_container">
                        <div class="top_txt_outer">
                            <div class="top_txt_area">
                                <p class="top_txt2">Make Stories Together</p>
                                <p class="top_txt3">
                                    ONLYONE 기술과 서비스로 우리는 일상을 변화시킵니다. <br>
                                    CJ올리브네트웍스의 이야기를 함께 만들어갈 당신의 지원을 기다립니다.
                                </p>
                            </div>
                        </div>
                    </div>
                </div><!-- // .top_visual_area -->

                <div class="common-swiper_area">
                    <div class="inner_container">
                        <div class="common-swiper_tab">
                            <ul class="swiper-wrapper">
                                <li class="swiper-slide active"><a href="#self" onclick="recruit_type('Z')">전체</a></li>
                                <li class="swiper-slide"><a href="#self" onclick="recruit_type('A')">신입</a></li>
                                <li class="swiper-slide"><a href="#self" onclick="recruit_type('B')">경력</a></li>
                                <li class="swiper-slide"><a href="#self" onclick="recruit_type('C')">인턴</a></li>
                                <!-- <li class="swiper-slide"><a href="#self" onclick="recruit_type('K')">리턴십</a></li> -->
                                <li class="swiper-slide"><a href="#self" onclick="recruit_type('T')">인재DB</a></li>
                            </ul>
                        </div>
                    </div>
                </div><!-- // .common-swiper_area -->

                <div class="layout_section_outer recruit">
                    <div class="inner_container">
					<div id="recruit_DB"></div>
                        <div class="common-search_box_wrap" id="recruit_search">
                            <div class="common-search_box">
                            	<form action="javascript:recruitSearch()">
	                            	<label class="common-search_label" for="recruit_search_txt">검색</label>
	                                <input class="common-search_input" id="recruit_search_txt" type="text" placeholder="직무명을 입력해주세요." title="직무명을 입력해주세요.">
	                                <button type="button" class="common-search_btn" id="btnSearch">검색</button>
                            	</form>                                
                            </div>
                        </div>
                        <div class="search-result" id="recruit_result" style="display:none;">
							<div class="search-result_inner">
								<span class="result_keyword" id="recruit_result_txt"></span>
								<span class="result_txt">검색 결과가 없습니다.</span>
									<div class="result_msg">
										<ul class="common-txt-list size_16">
											<li>검색어가 올바르게 입력되었는지 확인해주세요.</li>
											<li>검색어의 띄어쓰기를 다르게 해보세요.</li>
											<li>키보드 언어 설정을 확인해주세요.</li>
											<li>일반적인 단어로 다시 검색해보세요.</li>
										</ul>
									</div>
								<div class="result_btn">
									<a href="" class="common-btn is-white2" id="btnList"><span>목록</span></a>
								</div>
							</div>
						</div>

					<div class="common-text_list_area" id="recruit_detail">
						<ul class="common-text_list">
							<li><div class="subj_box">
									<p class="common-text_txt1">경력</p>
									<p class="common-text_txt2">
										<a
											href="https://recruit.cj.net/recruit/ko/recruit/recruit/bestDetail.fo?zz_jo_num=J20220805009583"
											target="blank">[CJ Olivenetworks/경력] Product Business
											Model 기획 전문가(Tech 기반 Product Owner)</a>
									</p>
								</div>
								<div class="date_box center-left">
									<p class="common-text_txt3">
										D-<span>27</span>
									</p>
									<p class="common-text_txt4">2022.12.14 ~ 2023.01.15</p>
								</div>
								<div class="btn_box">
									<a
										href="https://recruit.cj.net/recruit/ko/recruit/recruit/bestDetail.fo?zz_jo_num=J20220805009583"
										class="common-btn is-blue" target="_blank"><span>지원하기</span></a>
								</div></li>
							<li><div class="subj_box">
									<p class="common-text_txt1">경력</p>
									<p class="common-text_txt2">
										<a
											href="https://recruit.cj.net/recruit/ko/recruit/recruit/bestDetail.fo?zz_jo_num=J20221207011136"
											target="blank">[CJ Olivenetworks/경력] 프레시웨이 SAP SD</a>
									</p>
								</div>
								<div class="date_box center-left">
									<p class="common-text_txt3">
										<span>채용시까지</span>
									</p>
									<p class="common-text_txt4">2022.12.07 ~</p>
								</div>
								<div class="btn_box">
									<a
										href="https://recruit.cj.net/recruit/ko/recruit/recruit/bestDetail.fo?zz_jo_num=J20221207011136"
										class="common-btn is-blue" target="_blank"><span>지원하기</span></a>
								</div></li>
							<li><div class="subj_box">
									<p class="common-text_txt1">경력</p>
									<p class="common-text_txt2">
										<a
											href="https://recruit.cj.net/recruit/ko/recruit/recruit/bestDetail.fo?zz_jo_num=J20221207011135"
											target="blank">[CJ Olivenetworks/경력] 법무 팀장</a>
									</p>
								</div>
								<div class="date_box center-left">
									<p class="common-text_txt3">
										D-<span>43</span>
									</p>
									<p class="common-text_txt4">2022.12.07 ~ 2023.01.31</p>
								</div>
								<div class="btn_box">
									<a
										href="https://recruit.cj.net/recruit/ko/recruit/recruit/bestDetail.fo?zz_jo_num=J20221207011135"
										class="common-btn is-blue" target="_blank"><span>지원하기</span></a>
								</div></li>
							<li><div class="subj_box">
									<p class="common-text_txt1">경력</p>
									<p class="common-text_txt2">
										<a
											href="https://recruit.cj.net/recruit/ko/recruit/recruit/bestDetail.fo?zz_jo_num=J20221202011129"
											target="blank">[CJ Olivenetworks/경력]SI프로젝트 PM군(PM, PMO,
											PL(분석/설계))</a>
									</p>
								</div>
								<div class="date_box center-left">
									<p class="common-text_txt3">
										<span>채용시까지</span>
									</p>
									<p class="common-text_txt4">2022.12.02 ~</p>
								</div>
								<div class="btn_box">
									<a
										href="https://recruit.cj.net/recruit/ko/recruit/recruit/bestDetail.fo?zz_jo_num=J20221202011129"
										class="common-btn is-blue" target="_blank"><span>지원하기</span></a>
								</div></li>
							<li><div class="subj_box">
									<p class="common-text_txt1">경력</p>
									<p class="common-text_txt2">
										<a
											href="https://recruit.cj.net/recruit/ko/recruit/recruit/bestDetail.fo?zz_jo_num=J20220928011033"
											target="blank">[CJ Olivenetworks/경력] SW Testing Engineer</a>
									</p>
								</div>
								<div class="date_box center-left">
									<p class="common-text_txt3">
										D-<span>12</span>
									</p>
									<p class="common-text_txt4">2022.12.01 ~ 2022.12.31</p>
								</div>
								<div class="btn_box">
									<a
										href="https://recruit.cj.net/recruit/ko/recruit/recruit/bestDetail.fo?zz_jo_num=J20220928011033"
										class="common-btn is-blue" target="_blank"><span>지원하기</span></a>
								</div></li>
							<li><div class="subj_box">
									<p class="common-text_txt1">경력</p>
									<p class="common-text_txt2">
										<a
											href="https://recruit.cj.net/recruit/ko/recruit/recruit/bestDetail.fo?zz_jo_num=J20220429007069"
											target="blank">[CJ Olivenetworks/경력] 기술기획</a>
									</p>
								</div>
								<div class="date_box center-left">
									<p class="common-text_txt3">
										D-<span>12</span>
									</p>
									<p class="common-text_txt4">2022.12.01 ~ 2022.12.31</p>
								</div>
								<div class="btn_box">
									<a
										href="https://recruit.cj.net/recruit/ko/recruit/recruit/bestDetail.fo?zz_jo_num=J20220429007069"
										class="common-btn is-blue" target="_blank"><span>지원하기</span></a>
								</div></li>
							<li><div class="subj_box">
									<p class="common-text_txt1">경력</p>
									<p class="common-text_txt2">
										<a
											href="https://recruit.cj.net/recruit/ko/recruit/recruit/bestDetail.fo?zz_jo_num=J20221021011065"
											target="blank">[CJ Olivenetworks/경력] IP커머스 '워니버스' 서비스기획 및
											운영</a>
									</p>
								</div>
								<div class="date_box center-left">
									<p class="common-text_txt3">
										D-<span>12</span>
									</p>
									<p class="common-text_txt4">2022.12.01 ~ 2022.12.31</p>
								</div>
								<div class="btn_box">
									<a
										href="https://recruit.cj.net/recruit/ko/recruit/recruit/bestDetail.fo?zz_jo_num=J20221021011065"
										class="common-btn is-blue" target="_blank"><span>지원하기</span></a>
								</div></li>
							<li><div class="subj_box">
									<p class="common-text_txt1">경력</p>
									<p class="common-text_txt2">
										<a
											href="https://recruit.cj.net/recruit/ko/recruit/recruit/bestDetail.fo?zz_jo_num=J20220308005552"
											target="blank">[CJ Olivenetworks/경력] 전략기획/투자</a>
									</p>
								</div>
								<div class="date_box center-left">
									<p class="common-text_txt3">
										D-<span>12</span>
									</p>
									<p class="common-text_txt4">2022.12.01 ~ 2022.12.31</p>
								</div>
								<div class="btn_box">
									<a
										href="https://recruit.cj.net/recruit/ko/recruit/recruit/bestDetail.fo?zz_jo_num=J20220308005552"
										class="common-btn is-blue" target="_blank"><span>지원하기</span></a>
								</div></li>
							<li><div class="subj_box">
									<p class="common-text_txt1">경력</p>
									<p class="common-text_txt2">
										<a
											href="https://recruit.cj.net/recruit/ko/recruit/recruit/bestDetail.fo?zz_jo_num=J20220902010039"
											target="blank">[CJ Olivenetworks/경력] CJ ONE 모바일앱 Android
											시스템 개발/운영</a>
									</p>
								</div>
								<div class="date_box center-left">
									<p class="common-text_txt3">
										D-<span>12</span>
									</p>
									<p class="common-text_txt4">2022.12.01 ~ 2022.12.31</p>
								</div>
								<div class="btn_box">
									<a
										href="https://recruit.cj.net/recruit/ko/recruit/recruit/bestDetail.fo?zz_jo_num=J20220902010039"
										class="common-btn is-blue" target="_blank"><span>지원하기</span></a>
								</div></li>
							<li><div class="subj_box">
									<p class="common-text_txt1">경력</p>
									<p class="common-text_txt2">
										<a
											href="https://recruit.cj.net/recruit/ko/recruit/recruit/bestDetail.fo?zz_jo_num=J20221110011551"
											target="blank">[CJ Olivenetworks/경력] 플랫폼(데이터/광고) 전략 및 영업
											(파트리더)</a>
									</p>
								</div>
								<div class="date_box center-left">
									<p class="common-text_txt3">
										D-<span>12</span>
									</p>
									<p class="common-text_txt4">2022.12.01 ~ 2022.12.31</p>
								</div>
								<div class="btn_box">
									<a
										href="https://recruit.cj.net/recruit/ko/recruit/recruit/bestDetail.fo?zz_jo_num=J20221110011551"
										class="common-btn is-blue" target="_blank"><span>지원하기</span></a>
								</div></li>
						</ul>
					</div>
					<div id="page"><div class="common-pagination"><a href="javascript:paging('first');" class="first"></a><a href="javascript:paging('prev');" class="prev"></a><div><a href="javascript:paging(1);"><strong>1</strong></a><a href="javascript:paging(2);">2</a><a href="javascript:paging(3);">3</a><a href="javascript:paging(4);">4</a><a href="javascript:paging(5);">5</a></div><a href="javascript:paging('next');" class="next"></a><a href="javascript:paging('end');" class="last"></a></div></div>
                        <!--#include virtual ="/page/_include/inc_pagination.html"-->
                	</div>
                </div><!-- // .layout_section_outer -->
            </div><!-- // #contents -->
        </section><!-- // #container -->
</div>
  
   
  <jsp:include page="/WEB-INF/views/user/common/footer.jsp" />	
  </body>
</html>
