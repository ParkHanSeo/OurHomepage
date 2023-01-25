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
            <div id="contents" class="contents_top">
                <div class="sub_title_area">
                    <div class="inner_container">
                        <h2 class="sub_title">CEO Message</h2>
                    </div>
                </div><!-- // .sub_title_area -->
                <div class="top_visual_area ceo_msg">
                    <div class="inner_container"> 
                        <img class="ceo-img" src="${pageContext.request.contextPath}/resources/user/images/ceo_message_temp.jpg" alt="내담씨앤씨 대표 한 창 엽" style="width: 730px;">                        
<%-- 						<img class="ceo-img" src="${pageContext.request.contextPath}/resources/user/images/best_ceo.png" alt="내담씨앤씨 대표 한 창 엽" >
 --%>                        <div class="ceo_msg-box">
                            <p class="ceo_msg-txt1">
                                안녕하십니까? <br>
                                내담씨앤씨 <br class="show_768">대표이사 한창엽입니다.
                            </p>
                            <p class="ceo_msg-txt2 line-01">
                                (주)내담C&C는 축적된 경험 및 Knowhow와 이를 뒷받침 해주는 전문화된 Skill 및 Solution을 기반으로, 고객사의 고객 만족 및 내부 경쟁력 향상을 이끌어 내어 한단계 업그레이드 시키는 것을 Mission으로 하고 있으며, 나아가 글로벌 경쟁력을 갖춘 IT Total Service Provider 기업으로의 성장을 비전으로 하고 있습니다.
                            </p>
                            <p class="ceo_msg-txt2 line-02">
								<strong>새로운 경험과 가치를 만들어 갑니다.</strong> <br>
								고객에 대한 깊은 이해와 기술 역량을 활용하여 새로운 가능성을 열어가고 있습니다.
                            </p>
                            <p class="ceo_msg-txt2 line-03">
                            	<strong>혁신적인 서비스와 비즈니스로 감동을 선사합니다.</strong> <br>
								고객과 제휴사를 최우선으로 하여 믿음과 신뢰를 더하는 차별화된 서비스를 제공하고 있습니다
                            </p>
                            <p class="ceo_msg-txt2 line-03">
                            	<strong>창의와 협력으로 미래 가치를 구현합니다.</strong> <br>
								다양한 꿈과 열정을 가진 인재들을 지원하고 비즈니스 파트너와 함께 성장하고자 합니다.
                            </p>                            
                            <p class="ceo_msg-txt2 line-04">
                            	(주)내담C&C는 새로운 내일을 위한 개척자로서 고객을 만족시킬 신 기술과 혁신적인 서비스 그리고 창조적인 솔루션을 통해 내담이 펼쳐갈 새로운 도전과 기능성에 변함없는 따뜻한 응원과 응원과 관심 부탁 드립니다.
                            </p>
                            <p class="ceo_msg-txt3">
                                내담씨앤씨 대표 <span>한 창 엽</span>
                            </p>
                        </div>
                    </div>
                </div>

                <div class="layout_section_outer ceo-msg-detail">
                    <div class="inner_container">
                        <div class="ceo_msg-box">
                            <p class="ceo_msg-txt2 line-01">
                                CJ올리브네트웍스 홈페이지를 찾아주신 여러분 환영합니다. <br>
                                CJ올리브네트웍스는 생활문화 영역의 IT서비스를 개발하고 운영하며, 인공지능(AI)과 빅데이터, 클라우드, 보안 등 미래 신기술을 개발하고 활용해 고객의 디지털 혁신(Digital Transformation)을 돕는 ICT 전문기업입니다.
                            </p>
                            <p class="ceo_msg-txt2 line-02">
                                저희는 시대의 큰 변화를 맞아 회사의 새로운 미션과 비전을 선포하고 질적인 혁신과 성장을 이루고자 노력하고 있습니다. 우리가 사는 세상은 기후 변화와 생태환경의 파괴, 기술발전으로 인한 산업 전환과 고용불안, 지정학적 대립과 불안정 등 큰 변화요인으로 인해 혼란과 불안을 겪고 있으며, 이에 따라 기업과 사회의 지속가능성(Sustainability)에 대한 필요성은 높아지고 있습니다.
                            </p>
                            <p class="ceo_msg-txt2 line-03">
                                CJ올리브네트웍스는 강한 소명의식과 유연하되 진취적인 기업문화를 바탕으로 시대의 변화를 뒤쫓기보다는 다가올 미래를 남들보다 먼저, 더 멀리 예측하고, 전 세계의 역량있는 조직 및 기업들과 협업하여 심층적인 문제들을 해결해 나가는 책임감 있는 회사로 거듭나겠습니다.
                            </p>
                            <p class="ceo_msg-txt2 line-04">
                                또한 저희는 고객과 구성원, 주주를 포함한 모든 이해관계자의 안녕을 기업활동의 지향점으로 삼아, 바람직한 변화를 선도하여 우리 고객과 사회, 국가와 인류사회의 지속가능한 발전(Sustainable Development)에 기여하고자 합니다. <br>
                                애정과 관심을 가지고 우리 회사를 지켜봐 주시고, 모자란 부분에 대해서는 아낌없는 조언을 부탁드립니다. <br>
                                감사합니다.
                            </p>
                            <p class="ceo_msg-txt3">
                                CJ올리브네트웍스 대표이사 <span>차 인 혁</span>
                            </p>
                        </div>
                    </div>
                </div>
<!-- 
                <div class="layout_section_outer ceo-profile">
                    <div class="inner_container">
                        <div class="layout_head">
                            <p class="top_txt1">
                                CEO Profile
                            </p>
                        </div>
<style>
.layout_section_outer.ceo-profile .common-layout_2:not(.swiper-wrapper).is-vertical .items:nth-child(n + 3) {margin-top:48px;}
.ceo_profile-list {}
.ceo_profile-list dt {margin-bottom:24px; font-size:24px; line-height:36px; letter-spacing:-0.2px;}
.ceo_profile-list dd {position:relative;}
.ceo_profile-list dd + dd {margin-top:8px;}
.ceo_profile-list dd .front {position:absolute; left:0; top:0; font-size:18px; line-height:28px; letter-spacing:-0.2px;}
.ceo_profile-list dd .desc {padding-left:80px; font-size:18px; line-height:28px; color:#666; letter-spacing:-0.2px;}
.ceo_profile-list.type01 dd .desc {padding-left:35px;}

@media all and (max-width: 768px) {
    .layout_section_outer.ceo-profile .common-layout_2:not(.swiper-wrapper).is-vertical .items:nth-child(n + 3) {margin-top:40px;}
    .ceo_profile-list dt {margin-bottom:16px; font-size:20px; line-height:30px;}
    .ceo_profile-list dd + dd {margin-top:16px;}
    .ceo_profile-list dd .front {position:relative; display:block; font-size:16px; line-height:26px;}
    .ceo_profile-list.type01 dd .front {position:absolute; left:0;}
    .ceo_profile-list dd .desc {padding-left:0; font-size:16px; line-height:26px;margin-top: 4px;}
    .ceo_profile-list.type01 dd .desc {padding-left:32px;}
}
</style>
                        <div class="layout_body">
                            <ul class="common-layout_2 is-vertical">
                                <li class="items">
                                    <dl class="ceo_profile-list">
                                        <dt>주요 경력</dt>
                                        <dd>
                                            <span class="front">2020년</span>
                                            <p class="desc">예시) 대표이사/그룹CDO 겸직</p>
                                        </dd>
                                    </dl>
                                </li>
                                <li class="items">
                                    <dl class="ceo_profile-list type01">
                                        <dt>외부 활동</dt>
                                        <dd>
                                            <span class="front">(現)</span>
                                            <p class="desc">예시) 대통령직속 정책기획위 국정자문단 디지털뉴딜 부분과장</p>
                                        </dd>
                                    </dl>
                                </li>
                                <li class="items">
                                    <dl class="ceo_profile-list">
                                        <dt>학력</dt>
                                        <dd>
                                            <span class="front">2008년</span>
                                            <p class="desc">예시) Drexel University, MBA</p>
                                        </dd>
                                    </dl>
                                </li>
                                <li class="items">
                                    <dl class="ceo_profile-list">
                                        <dt>수상경력</dt>
                                        <dd>
                                            <span class="front">2021년</span>
                                            <p class="desc">예시) ‘제22회 소프트웨어 산업인의 날 유공자 포상’ <br class="hide_1024">과학기술정보통신부 장관 표창 </p>
                                        </dd>
                                    </dl>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
 -->
            </div><!-- // #contents -->
        </section><!-- // #container -->
</div>
  
</body>
  <jsp:include page="/WEB-INF/views/user/common/footer.jsp" />
  </body>
</html>
