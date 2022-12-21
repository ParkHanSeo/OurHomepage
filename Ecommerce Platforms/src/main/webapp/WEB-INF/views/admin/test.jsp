<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<title>내담씨앤씨</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="/WEB-INF/views/user/common/script_css_js.jsp" />
<script type="text/javascript">
 	function paging(cPage){ 
		var search = $("form[name='searchForm']").serialize();
		var boardNo = $("input[name='boardNo']").val();
		$.ajax({
			url : "/user/notice/noticeListCom?${_csrf.parameterName}=${_csrf.token}",
			type : "POST",
			data : {
				cPage,
				boardNo,
				search : search
			},
			success : function(JSONData, status){
				var display = "";
			} ,
			error : function(check){
				alert("실패")
				console.log(check)
			}
		})
	}
</script>
</head>
  <body>
  <jsp:include page="/WEB-INF/views/user/common/header.jsp" />
<div id="search-layer">
    <div class="inner">
        <div class="area_search">
            <form name="mainSearchForm" autocomplete="off" action="/user/notice/noticeList?${_csrf.parameterName}=${_csrf.token}" method="post">
            	 <input type="hidden" name="boardNo" value="${board2.boardNo}">
            	 <input type="hidden" name="cPage">
                 <input type="search" id="inputSearch" name="searchAll" placeholder="무엇이 궁금하신가요?" maxlength="30"> 
                 <label for="inputSearch" class="blind">검색어</label>
                 <span class="icon_search">
                    <!-- <img src="/images/common/03-foundation-icon-system-search-32-px.svg" alt=""> -->
                    <input type="submit" id="searchKeyword" value="검색"> 
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
            <div id="contents">
                <div class="sub_title_area">
                    <div class="inner_container">
                        <h2 class="sub_title">${board2.boardTitle}</h2>
                    </div>
                </div><!-- // .sub_title_area -->

                <div class="top_visual_area recruit">
                    <div class="inner_container">
                        <div class="top_txt_outer">
                            <div class="top_txt_area txt_notice">
                                <p class="top_txt2">${board2.boardCategory}</p>
                                <p class="top_txt3">
                                    ${board2.boardEmail}
                                </p>
                            </div>
                        </div>
                    </div>
                </div><!-- // .top_visual_area -->

                <div class="layout_section_outer_notice recruit">
                    <div class="inner_container inner_container_notice">
					<div id="recruit_DB"></div>
                        <div class="common-search_box_wrap" id="recruit_search">
                            <div class="common-search_box">
                            	<form name="searchForm" action="/user/notice/noticeList?${_csrf.parameterName}=${_csrf.token}" method="post">
	                            	<input type="hidden" name="boardNo" value="${board2.boardNo}">
	                            	<input type="hidden" name="searchType" value="1">
	                            	<label class="common-search_label" for="recruit_search_txt">검색</label>
	                                <input class="common-search_input" name="searchKeyword" id="recruit_search_txt" type="text" placeholder="검색어을 입력해주세요." title="검색어을 입력해주세요.">
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
								<li class="main_notice">
									<div class="subj_box">
										<p class="common-text_title">
											제목
										</p>
									</div>
									<div class="date_box center-left">
										<p class="common-text_reg-date">
											작성일자
										</p>
									</div>
								</li>									
							<c:forEach var="post" items="${list}">
								<li id ="postList">
									<div class="subj_box">
										<p class="common-text_txt2">
											<a href="https://recruit.cj.net/recruit/ko/recruit/recruit/bestDetail.fo?zz_jo_num=J20220805009583" target="blank">
												${post.postTitle}<br />
												${post.postContents}
											</a>
										</p>
									</div>
									<div class="date_box center-left">
										<p class="common-text_txt4">${post.postDate}</p>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
					<div id="page">
						${pagebar}
					</div>
                        <!--#include virtual ="/page/_include/inc_pagination.html"-->
                	</div>
                </div><!-- // .layout_section_outer -->
            </div><!-- // #contents -->
        </section><!-- // #container -->
</div>
  
   
  <jsp:include page="/WEB-INF/views/user/common/footer.jsp" />	
  </body>
</html>
