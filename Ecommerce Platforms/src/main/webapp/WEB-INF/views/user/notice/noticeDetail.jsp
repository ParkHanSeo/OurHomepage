<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<title>내담씨앤씨</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="/WEB-INF/views/user/common/script_css_js.jsp" />
</head>
  <body>
  <jsp:include page="/WEB-INF/views/user/common/header.jsp" />
<div id="wrap" class="news">

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
        <section id="container">
            <div id="contents">
                <div class="layout_section_outer type04 no-btm-margin layout_notice_detail">
                    <div class="inner_container">
                        <div class="news_view">
							<div class="detail_wrap">
								<div class="detail_header">
									<h2 class="title tit_event">
										<p><span class="category">${board.boardTitle}</span>
										<span class="date">${post.postDate}</span></p>
										<span>${post.postTitle}</span>
									</h2>
								</div>
								<div class="detail_body">
									<div id="bodyContent">
										${post.postContents}
									</div>
								</div>
							</div>
							<div class="pagination_preview">
								<c:if test="${empty postNext.postNo}">
									<dl class="no_list">
										<dt>
											<span class="spr ico_next"></span>다음
										</dt>
										<dd>다음 글이 없습니다.</dd>
									</dl>
								</c:if>
								<c:if test="${!empty postNext.postNo}">
									<dl>
										<dt>
											<span class="spr ico_next"></span>다음
										</dt>
										<dd>
											<a href="/user/notice/getNoticeDetail/${postNext.postNo}">${postNext.postTitle}</a>
										</dd>
									</dl>
								</c:if>
								<c:if test="${empty postPrev.postNo}">
									<dl class="no_list">
										<dt>
											<span class="spr ico_before"></span>이전
										</dt>
										<dd>이전 글이 없습니다.</dd>
									</dl>
								</c:if>
								<c:if test="${!empty postPrev.postNo}">
									<dl>
										<dt>
											<span class="spr ico_before"></span>이전
										</dt>
										<dd>
											<a href="/user/notice/getNoticeDetail/${postPrev.postNo}">${postPrev.postTitle}</a>
										</dd>
									</dl>
								</c:if>
							</div>
							<div class="btn_area">
								<a href="/user/notice/noticeList/${board.boardNo}" class="common-btn is-white2"><span>목록</span></a>
							</div>
						</div>
                    </div>
                </div>
				<!-- // .card-ui -->

            </div><!-- // #contents -->
        </section><!-- // #container -->
<script>
var thisUrl = document.URL;
function shareFacebook(){
	var url = "http://www.facebook.com/sharer/sharer.php?u="+encodeURIComponent(thisUrl);
    window.open(url, "", "width=486, height=286");
}
    
function shareTwitter(){
	var snsTitle = $('meta[property="og:title"]').attr('content');
	var url = "http://twitter.com/share?url="+encodeURIComponent(thisUrl)+"&text="+encodeURIComponent(snsTitle);
    window.open(url, "tweetPop", "width=486, height=286,scrollbars=yes");
}
    
function shareKakao() {
    // 사용할 앱의 JavaScript 키 설정
    Kakao.init('f05cb101c322e649e01bb370c00e48e6');
    console.log(Kakao.isInitialized());

    var shareDescription = $('meta[property="og:description"]').attr('content');
    if(shareDescription == null){
		shareDescription = $("#bodyContent").text();
	}
    // 카카오링크 버튼 생성
    Kakao.Link.sendDefault({
        objectType: 'feed',
        content: {
       	title: $('meta[property="og:title"]').attr('content'), // 보여질 제목
        description: shareDescription, // 보여질 설명
        imageUrl: $('meta[property="og:image"]').attr('content'), // 콘텐츠 URL
        link: {
            mobileWebUrl: thisUrl,
            webUrl: thisUrl
        }
        }
    });
}

function shareClipboard() {
    // 1. 새로운 element 생성
    var tmpTextarea = document.createElement('textarea');
    
    // 2. 해당 element에 복사하고자 하는 value 저장
    tmpTextarea.value = thisUrl;
    
    // 3. 해당 element를 화면에 안보이는 곳에 위치
    tmpTextarea.setAttribute('readonly', '');
    tmpTextarea.style.position = 'absolute';
    tmpTextarea.style.left = '-9999px';
    document.body.appendChild(tmpTextarea);
    
    // 4. 해당 element의 value를 시스템 함수를 호출하여 복사
    tmpTextarea.select();
    tmpTextarea.setSelectionRange(0, 9999);  // 셀렉트 범위 설정
    var successChk = document.execCommand('copy');
    
    // 5. 해당 element 삭제
    document.body.removeChild(tmpTextarea);
    
    // 클립보드 성공여부 확인
    if(!successChk){
    	alert("URL 복사에 실패하였습니다.");
    } else {
    	alert("URL이 복사되었습니다. \n원하시는 곳에 붙여넣기 해주세요.");
    }
}
//meta tag ogiamge 세팅
/* var newURL = window.location.protocol + "//" + window.location.host + "/file/upload/image/" + $("#thumbnailImage").val();
$( 'meta[name="ogImage"]' ).attr('content', newURL); */
</script>

    </div>  
  <jsp:include page="/WEB-INF/views/user/common/footer.jsp" />	
  </body>
</html>
