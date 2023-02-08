<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<title>내담씨앤씨</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width, user-scalable=no">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/company.css">
<jsp:include page="/WEB-INF/views/user/common/script_css_js.jsp" />
</head>
  <body>
  <jsp:include page="/WEB-INF/views/user/common/header.jsp" />
<body data-aos-easing="ease" data-aos-duration="400" data-aos-delay="0">

    

    <div id="wrap" class="ceo-msg">

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
            <div id="contents" class="contents_top ceofooter">
                <div class="sub_title_area">
                    <div class="inner_container">
                        <h2 class="sub_title">CEO Message</h2>
                    </div>
                </div><!-- // .sub_title_area -->
                <div class="top_visual_area ceo_msg">
                    <div class="inner_container"> 
                        <img class="ceo-img" src="${pageContext.request.contextPath}/resources/user/images/ceo_message_temp.jpg" alt="내담씨앤씨 대표 한 창 엽" >                        
						<div class="ceo_msg-box">
                            <p class="ceo_msg-txt1">
                                안녕하십니까? <br>
                                내담씨앤씨 <br class="show_768">대표이사 한창엽입니다.
                            </p>
                            <p class="ceo_msg-txt2 line-01">
                                (주)내담씨앤씨는 축적된 경험 및 Knowhow와 이를 뒷받침 해주는 전문화된 Skill 및 Solution을 기반으로, 고객사의 고객 만족 및 내부 경쟁력 향상을 이끌어 내어 한단계 업그레이드 시키는 것을 Mission으로 하고 있으며, 나아가 글로벌 경쟁력을 갖춘 IT Total Service Provider 기업으로의 성장을 비전으로 하고 있습니다.
                            </p>
                            <p class="ceo_msg-txt2 line-03">
								<strong>내담은 고객의 요구사항을 반영한 명확한 청사진을 제공합니다.</strong> <br>
								내담은 고객과의 소통으로 고객이 원하는 경영계획과 목표달성을 위해 구체적인 Process을 제공합니다.  
                            </p>
                            <p class="ceo_msg-txt2 line-03">
                            	<strong>내담은 혁신적인 서비스와 비즈니스로 감동을 선사합니다.</strong> <br>
								고객과 제휴사를 최우선으로 하여 믿음과 신뢰를 더하는 차별화된 서비스를 제공하고 있습니다
                            </p>
                            <p class="ceo_msg-txt2 line-03">
                            	<strong>내담은 성장하고자 하는 마음에 진심으로 응답합니다.</strong> <br>
								다양한 꿈과 열정을 가진 인재들을 지원하며, 비즈니스 파트너로써 함께 성장하고자 합니다.
                            </p>                            
                            <p class="ceo_msg-txt2 line-04">
                            	(주)내담씨앤씨는 고객과 함께 발맞추어 성장하는 것을 목표로 만족스러운 서비스 그리고 새로운 시각에서 바라보는 솔루션을 통해 함께 성장해가는 동반자가 되는 내담이 되겠습니다.
                            </p>
                            <p class="ceo_msg-txt3">
                                내담씨앤씨 대표 <span>한 창 엽</span>
                            </p>
                        </div>
                    </div>
                </div>
                    <div class="ceo_msg-box_media">
                            <p class="ceo_msg-txt2 line-01" >
                                (주)내담씨앤씨는 축적된 경험 및 Knowhow와 이를 뒷받침 해주는 전문화된 Skill 및 Solution을 기반으로, 고객사의 고객 만족 및 내부 경쟁력 향상을 이끌어 내어 한단계 업그레이드 시키는 것을 Mission으로 하고 있으며, 나아가 글로벌 경쟁력을 갖춘 IT Total Service Provider 기업으로의 성장을 비전으로 하고 있습니다.
                            </p>
                            <p class="ceo_msg-txt2 line-03" style="margin:20 0 0px;">
								<strong>내담은 고객의 요구사항을 반영한 명확한 청사진을 제공합니다.</strong> <br>
								내담은 고객과의 소통으로 고객이 원하는 경영계획과 목표달성을 위해 구체적인 Process을 제공합니다.  
                            </p>
                            <p class="ceo_msg-txt2 line-03"style="margin:20 0 0px;">
                            	<strong>내담은 혁신적인 서비스와 비즈니스로 감동을 선사합니다.</strong> <br>
								고객과 제휴사를 최우선으로 하여 믿음과 신뢰를 더하는 차별화된 서비스를 제공하고 있습니다
                            </p>
                            <p class="ceo_msg-txt2 line-03"style="margin:20 0 0px;">
                            	<strong>내담은 성장하고자 하는 마음에 진심으로 응답합니다.</strong> <br>
								다양한 꿈과 열정을 가진 인재들을 지원하며, 비즈니스 파트너로써 함께 성장하고자 합니다.
                            </p>                            
                            <p class="ceo_msg-txt2 line-04"style="margin:20 0 0px;">
                            	(주)내담씨앤씨는 고객과 함께 발맞추어 성장하는 것을 목표로 만족스러운 서비스 그리고 새로운 시각에서 바라보는 솔루션을 통해 함께 성장해가는 동반자가 되는 내담이 되겠습니다.
                            </p>
                            <p class="ceo_msg-txt3"style="margin:40 0 0px;">
                                내담씨앤씨 대표 <span>한 창 엽</span>
                            </p>
                        </div>
            </div><!-- // #contents -->
        </section><!-- // #container -->
</div>
  
</body>
  <jsp:include page="/WEB-INF/views/user/common/footer.jsp" />
  </body>
</html>
