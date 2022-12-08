<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>내담씨앤씨</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <jsp:include page="/WEB-INF/views/user/common/script_css_js.jsp" />
    <script>
      // url '+, &' 인코딩 처리
      function hashtagLink(url, param) {
        var encParam = param.replace(/&/g, "%26").replace(/\+/g, "%2B");
        location.href = url + encParam;
      }
    </script>
    <script>
      var business_num = "";
      var businessDetail_num = "";
    </script>
    <script src="//rum.beusable.net/script/checker/b200701e124559u075/dc76114514?url=https%3A%2F%2Fwww.cjolivenetworks.co.kr%2F" async="" type="text/javascript"></script>
	<script type="text/javascript">
	$.ajax({
		url : "/user/comm/json/menuHeaderList" ,
		method : "GET" ,
		dataType : "JSON" , 
		headers : {
			"Accept" : "application/json",
			"Content-Type" : "application/json"
		},
		success : function(data, status){
			var menu = data.list;
			var menu2 = data.list2;
			var display = '';
			for(var i = 0; i < menu.length; i++){
				if(menu[i].status != 'n'){
					display = "<li class>"
							+ " <a href='"+menu[i].url+"'>"+menu[i].title+"</a>"
							+ "  <section class='sub sub-menu"+(i+1)+"'>"
							+ "   <div class='sub-wrap'>"
							+ "   <ul class='sub-2depth'>"							
							for(var j = 0; j < data.list2.length; j++){
								if(data.list[i].code == data.list2[j].originNo && menu2[j].status != 'n'){
									display	+= "<li><a href='"+menu2[j].url+"'>"+menu2[j].title+"</a></li>"
											
								}
							}
					display	+= '  </ul>'
						    + '   </div>'
						    + '  </section>'
						    + '</li>';
					$('#menuHeader').append(display)
				}
			}
		}
	})
	  	
	</script>    
  </head>
  <body>
    <div id="wrap">
      <!-- 공통 header -->
      <header id="header">
        <div class="inner">
          <h1 class="logo">
            <a href="${pageContext.request.contextPath}/user/dashBoard">
              <img src="${pageContext.request.contextPath}/resources/imgs/imageBoard/neadam_logo.png" alt="logo" class="basic_neadam" />
            </a>
          </h1>
          <nav class="gnb-wrap">
            <ul id="menuHeader">
              <li>
                <a href="/company/overview">소개</a>
                <section class="sub sub-menu1">
                  <div class="sub-wrap">
                    <ul class="sub-2depth">
                      <li><a href="/company/overview">소개</a></li>
                      <li><a href="/company/ceo_greeting">리더십</a></li>
                      <li><a href="/company/history">히스토리</a></li>
                      <li><a href="/company/location">위치</a></li>
                    </ul>
                  </div>
                </section>
              </li>
            </ul>
          </nav>

          <div id="sitemap" aria-hidden="true">
            <div class="sitemap-body">
              <ul>
                <li>
                  <a href="/company/overview" class="btn_submenu">소개</a>
                  <div class="sub-wrap">
                    <ul class="sub-2depth">
                      <li><a href="/company/overview">소개</a></li>
                      <li><a href="/company/ceo_greeting">리더십</a></li>
                      <li><a href="/company/history">히스토리</a></li>
                      <li><a href="/company/location">위치</a></li>
                    </ul>
                  </div>
                </li>
                <li>
                  <a href="/business/our_services" class="btn_submenu">서비스</a>
                  <div class="sub-wrap sub-sitemap2">
                    <ul class="sub-2depth">
                      <li class="show_1280">
                        <a href="/business/our_services" class="btn_all_service">전체 서비스 보기</a>
                      </li>
                      <li>
                        <a href="/business/ai_factory_solution" class="btn_submenu">스마트 제조·물류</a>
                        <ul class="sub-3depth">
                          <li>
                            <a href="/business/ai_factory_solution">AI팩토리</a>
                          </li>
                          <li>
                            <a href="/business/ai_logistics">AI로지스틱스</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="/business/media_culture_spaces" class="btn_submenu">미디어 컨버전스</a>
                        <ul class="sub-3depth">
                          <li>
                            <a href="/business/media_culture_spaces">스마트 컬처 스페이스</a>
                          </li>
                          <li>
                          	<a href="/business/nft">NFT</a>
                          </li>
                          <li>
                            <a href="/business/broadcast">방송 송출 서비스</a>
                          </li>
                          <li>
                            <a href="/business/encoding_house">인코딩 하우스</a>
                          </li>
                          <li>
                            <a href="/business/music_service">공간 음악 서비스</a>
                          </li>
                          <li>
                            <a href="/business/media_Infra">방송•미디어 통합 인프라 솔루션</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="/business/cj_one_ad" class="btn_submenu">디지털 마케팅</a>
                        <ul class="sub-3depth">
                          <li>
                          	<a href="/business/cj_one_ad">CJ ONE AD</a>
                          </li>
                          <li>
                            <a href="/business/cj_gift_card">CJ기프트카드</a>
                          </li>
                          <li>
                            <a href="/business/mobile_marketing_automation">데이터 마케팅 솔루션</a>
                          </li>
                          <li>
                            <a href="/business/data_voucher">데이터 바우처</a>
                          </li>
                          <li>
                            <a href="/business/big_data">빅데이터 통합 마케팅</a>
                          </li>
                          <li>
                            <a href="/business/messaging_service">통합 커뮤니케이션 솔루션</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="/business/smart_store_solution" class="btn_submenu">이커머스&리테일</a>
                        <ul class="sub-3depth">
                          <li>
                            <a href="/business/smart_store_solution">매장 통합관리 솔루션</a>
                          </li>
                          <li>
                            <a href="/business/ticket_reservation">티켓 통합 솔루션</a>
                          </li>
                          <li>
                            <a href="/business/payment_gateway_security">결제 솔루션</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="/business/system_integration" class="btn_submenu">스마트 비즈니스</a>
                        <ul class="sub-3depth">
                          <li>
                            <a href="/business/system_integration">시스템 통합</a>
                          </li>
                          <li>
                            <a href="/business/system_management">시스템 운영</a>
                          </li>
                          <li>
                            <a href="/business/web_app_service">웹앱 서비스</a>
                          </li>
                          <li>
                            <a href="/business/workscan">스마트 인사관리 플랫폼</a>
                          </li>
                          <li>
                            <a href="/business/e_learning">이러닝 서비스</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="/business/ai_infra" class="btn_submenu">클라우드&인프라</a>
                        <ul class="sub-3depth">
                          <li>
                            <a href="/business/ai_infra">AI 통합 인프라 솔루션</a>
                          </li>
                          <li>
                            <a href="/business/it_infra">IT 인프라 서비스</a>
                          </li>
                          <li>
                            <a href="/business/cloud_service">Hybrid/Multi 클라우드 서비스</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                        <a href="/business/cloud_security" class="btn_submenu">정보 보호</a>
                        <ul class="sub-3depth">
                          <li>
                            <a href="/business/cloud_security">퍼블릭 클라우드 보안</a>
                          </li>
                          <li>
                            <a href="/business/security">보안 취약점 진단 & 모의해킹</a>
                          </li>
                          <li>
                            <a href="/business/ot_ics_security">산업제어시스템(OT/ICS) 보안</a>
                          </li>
                        </ul>
                      </li>
                      <li class="hide_1280">
                        <a href="/business/our_services">전체 서비스 보기</a>
                      </li>
                    </ul>
                  </div>
                </li>
                <li>
                  <a href="/tech/rnd" class="btn_submenu">기술</a>
                  <div class="sub-wrap">
                    <ul class="sub-2depth">
                      <li><a href="/tech/rnd">기술 연구</a></li>
                      <li><a href="/tech/ai_vision">AI 비전 연구</a></li>
                      <li><a href="/tech/ai_language">AI 자연어 연구</a></li>
                      <li><a href="/tech/ai_audio">AI 오디오 연구</a></li>
                      <li><a href="/tech/data_science">데이터 사이언스</a></li>
                      <li><a href="/tech/blockchain">블록체인</a></li>
                    </ul>
                  </div>
                </li>
                <li>
                  <a href="/sustainability/compliance/ceo_practice" class="btn_submenu">ESG</a>
                  <div class="sub-wrap">
                    <ul class="sub-2depth">
                      <li>
                        <a href="/sustainability/compliance/ceo_practice">윤리 경영</a>
                      </li>
                      <li>
                        <a href="/sustainability/compliance/ai_ethics">AI윤리원칙</a>
                      </li>
                      <li>
                        <a href="/sustainability/compliance/safetypolicy">안전 경영</a>
                      </li>
                      <li>
                        <a href="/sustainability/contribution/education" class="btn_submenu">사회 공헌</a>
                        <ul class="sub-3depth">
                          <li>
                            <a href="/sustainability/contribution/education">공평한 교육</a>
                          </li>
                          <li>
                            <a href="/sustainability/contribution/economic">경제적 기회</a>
                          </li>
                          <li>
                            <a href="/sustainability/contribution/welfare">건강한 복지</a>
                          </li>
                        </ul>
                      </li>
                    </ul>
                  </div>
                </li>
                <li><a href="/news/recent_news">뉴스</a></li>
                <li>
                  <a href="/culture/people" class="btn_submenu">문화</a>
                  <div class="sub-wrap">
                    <ul class="sub-2depth">
                      <li><a href="/culture/people">올네인 이야기</a></li>
                      <li><a href="/culture/growth">성장</a></li>
                      <li><a href="/culture/life">라이프</a></li>
                    </ul>
                  </div>
                </li>
                <li>
                  <a href="/recruit/job_notice" class="btn_submenu">채용</a>
                  <div class="sub-wrap">
                    <ul class="sub-2depth">
                      <li><a href="/recruit/job_notice">채용 공고</a></li>
                      <li><a href="/recruit/procedure">채용 프로세스</a></li>
                    </ul>
                  </div>
                </li>
              </ul>
            </div>
          <div class="header_util">
            <div class="btn_util_wrap">
              <a href="/util/contact_us" class="btn_contact">고객센터</a> 
              <a href="/solutions" target="_blank" title="새 창 열림" class="btn_brochure">브로슈어</a>
						<!-- #수정 2022-05-25 국문 오픈전 숨김 시작-->
              <span class="util_lang">
                <a href="javascript:void(0)" class="btn_language">
                  <span class="blind">다국어 보기</span>
                  <svg xmlns="http://www.w3.org/2000/svg" width="32" height="33" viewBox="0 0 32 33">
                    <g fill="none" fill-rule="evenodd">
                      <path d="M0 .322h32v32.356H0z"></path>
                      <path d="m9.5 15.992-3.5.002c.168-4.614 3.78-8.671 8-9.607-2.722 1.9-4.353 5.906-4.5 9.605zm0 1.016L6 17.006c.168 4.614 3.78 8.671 8 9.607-2.722-1.9-4.353-5.906-4.5-9.605zm13 0 3.5-.002c-.168 4.614-3.78 8.671-8 9.607 2.722-1.9 4.353-5.906 4.5-9.605zm0-1.016 3.5.002c-.168-4.614-3.78-8.671-8-9.607 2.722 1.9 4.353 5.906 4.5 9.605zm-6 .002V6.39c2.788 1.659 4.819 5.575 4.996 9.605H16.5zm0 10.617v-9.605h5c-.19 3.82-2.257 7.801-5 9.605zm-1.005-9.605v9.605c-2.74-1.803-4.804-5.785-4.995-9.605h4.995zm.001-10.617v9.605H10.5c.177-4.03 2.208-7.946 4.996-9.605zM5 16.499c0 6.134 4.935 11.123 11 11.123 6.066 0 11-4.99 11-11.122 0-6.133-4.934-11.122-11-11.122-6.065 0-11 4.99-11 11.122z" fill="#000"></path>
                    </g>
                  </svg>
				</a>
                <div class="language_list">
                  <ul>
                    <li><a href="#" class="active lang_ko">KOR</a></li>
                    <li><a href="#" class="lang_en">ENG</a></li>
                  </ul>
                </div>
              </span>
              <!-- #수정 2022-05-25 국문 오픈전 숨김 끝 -->
              <a href="" class="btn_search">
                <span class="blind">검색창 열기</span>
                <svg xmlns="http://www.w3.org/2000/svg" width="32" height="33" viewBox="0 0 32 33">
                  <g fill="none" fill-rule="evenodd">
                    <path d="M0 .322h32v32.356H0z"></path>
                    <g transform="translate(5 5.378)" stroke="#000">
                      <ellipse cx="9" cy="9.1" rx="8.5" ry="8.6"></ellipse>
                      <path stroke-linecap="round" d="m15 15.167 6.364 6.434"></path>
                    </g>
                  </g>
                </svg>
			  </a>
            </div>

            <a href="javascript:;" class="btn_menu">
              <span class="blind">전체메뉴 열기</span>
              <i class="hamburger-ico">
                <span class="line line1"></span>
                <span class="line line2"></span>
                <span class="line line3"></span>
              </i>
            </a>
          </div>
        </div>
      </header>
      <!--  공통 search -->

      <div id="search-layer">
        <div class="inner">
          <div class="area_search">
			<form autocomplete="off" action="/searchall/search_results" method="post">
				<input type="search" id="inputSearch" name="searchAll" placeholder="무엇이 궁금하신가요?" maxlength="30"/> 
				<label for="inputSearch" class="blind">검색어</label> 
				<span class="icon_search"> <img src="" alt="" /> 
					<input type="submit" id="btnCommonSearchAll" value="검색" />
				</span>
			</form>

			<p class="result-error-txt" style="display: none">
              검색어를 입력해주세요.
            </p>

            <div class="hash_area search_tag">
				<a href="javascript:void(0);" onclick="hashtagLink('/searchall/search_results?searchAll=','AI')" class="hash_tag">#AI</a> 
				<a href="javascript:void(0);" onclick="hashtagLink('/searchall/search_results?searchAll=','블록체인')" class="hash_tag">#블록체인</a>
				<a href="javascript:void(0);" onclick="hashtagLink('/searchall/search_results?searchAll=','NFT')" class="hash_tag" >#NFT</a> 
				<a href="javascript:void(0);" onclick="hashtagLink('/searchall/search_results?searchAll=','빅데이터')" class="hash_tag">#빅데이터</a> 
				<a href="javascript:void(0);" onclick="hashtagLink('/searchall/search_results?searchAll=','클라우드')" class="hash_tag">#클라우드</a>
				<a href="javascript:void(0);" onclick="hashtagLink('/searchall/search_results?searchAll=','CJONE')" class="hash_tag">#CJONE</a>
				<a href="javascript:void(0);" onclick="hashtagLink('/searchall/search_results?searchAll=','데이터마케팅')" class="hash_tag">#데이터마케팅</a>
			</div>
          </div>
          <a href="" class="btn_close_search">
            <span class="blind">검색창 닫기</span>
            <i class="close-ico">
              <span class="line line1"></span> <span class="line line2"></span>
              <span class="line line3"></span>
            </i>
          </a>
        </div>
      </div>
      <script>
        var html = "";
        /* $.ajax({
	url : "/searchall/hashtag",
	type : "post",
	datatype : "json",
	success : function(data){
		
		for (var i = 0; i<data.length; i++) {
			html += "<a href='javascript:void(0);' onclick=hashtagLink('/searchall/search_results?searchAll='," + "'" + data[i].slice(1) + "') class='hash_tag'>" + data[i] + "</a>";
		} 
		
		$(".search_tag").append(html);
	}
}) */
        $(function () {
          // 검색어 유효성 체크
          $("#btnCommonSearchAll").click(function () {
            if ($("#inputSearch").val() == "") {
              $(".result-error-txt").show();
              return false;
            }
          });
        });
      </script>

      <section id="container">
        <div id="contents">
          <div class="visual-wrapper section" style="height: 956px">
					<div class="visual-slider swiper-container-initialized swiper-container-horizontal">
						<div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-1687px, 0px, 0px);">
							<div class="swiper-slide swiper-slide-duplicate" data-swiper-slide-index="2" style="width: 241px">
								<div class="view" style="background-image: url(${pageContext.request.contextPath}/resources/user/images/image_1.jpg);"></div>
								<p class="blind">배경이미지 대채텍스트</p>
								<div class="inner">
									<div class="visual_txt_area aos-init aos-animate" data-aos="fade-up" data-aos-offset="0" data-aos-duration="400" data-aos-delay="300" data-aos-easing="linear">
										<div class="main-banner">
											<h2 class="tit-slide">
												크로스 마케팅 플랫폼 <br />'ColLAB' 론칭
											</h2>
											<p class="description">
												1억 2천만 회원 데이터로 <br />정교한 타켓 맞춤 광고 집행이 가능합니다.
											</p>
										</div>
										<div class="btn-area">
											<a href="https://www.cjolivenetworks.co.kr/news/press_release/detail/560?ca=ALL" class="common-btn is-white2">
												<span>뉴스 보기</span>
												<i class="icon link-arrow"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev" data-swiper-slide-index="3" style="width: 241px">
								<div class="view" style="background-image: url(${pageContext.request.contextPath}/resources/user/images/image_1.jpg);"></div>
								<p class="blind">배경이미지 대채텍스트</p>
								<div class="inner">
									<div class="visual_txt_area aos-init aos-animate" data-aos="fade-up" data-aos-offset="0" data-aos-duration="400" data-aos-delay="300" data-aos-easing="linear">
										<div class="main-banner">
											<h2 class="tit-slide">
												AI·AR 신기술로 <br />산업안전 메타버스 3종 개발
											</h2>
											<p class="description">
												산업 현장의 중대재해 예방과 작업자의 안전 보건을 통해 <br />ESG경영을 지원합니다.
											</p>
										</div>
										<div class="btn-area">
											<a href="https://www.cjolivenetworks.co.kr/news/press_release/detail/547?ca=ALL" class="common-btn is-white2">
												<span>뉴스 보기</span>
												<i class="icon link-arrow"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" data-swiper-slide-index="4" style="width: 241px">
								<div class="view" style=" background-image:url(${pageContext.request.contextPath}/resources/user/images/image_1.jpg);"></div>
								<p class="blind">배경이미지 대채텍스트</p>
								<div class="inner">
									<div class="visual_txt_area aos-init aos-animate" data-aos="fade-up" data-aos-offset="0" data-aos-duration="400" data-aos-delay="300" data-aos-easing="linear">
										<div class="main-banner">
											<h2 class="tit-slide">
												AI 아트워크 플랫폼 에어트(AiRT) 기술로 <br />예술작품 NFT발행
											</h2>
											<p class="description">
												AI 디지털아트 류재춘 화백 에디션 완판을 시작으로 <br />K-콘텐츠 NFT확산에 나섭니다.
											</p>
										</div>
										<div class="btn-area">
											<a href="https://www.cjolivenetworks.co.kr/business/nft" class="common-btn is-white2">
												<span>서비스 보기</span>
												<i class="icon link-arrow"></i></a> 
											<a href="https://www.cjolivenetworks.co.kr/news/press_release/detail/515?ca=ALL" class="common-btn is-white">
												<span>뉴스 보기</span>
												<i class="icon link-arrow2"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide swiper-slide-duplicate-next"
								data-swiper-slide-index="0" style="width: 241px">
								<div class="view"
									style="
                      background-image: url(${pageContext.request.contextPath}/resources/user/images/image_1.jpg);
                    "></div>

								<p class="blind">배경이미지 대채텍스트</p>
								<div class="inner">
									<div class="visual_txt_area aos-init aos-animate"
										data-aos="fade-up" data-aos-offset="0" data-aos-duration="400"
										data-aos-delay="300" data-aos-easing="linear">
										<div class="main-banner">
											<h2 class="tit-slide">
												IT서비스 업계 최초 <br />‘인간 중심’의 AI윤리원칙 선포
											</h2>
											<p class="description">
												AI기술을 활용할 때 구성원들이 반드시 실천해야 할 <br />5대 원칙을 만들었습니다.
											</p>
										</div>
										<div class="btn-area">
											<a
												href="https://www.cjolivenetworks.co.kr/sustainability/compliance/ai_ethics"
												class="common-btn is-white2"><span>자세히 보기</span><i
												class="icon link-arrow"></i></a> <a
												href="https://www.cjolivenetworks.co.kr/news/press_release/detail/514?ca=ALL"
												class="common-btn is-white"><span>뉴스 보기</span><i
												class="icon link-arrow2"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide" data-swiper-slide-index="1"
								style="width: 241px">
								<div class="view"
									style="
                      background-image: url(${pageContext.request.contextPath}/resources/user/images/image_2.jpg);
                    "></div>

								<p class="blind">배경이미지 대채텍스트</p>
								<div class="inner">
									<div class="visual_txt_area aos-init aos-animate"
										data-aos="fade-up" data-aos-offset="0" data-aos-duration="400"
										data-aos-delay="300" data-aos-easing="linear">
										<div class="main-banner">
											<h2 class="tit-slide">
												시각장애인을 위한 화면 해설 방송에 <br />'AI 보이스 클로닝' 기술 적용
											</h2>
											<p class="description">
												텍스트를 입력하면 음성을 자동으로 생성해주는 AI기술로 <br />시각장애인이 다양한 콘텐츠를 유명인의
												내레이션으로 즐기게 되었습니다.
											</p>
										</div>
										<div class="btn-area">
											<a href="https://www.cjolivenetworks.co.kr/tech/ai_audio"
												class="common-btn is-white2"><span>기술 보기</span><i
												class="icon link-arrow"></i></a> <a
												href="https://www.cjolivenetworks.co.kr/news/press_release/detail/595?ca=ALL"
												class="common-btn is-white"><span>뉴스 보기</span><i
												class="icon link-arrow2"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide" data-swiper-slide-index="2"
								style="width: 241px">
								<div class="view"
									style="
                      background-image: url(${pageContext.request.contextPath}/resources/user/images/image_2.jpg);
                    "></div>

								<p class="blind">배경이미지 대채텍스트</p>
								<div class="inner">
									<div class="visual_txt_area aos-init aos-animate"
										data-aos="fade-up" data-aos-offset="0" data-aos-duration="400"
										data-aos-delay="300" data-aos-easing="linear">
										<div class="main-banner">
											<h2 class="tit-slide">
												크로스 마케팅 플랫폼 <br />'ColLAB' 론칭
											</h2>
											<p class="description">
												1억 2천만 회원 데이터로 <br />정교한 타켓 맞춤 광고 집행이 가능합니다.
											</p>
										</div>
										<div class="btn-area">
											<a
												href="https://www.cjolivenetworks.co.kr/news/press_release/detail/560?ca=ALL"
												class="common-btn is-white2"><span>뉴스 보기</span><i
												class="icon link-arrow"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide swiper-slide-prev"
								data-swiper-slide-index="3" style="width: 241px">
								<div class="view"
									style="
                      background-image: url(${pageContext.request.contextPath}/resources/user/images/image_3.jpg);
                    "></div>

								<p class="blind">배경이미지 대채텍스트</p>
								<div class="inner">
									<div class="visual_txt_area aos-init aos-animate"
										data-aos="fade-up" data-aos-offset="0" data-aos-duration="400"
										data-aos-delay="300" data-aos-easing="linear">
										<div class="main-banner">
											<h2 class="tit-slide">
												AI·AR 신기술로 <br />산업안전 메타버스 3종 개발
											</h2>
											<p class="description">
												산업 현장의 중대재해 예방과 작업자의 안전 보건을 통해 <br />ESG경영을 지원합니다.
											</p>
										</div>
										<div class="btn-area">
											<a
												href="https://www.cjolivenetworks.co.kr/news/press_release/detail/547?ca=ALL"
												class="common-btn is-white2"><span>뉴스 보기</span><i
												class="icon link-arrow"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide swiper-slide-active"
								data-swiper-slide-index="4" style="width: 241px">
								<div class="view"
									style="
                      background-image: url(${pageContext.request.contextPath}/resources/user/images/image_3.jpg);
                    "></div>

								<p class="blind">배경이미지 대채텍스트</p>
								<div class="inner">
									<div class="visual_txt_area aos-init aos-animate"
										data-aos="fade-up" data-aos-offset="0" data-aos-duration="400"
										data-aos-delay="300" data-aos-easing="linear">
										<div class="main-banner">
											<h2 class="tit-slide">
												AI 아트워크 플랫폼 에어트(AiRT) 기술로 <br />예술작품 NFT발행
											</h2>
											<p class="description">
												AI 디지털아트 류재춘 화백 에디션 완판을 시작으로 <br />K-콘텐츠 NFT확산에 나섭니다.
											</p>
										</div>
										<div class="btn-area">
											<a href="https://www.cjolivenetworks.co.kr/business/nft"
												class="common-btn is-white2"><span>서비스 보기</span><i
												class="icon link-arrow"></i></a> <a
												href="https://www.cjolivenetworks.co.kr/news/press_release/detail/515?ca=ALL"
												class="common-btn is-white"><span>뉴스 보기</span><i
												class="icon link-arrow2"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div
								class="swiper-slide swiper-slide-duplicate swiper-slide-next"
								data-swiper-slide-index="0" style="width: 241px">
								<div class="view"
									style="
                      background-image: url(${pageContext.request.contextPath}/resources/user/images/image_4.jpg);
                    "></div>

								<p class="blind">배경이미지 대채텍스트</p>
								<div class="inner">
									<div class="visual_txt_area aos-init aos-animate"
										data-aos="fade-up" data-aos-offset="0" data-aos-duration="400"
										data-aos-delay="300" data-aos-easing="linear">
										<div class="main-banner">
											<h2 class="tit-slide">
												IT서비스 업계 최초 <br />‘인간 중심’의 AI윤리원칙 선포
											</h2>
											<p class="description">
												AI기술을 활용할 때 구성원들이 반드시 실천해야 할 <br />5대 원칙을 만들었습니다.
											</p>
										</div>
										<div class="btn-area">
											<a
												href="https://www.cjolivenetworks.co.kr/sustainability/compliance/ai_ethics"
												class="common-btn is-white2"><span>자세히 보기</span><i
												class="icon link-arrow"></i></a> <a
												href="https://www.cjolivenetworks.co.kr/news/press_release/detail/514?ca=ALL"
												class="common-btn is-white"><span>뉴스 보기</span><i
												class="icon link-arrow2"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="1" style="width: 241px">
								<div class="view"
									style="
                      background-image: url(${pageContext.request.contextPath}/resources/user/images/image_5.jpg);
                    "></div>

								<p class="blind">배경이미지 대채텍스트</p>
								<div class="inner">
									<div class="visual_txt_area aos-init aos-animate"
										data-aos="fade-up" data-aos-offset="0" data-aos-duration="400"
										data-aos-delay="300" data-aos-easing="linear">
										<div class="main-banner">
											<h2 class="tit-slide">
												시각장애인을 위한 화면 해설 방송에 <br />'AI 보이스 클로닝' 기술 적용
											</h2>
											<p class="description">
												텍스트를 입력하면 음성을 자동으로 생성해주는 AI기술로 <br />시각장애인이 다양한 콘텐츠를 유명인의
												내레이션으로 즐기게 되었습니다.
											</p>
										</div>
										<div class="btn-area">
											<a href="https://www.cjolivenetworks.co.kr/tech/ai_audio"
												class="common-btn is-white2"><span>기술 보기</span><i
												class="icon link-arrow"></i></a> <a
												href="https://www.cjolivenetworks.co.kr/news/press_release/detail/595?ca=ALL"
												class="common-btn is-white"><span>뉴스 보기</span><i
												class="icon link-arrow2"></i></a>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide swiper-slide-duplicate"
								data-swiper-slide-index="2" style="width: 241px">
								<div class="view"
									style="
                      background-image: url(${pageContext.request.contextPath}/resources/user/images/image_6.jpg);
                    "></div>

								<p class="blind">배경이미지 대채텍스트</p>
								<div class="inner">
									<div class="visual_txt_area aos-init aos-animate"
										data-aos="fade-up" data-aos-offset="0" data-aos-duration="400"
										data-aos-delay="300" data-aos-easing="linear">
										<div class="main-banner">
											<h2 class="tit-slide">
												크로스 마케팅 플랫폼 <br />'ColLAB' 론칭
											</h2>
											<p class="description">
												1억 2천만 회원 데이터로 <br />정교한 타켓 맞춤 광고 집행이 가능합니다.
											</p>
										</div>
										<div class="btn-area">
											<a
												href="https://www.cjolivenetworks.co.kr/news/press_release/detail/560?ca=ALL"
												class="common-btn is-white2"><span>뉴스 보기</span><i
												class="icon link-arrow"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<span class="swiper-notification" aria-live="assertive"
							aria-atomic="true"></span>
					</div>
					<div class="swiper-info-area">
              <div class="inner">
                <div class="slider-timer" style="display: block">
                  <button type="button" class="btn-control">정지</button>
                  <svg
                    class="progress"
                    width="64px"
                    height="64px"
                    viewBox="0 0 64 64"
                  >
                    <circle
                      cx="32"
                      cy="32"
                      r="32"
                      class="top"
                      style="stroke-dashoffset: 55.9282px"
                    ></circle>
                    <circle cx="32" cy="32" r="32" class="bottom"></circle>
                  </svg>
                </div>
                <div class="fraction swiper-pagination-custom">
                  <span class="current-num">5</span> <span class="div">|</span>
                  <span class="total-num">5</span>
                </div>
              </div>
            </div>
            <div class="scroll-guide-area">
              <div class="scroll-guide">
                <span class="blind">Scroll Down</span>
              </div>
            </div>
          </div>
          <!-- <div class="nft-wrap section">
            <div class="inner_container">
              <a href="/business/nft">
                <h3
                  class="tit aos-init"
                  data-aos="fade-up"
                  data-aos-offset="0"
                  data-aos-duration="250"
                  data-aos-easing="linear"
                >
                  K-콘텐츠 가치 확산,<br />
                  우리의 NFT 기술과 함께합니다
                </h3>
                <p
                  class="description aos-init"
                  data-aos="fade-up"
                  data-aos-offset="0"
                  data-aos-duration="250"
                  data-aos-easing="linear"
                >
                  AI 아트워크 플랫폼 AiRT는 AI 학습을 통해<br />
                  작가의 아이덴티티는 유지하면서, AI가 표현하는 새로운 표현
                  기법을 더하여<br />
                  작가의 의도와 작품의 장점을 극대화해 창의적인 작품을
                  완성합니다.
                </p>
              </a>
              <div
                class="btn-area aos-init"
                data-aos="fade-up"
                data-aos-offset="0"
                data-aos-duration="250"
                data-aos-easing="linear"
              >
                <a href="/business/nft" class="common-btn is-white"
                  ><span>기술 알아보기</span><i class="icon link-arrow2"></i
                ></a>
              </div>
            </div>
          </div> -->
          <div class="bg-responsive-container">
            <div class="core-wrap section">
              <div class="inner_container">
                <div class="section-title-area">
                  <a href="/tech/rnd">
                    <h2
                      class="tit aos-init"
                      data-aos="fade-up"
                      data-aos-offset="0"
                      data-aos-duration="250"
                      data-aos-easing="linear"
                    >
                      CORE<br />TECHNOLOGY
                    </h2>
                    <p
                      class="description aos-init"
                      data-aos="fade-up"
                      data-aos-offset="0"
                      data-aos-duration="250"
                      data-aos-easing="linear"
                    >
                      미래를 선도할 ONLYONE 기술로 더 나은<br />
                      라이프 스타일을 그려갑니다.
                    </p>
                  </a>
                  <div
                    class="btn-area aos-init"
                    data-aos="fade-up"
                    data-aos-offset="0"
                    data-aos-duration="250"
                    data-aos-easing="linear"
                  >
                    <a href="/tech/rnd" class="common-btn is-white"
                      ><span>전체보기</span><i class="icon link-arrow2"></i
                    ></a>
                  </div>
                </div>
                <ul class="core-list">
                  <li
                    class="ai aos-init"
                    data-aos="fade-up"
                    data-aos-offset="0"
                    data-aos-duration="250"
                    data-aos-easing="linear"
                  >
                    <div
                      class="bg-text aos-init"
                      data-aos="svg-stroke"
                      data-aos-offset="0"
                    >
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        xmlns:xlink="http://www.w3.org/1999/xlink"
                        width="286px"
                        height="244px"
                        viewBox="0 0 286 244"
                        version="1.1"
                        class="img-svg replaced-svg"
                      >
                        <title>AI</title>
                        <defs>
                          <linearGradient
                            x1="0%"
                            y1="50%"
                            x2="100%"
                            y2="50%"
                            id="ailinearGradient-1"
                          >
                            <stop stop-color="#A9F5D2" offset="0%"></stop>
                            <stop stop-color="#97F3E8" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient
                            x1="0%"
                            y1="50%"
                            x2="100%"
                            y2="50%"
                            id="ailinearGradient-2"
                          >
                            <stop stop-color="#97F3E8" offset="0%"></stop>
                            <stop
                              stop-color="#97DBF3"
                              offset="99.9399038%"
                            ></stop>
                          </linearGradient>
                        </defs>
                        <g
                          id="Img-/-main-/-core-bg-text_01_PC"
                          stroke="none"
                          stroke-width="1"
                          fill="none"
                          fill-rule="evenodd"
                          opacity="0.5"
                        >
                          <g id="AI" fill-rule="nonzero">
                            <path
                              d="M121.910196,0.5 L205.217141,232.653717 C206.032097,235.793754 206.00002,238.416149 205.077218,240.514754 C204.643688,241.500674 203.932118,242.238862 202.94498,242.731649 C201.906715,243.249958 200.575544,243.5 198.956522,243.5 L198.956522,243.5 L181.345299,243.5 L156.234058,169.041113 C153.807909,170.518165 151.26256,171.202276 148.596897,171.08861 C146.02197,170.978814 143.66162,170.923957 141.515849,170.923957 L141.515849,170.923957 L72.5880975,170.923957 L77.8074662,156.156644 C78.6190302,153.872676 79.5645225,152.297092 80.6833804,151.464357 C81.8038716,150.630407 83.8013598,150.249664 86.6423562,150.249664 L86.6423562,150.249664 L148.637867,150.249664 L113.104536,48.4309296 C111.826854,44.9441369 110.550156,40.3129654 109.272486,34.5380197 C107.752487,27.6677698 107.443297,20.1015532 108.340321,11.83977 L108.340321,11.83977 L30.020006,236.262573 C28.9861446,238.585003 27.7513185,240.384861 26.3047864,241.653727 C24.8805343,242.90305 22.7355581,243.5 19.8956522,243.5 L19.8956522,243.5 L0.707110612,243.5 L81.9788125,13.63265 C83.547792,9.24386401 85.6310622,5.94459997 88.2473556,3.74909297 C90.8322222,1.57995838 93.9352249,0.5 97.5528752,0.5 L97.5528752,0.5 L121.910196,0.5 Z"
                              id="aiPath1"
                              stroke="url(#ailinearGradient-1)"
                            ></path>
                            <path
                              d="M285.5,0.5 L285.5,235.133244 C285.5,237.804021 284.611244,239.868762 282.800539,241.310007 C280.968568,242.768178 278.933666,243.5 276.693969,243.5 L276.693969,243.5 L260.186396,243.5 L260.186396,9.19515478 C260.186396,6.7093866 260.990793,4.63490536 262.61119,2.97663285 C264.231822,1.31812027 266.362262,0.5 268.992426,0.5 L268.992426,0.5 L285.5,0.5 Z"
                              id="aiPath2"
                              stroke="url(#ailinearGradient-2)"
                            ></path>
                          </g>
                        </g>
                      </svg>
                    </div>
                    <a href="/tech/ai_language">
                      <h3
                        class="tit aos-init"
                        data-aos="fade-up"
                        data-aos-offset="0"
                        data-aos-duration="250"
                        data-aos-easing="linear"
                      >
                        AI
                      </h3>
                      <p
                        class="description aos-init"
                        data-aos="fade-up"
                        data-aos-offset="0"
                        data-aos-duration="250"
                        data-aos-easing="linear"
                      >
                        제조, 물류, 유통, 미디어 콘텐츠 등 다양한 분야에서<br />
                        AI 기술을 활용하여 새로운 가치를 창조합니다.
                      </p>
                      <p
                        class="btn-arrow aos-init"
                        data-aos="fade-up"
                        data-aos-offset="0"
                        data-aos-duration="250"
                        data-aos-easing="linear"
                      >
                        <span class="blind">자세히 보기</span>
                      </p>
                    </a>
                  </li>
                  <li
                    class="big-data aos-init"
                    data-aos="fade-up"
                    data-aos-offset="0"
                    data-aos-duration="250"
                    data-aos-easing="linear"
                  >
                    <div
                      class="bg-text aos-init"
                      data-aos="svg-stroke"
                      data-aos-offset="0"
                    >
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        xmlns:xlink="http://www.w3.org/1999/xlink"
                        width="1208px"
                        height="318px"
                        viewBox="0 0 1208 318"
                        version="1.1"
                        class="img-svg replaced-svg"
                      >
                        <title>Big Data</title>
                        <defs>
                          <linearGradient
                            x1="0%"
                            y1="100%"
                            x2="100%"
                            y2="100%"
                            id="biglinearGradient-1"
                          >
                            <stop stop-color="#97DBF3" offset="0%"></stop>
                            <stop stop-color="#97D1F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient
                            x1="0%"
                            y1="100%"
                            x2="82.1663062%"
                            y2="100%"
                            id="biglinearGradient-2"
                          >
                            <stop
                              stop-color="#97D1F3"
                              offset="0.0655594406%"
                            ></stop>
                            <stop stop-color="#97CEF3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient
                            x1="0%"
                            y1="100%"
                            x2="100%"
                            y2="100%"
                            id="biglinearGradient-3"
                          >
                            <stop
                              stop-color="#97CEF3"
                              offset="0.0655594406%"
                            ></stop>
                            <stop stop-color="#97C5F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient
                            x1="0%"
                            y1="100%"
                            x2="100%"
                            y2="100%"
                            id="biglinearGradient-4"
                          >
                            <stop
                              stop-color="#97C5F3"
                              offset="0.0655594406%"
                            ></stop>
                            <stop stop-color="#97BCF3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient
                            x1="0%"
                            y1="100%"
                            x2="100%"
                            y2="100%"
                            id="biglinearGradient-5"
                          >
                            <stop
                              stop-color="#97BCF3"
                              offset="0.0655594406%"
                            ></stop>
                            <stop
                              stop-color="#97B3F3"
                              offset="99.9399038%"
                            ></stop>
                          </linearGradient>
                          <linearGradient
                            x1="0%"
                            y1="100%"
                            x2="100%"
                            y2="100%"
                            id="biglinearGradient-6"
                          >
                            <stop
                              stop-color="#97B3F3"
                              offset="0.0655594406%"
                            ></stop>
                            <stop
                              stop-color="#97A9F3"
                              offset="99.9399038%"
                            ></stop>
                          </linearGradient>
                          <linearGradient
                            x1="0%"
                            y1="100%"
                            x2="100%"
                            y2="100%"
                            id="biglinearGradient-7"
                          >
                            <stop
                              stop-color="#97A9F3"
                              offset="0.0655594406%"
                            ></stop>
                            <stop stop-color="#97A0F3" offset="100%"></stop>
                          </linearGradient>
                        </defs>
                        <g
                          id="Img-/-main-/-core-bg-text_02_PC"
                          stroke="none"
                          stroke-width="1"
                          fill="none"
                          fill-rule="evenodd"
                          opacity="0.5"
                        >
                          <g id="Big-Data" fill-rule="nonzero">
                            <path
                              d="M77.9406359,3.77094832 C87.484784,3.77094832 97.0289022,4.91134572 106.573035,7.1917552 C116.098699,9.46775178 124.725131,13.097679 132.451589,18.0832504 C140.162343,23.0586892 146.447317,29.3859936 151.306167,37.0655045 C156.157256,44.7327495 158.57556,53.9673717 158.57556,64.7647767 C158.57556,80.7587628 155.007417,93.1433251 147.828314,101.900134 C140.648228,110.658142 131.143184,116.871673 119.317962,120.547625 C118.421543,120.826283 117.52784,121.08537 116.639841,121.324633 C117.565476,121.367765 118.49173,121.43382 119.418604,121.5228 C126.173901,122.171307 132.665211,124.009057 138.892715,127.03541 C145.120704,130.061999 150.609851,134.061333 155.360022,139.033596 C160.111129,144.006839 163.911406,149.791293 166.762036,156.386167 C169.611065,162.977335 171.033285,170.271174 171.033285,178.266683 C171.033285,189.085655 168.977025,198.661756 164.856249,206.992899 C160.736701,215.321562 154.979635,222.406088 147.585616,228.246936 C140.180574,234.09649 131.452394,238.481844 121.402953,241.406546 C111.644824,244.246467 100.941239,245.709455 89.2925969,245.798118 L88.1623587,245.802408 L0.5,245.802408 L0.5,18.9715003 C0.5,14.5364681 1.88414567,10.8887874 4.6700097,8.03606521 C7.34381918,5.29808678 10.3495024,3.87119673 13.6951098,3.77604614 L14.0548688,3.77094832 L77.9406359,3.77094832 Z M92.3149336,132.627597 L25.3737357,132.627597 L25.3737357,231.949701 L25.5753574,231.690232 C27.2279459,229.635221 29.8310594,228.077498 33.3674268,226.991127 C36.5092766,226.025951 39.441478,225.541244 42.1646063,225.541244 L42.1646063,225.541244 L90.7177894,225.541244 L91.6167949,225.535968 C98.792355,225.451542 105.572308,224.354044 111.956919,222.245065 C118.616437,220.045278 124.415765,217.01912 129.356552,213.169606 C134.311224,209.309274 138.242508,204.621626 141.150674,199.106887 C144.062804,193.584631 145.520691,187.51046 145.520691,180.883442 C145.520691,174.047529 144.120023,167.652922 141.320594,161.699188 C138.523472,155.75036 134.757686,150.628121 130.024149,146.331794 C125.293542,142.038127 119.64987,138.678752 113.091314,136.256604 C106.541654,133.837741 99.6162808,132.627597 92.3149336,132.627597 L92.3149336,132.627597 Z M78.2600648,25.0133969 L25.3737357,25.0133969 L25.3737357,120.032955 L25.5592134,119.726873 C27.2039469,117.101695 29.8172359,115.191912 33.3821156,113.9751 C36.5187194,112.904474 39.445945,112.366433 42.1646063,112.366433 L42.1646063,112.366433 L76.0240629,112.366433 L76.8517577,112.36355 C93.6269785,112.246324 107.073311,108.553947 117.201675,101.315549 C127.540562,93.926698 132.743538,81.9746463 132.743538,65.4189664 C132.743538,58.1209147 131.224252,51.9315788 128.201333,46.8461704 C125.179989,41.7634113 121.187484,37.6198747 116.22385,34.4155285 C111.280777,31.2244552 105.478834,28.8564967 98.8161511,27.3159139 C92.1782482,25.7810608 85.3262378,25.0133969 78.2600648,25.0133969 L78.2600648,25.0133969 Z"
                              id="bigPath1"
                              stroke="url(#biglinearGradient-1)"
                            ></path>
                            <path
                              d="M229.888048,68.8628199 L229.888048,235.835374 C229.888048,238.970509 229.137457,241.48638 227.604522,243.370049 C226.097566,245.221795 223.931249,246.129503 221.124612,246.129503 L221.124612,246.129503 L205.333741,246.129503 L205.333741,78.8298545 C205.333741,75.9173702 206.187893,73.5197985 207.916428,71.6456612 C209.633959,69.7834556 211.910421,68.8628199 214.736035,68.8628199 L214.736035,68.8628199 L229.888048,68.8628199 Z M219.208039,0.5 C224.384709,0.5 228.732142,2.46292778 232.251919,6.38519827 C235.789056,10.3268141 237.55434,15.0682664 237.55434,20.6069744 C237.55434,26.1418498 235.791432,30.8274725 232.256508,34.6601592 C228.735492,38.4777649 224.386086,40.386854 219.208039,40.386854 C214.025989,40.386854 209.622047,38.4751789 205.994915,34.6548797 C202.357389,30.8236328 200.542308,26.1399913 200.542308,20.6069744 C200.542308,15.0701293 202.359782,10.3306704 205.999587,6.39053308 C209.625436,2.46550273 214.027398,0.5 219.208039,0.5 Z"
                              id="bigPath2"
                              stroke="url(#biglinearGradient-2)"
                            ></path>
                            <path
                              d="M342.587426,63.3022077 C350.405625,63.3022077 357.115298,64.2182667 362.715132,66.0575464 C368.301613,67.8924404 372.993625,70.2105892 376.788435,73.0170592 C380.584548,75.8244934 383.748924,78.7929981 386.27973,81.9244463 C389.248859,85.5982455 391.494877,88.90051 393.015155,91.8329876 L393.237754,92.2700861 L393.237754,78.8298545 C393.237754,75.4935609 393.924891,72.9767179 395.353881,71.3043932 C396.701485,69.7273128 398.703639,68.9306221 401.334977,68.8669692 L401.681761,68.8628199 L417.792061,68.8628199 L417.792061,241.068891 C417.792061,251.274557 416.573117,261.100287 414.134503,270.545986 C411.703604,279.961799 407.688648,288.241993 402.086887,295.385183 C396.492877,302.518489 389.102781,308.081946 379.920677,312.080696 C370.716594,316.089018 359.554388,317.869743 346.432759,317.436325 C328.639467,317.002508 314.284623,313.867056 303.374466,308.009896 C292.779232,302.321803 284.041209,293.348906 277.150855,281.101294 L276.762808,280.404536 L288.019545,268.877648 C289.007475,267.653504 290.450525,266.955006 292.330969,266.752314 C294.185297,266.552437 295.788174,267.263904 297.152237,268.852968 C302.511625,276.966362 308.995337,283.490102 316.601202,288.42641 C324.229918,293.37755 334.273057,295.866633 346.740001,295.866633 C360.520011,295.866633 371.329346,292.156338 379.185022,284.7733 C386.911704,277.511497 391.58951,265.936876 393.166122,250.018631 L393.237754,249.269281 L393.237754,211.987451 C391.823185,216.619005 389.343461,221.081379 385.803582,225.377478 C382.958164,228.830758 379.426869,231.959243 375.211554,234.764954 C370.994401,237.571889 366.144118,239.729682 360.661982,241.241063 C355.164929,242.756557 349.033448,243.512745 342.267998,243.512745 C330.641196,243.512745 320.334308,241.243747 311.349423,236.697611 C302.364558,232.151485 294.753843,225.927627 288.517289,218.026026 C282.272967,210.114583 277.565421,200.684915 274.390433,189.739257 C271.208567,178.769891 269.618794,166.877244 269.618794,154.061666 C269.618794,141.239198 270.997472,129.285905 273.756562,118.202013 C276.507864,107.14941 280.897291,97.5584814 286.929166,89.4313306 C292.952141,81.3161723 300.50744,74.9324746 309.594697,70.2798036 C318.688846,65.6236031 329.687634,63.3022077 342.587426,63.3022077 Z M345.462286,85.5259408 C336.854203,85.5259408 329.323827,87.2386283 322.868443,90.6539536 C316.406139,94.07294 311.128571,98.8153853 307.035776,104.881333 C302.959141,110.923328 299.899197,118.117843 297.860799,126.467113 C295.829018,134.789279 294.811959,143.987362 294.811959,154.061666 C294.811959,163.923796 295.990318,173.018634 298.344531,181.346551 C300.704466,189.694706 304.085547,196.888306 308.483453,202.929522 C312.893657,208.987632 318.16536,213.722692 324.296423,217.137153 C330.436139,220.556433 337.490646,222.270296 345.462286,222.270296 C353.013879,222.270296 359.809405,220.390015 365.850298,216.634309 C371.87482,212.888781 376.932415,207.82245 381.020629,201.432794 C385.092611,195.068505 388.255409,187.662434 390.505766,179.213102 C392.752695,170.776639 393.876611,161.956741 393.876611,152.753287 C393.876611,143.767929 392.805943,135.220982 390.665768,127.112291 C388.521776,118.989142 385.465028,111.854746 381.498736,105.707642 C377.515885,99.5348737 372.456062,94.6303664 366.320426,90.9929067 C360.176168,87.3503349 353.224048,85.5259408 345.462286,85.5259408 Z"
                              id="bigPath3"
                              stroke="url(#biglinearGradient-3)"
                            ></path>
                            <path
                              d="M621.289086,3.77094832 C639.973364,3.77094832 657.012523,6.21516829 672.40598,11.1070985 C687.773538,15.990798 700.916699,23.3145013 711.833188,33.0821002 C722.745499,42.8459609 731.218969,55.1605576 737.257672,70.022958 C743.305197,84.9070689 746.324618,102.45357 746.324618,122.660562 C746.324618,141.345775 743.30345,158.293459 737.256275,173.502622 C731.214082,188.699252 722.788147,201.61742 711.975642,212.25522 C701.162358,222.893785 688.228164,231.142929 673.174553,237.004927 C658.424165,242.748848 642.351305,245.678995 624.956611,245.798592 L623.844516,245.802408 L548.639882,245.802408 L548.639882,25.8404917 C548.639882,18.4753711 550.281646,12.9359996 553.621321,9.24900189 C556.863089,5.67009298 561.694493,3.86248177 568.088407,3.77433803 L568.583328,3.77094832 L621.289086,3.77094832 Z M626.399947,25.0133969 L572.555332,25.0133969 L572.555332,236.335019 L572.716067,235.959146 C574.475858,231.987558 577.68452,229.222991 582.32057,227.640555 C586.426997,226.238895 591.218223,225.541244 596.693065,225.541244 L596.693065,225.541244 L632.469095,225.541244 L633.342655,225.537367 C646.709327,225.418449 658.792224,222.564485 669.592742,216.980937 C680.623616,211.278301 689.940676,203.656214 697.544447,194.115311 C705.140307,184.584334 710.971914,173.629651 715.037346,161.250209 C719.099729,148.880049 721.131454,135.90786 721.131454,122.333467 C721.131454,106.998022 718.668033,93.3065056 713.747479,81.2575782 C708.822621,69.1981113 702.076366,58.9486098 693.511554,50.5071381 C684.943176,42.0621531 674.929069,35.7006591 663.468814,31.42331 C652.021862,27.1509264 639.665741,25.0133969 626.399947,25.0133969 L626.399947,25.0133969 Z"
                              id="bigPath4"
                              stroke="url(#biglinearGradient-4)"
                            ></path>
                            <path
                              d="M838.89998,63.6293026 C861.544783,63.6293026 878.540816,67.8855535 889.86677,76.4483898 C901.027389,84.8862275 906.629697,99.0959003 906.755581,119.027156 L906.757751,119.716708 L906.757751,235.181184 C906.757751,238.300399 905.697599,240.851441 903.563936,242.828228 C901.518019,244.723719 899.146345,245.714232 896.447757,245.79678 L896.077742,245.802408 L881.884015,245.802408 L881.884015,222.14691 C878.828661,231.89304 872.302659,239.13519 862.322715,243.888425 C853.220442,248.223643 842.212028,250.602714 829.307078,251.036026 C818.519107,251.252632 809.42202,250.012518 802.017968,247.304753 C794.647638,244.60932 788.695742,240.785483 784.16778,235.825368 C779.637819,230.863064 776.320305,225.037289 774.213394,218.349116 C772.097352,211.631958 770.934835,204.1564 770.722781,195.922257 C770.723297,187.681774 771.569665,180.091517 773.263945,173.151753 C774.948312,166.252592 778.000188,160.215184 782.421773,155.04067 C786.848105,149.860602 792.858138,145.656237 800.44531,142.419046 C808.06642,139.167376 817.487838,137.220911 828.702609,136.570857 C837.628271,136.135625 846.97896,136.244586 856.754678,136.897434 C866.485368,137.547274 874.843801,139.059888 881.828937,141.44001 L882.522873,141.680914 L882.522873,121.025088 C882.522873,107.96755 878.92377,98.5307566 871.799293,92.6722821 C864.703362,86.8372825 853.745845,83.8904666 838.89998,83.8904666 C829.448374,83.8904666 820.910598,85.762938 813.285248,89.5021485 C805.683437,93.229816 799.313964,97.2878391 794.174813,101.673244 C793.066753,103.09932 792.069998,103.843251 791.065512,103.843251 C790.126642,103.843251 789.240127,103.184999 788.361198,101.990594 L788.196477,101.76039 L778.837718,89.3020217 C781.958406,85.3173529 785.732284,81.7445379 790.158309,78.5825061 C794.704324,75.334751 799.726274,72.62867 805.223748,70.4635131 C810.733653,68.2934603 816.402501,66.6116859 822.230284,65.4181571 C828.051448,64.2259839 833.607975,63.6293026 838.89998,63.6293026 Z M858.904052,157.161293 C850.689659,156.505849 841.781846,156.287167 832.16837,156.506077 C818.126825,157.169701 808.439325,161.081243 803.045862,168.150556 C797.658084,175.212419 795.165729,184.257241 795.596897,195.295131 C796.028231,206.778968 798.853897,215.434607 804.027134,221.283808 C809.211075,227.145112 818.049588,230.120572 830.59483,230.120572 C837.90643,230.120572 844.733844,228.743105 851.077583,225.99057 C857.420235,223.238506 862.848219,219.604638 867.363204,215.091378 C871.878189,210.578117 875.425225,205.514183 878.005191,199.900182 C880.591691,194.271963 881.884015,188.478075 881.884015,182.518916 L881.884015,182.518916 L881.884015,161.547817 L881.012684,161.270057 C874.303763,159.1722 866.934335,157.802047 858.904052,157.161293 Z"
                              id="bigPath5"
                              stroke="url(#biglinearGradient-5)"
                            ></path>
                            <path
                              d="M993.402823,15.8734571 L993.402823,68.8628199 L1047.06687,68.8628199 L1047.06687,83.736277 C1047.06687,85.540211 1046.43707,86.9974779 1045.16316,88.101269 C1043.87682,89.2158336 1042.44326,89.7781736 1040.85886,89.7781736 L1040.85886,89.7781736 L993.402823,89.7781736 L993.402823,212.284546 C993.402823,216.689155 994.365836,219.978051 996.237254,222.176195 C998.131954,224.401685 1000.96442,225.541244 1004.7634,225.541244 L1004.7634,225.541244 L1047.06687,225.541244 L1047.06687,243.358555 C1047.06687,243.897594 1046.72166,244.416413 1046.11904,244.945341 C1045.4921,245.495609 1044.91599,245.802408 1044.37258,245.802408 L1044.37258,245.802408 L995.499967,245.802408 C986.939949,245.802408 980.401494,243.311328 975.908523,238.282549 C971.399125,233.235382 969.167945,225.979646 969.167945,216.536779 L969.167945,216.536779 L969.167945,89.7781736 L940.099921,89.7781736 L940.099921,74.2505268 C940.099921,72.4677964 940.608302,71.1141254 941.677885,70.2180107 C942.777767,69.2965101 944.435756,68.8628199 946.627355,68.8628199 L946.627355,68.8628199 L969.167945,68.8628199 L969.167945,25.8404917 C969.167945,22.9353339 970.124123,20.5451366 972.050667,18.6761877 C973.971161,16.8131081 976.142284,15.8734571 978.570239,15.8734571 L978.570239,15.8734571 L993.402823,15.8734571 Z"
                              id="bigPath6"
                              stroke="url(#biglinearGradient-6)"
                            ></path>
                            <path
                              d="M1139.64223,63.6293026 C1162.28703,63.6293026 1179.28307,67.8855535 1190.60902,76.4483898 C1201.76964,84.8862275 1207.37195,99.0959003 1207.49783,119.027156 L1207.5,119.716708 L1207.5,235.181184 C1207.5,238.300399 1206.43985,240.851441 1204.30618,242.828228 C1202.26027,244.723719 1199.88859,245.714232 1197.19001,245.79678 L1196.81999,245.802408 L1182.62626,245.802408 L1182.62626,222.14691 C1179.57091,231.89304 1173.04491,239.13519 1163.06496,243.888425 C1153.96269,248.223643 1142.95428,250.602714 1130.04933,251.036026 C1119.26136,251.252632 1110.16427,250.012518 1102.76022,247.304753 C1095.38989,244.60932 1089.43799,240.785483 1084.91003,235.825368 C1080.38007,230.863064 1077.06255,225.037289 1074.95564,218.349116 C1072.8396,211.631958 1071.67708,204.1564 1071.46503,195.922257 C1071.46555,187.681774 1072.31191,180.091517 1074.00619,173.151753 C1075.69056,166.252592 1078.74244,160.215184 1083.16402,155.04067 C1087.59035,149.860602 1093.60039,145.656237 1101.18756,142.419046 C1108.80867,139.167376 1118.23009,137.220911 1129.44486,136.570857 C1138.37052,136.135625 1147.72121,136.244586 1157.49693,136.897434 C1167.22762,137.547274 1175.58605,139.059888 1182.57119,141.44001 L1183.26512,141.680914 L1183.26512,121.025088 C1183.26512,107.96755 1179.66602,98.5307566 1172.54154,92.6722821 C1165.44561,86.8372825 1154.48809,83.8904666 1139.64223,83.8904666 C1130.19062,83.8904666 1121.65285,85.762938 1114.0275,89.5021485 C1106.42569,93.229816 1100.05621,97.2878391 1094.91706,101.673244 C1093.809,103.09932 1092.81225,103.843251 1091.80776,103.843251 C1090.86889,103.843251 1089.98238,103.184999 1089.10345,101.990594 L1088.93873,101.76039 L1079.57997,89.3020217 C1082.70065,85.3173529 1086.47453,81.7445379 1090.90056,78.5825061 C1095.44657,75.334751 1100.46852,72.62867 1105.966,70.4635131 C1111.4759,68.2934603 1117.14475,66.6116859 1122.97253,65.4181571 C1128.7937,64.2259839 1134.35022,63.6293026 1139.64223,63.6293026 Z M1159.6463,157.161293 C1151.43191,156.505849 1142.52409,156.287167 1132.91062,156.506077 C1118.86907,157.169701 1109.18157,161.081243 1103.78811,168.150556 C1098.40033,175.212419 1095.90798,184.257241 1096.33915,195.295131 C1096.77048,206.778968 1099.59615,215.434607 1104.76938,221.283808 C1109.95332,227.145112 1118.79184,230.120572 1131.33708,230.120572 C1138.64868,230.120572 1145.47609,228.743105 1151.81983,225.99057 C1158.16248,223.238506 1163.59047,219.604638 1168.10545,215.091378 C1172.62044,210.578117 1176.16747,205.514183 1178.74744,199.900182 C1181.33394,194.271963 1182.62626,188.478075 1182.62626,182.518916 L1182.62626,182.518916 L1182.62626,161.547817 L1181.75493,161.270057 C1175.04601,159.1722 1167.67658,157.802047 1159.6463,157.161293 Z"
                              id="bigPath7"
                              stroke="url(#biglinearGradient-7)"
                            ></path>
                          </g>
                        </g>
                      </svg>
                    </div>
                    <a href="/business/big_data">
                      <h3
                        class="tit aos-init"
                        data-aos="fade-up"
                        data-aos-offset="0"
                        data-aos-duration="250"
                        data-aos-easing="linear"
                      >
                        Big Data
                      </h3>
                      <p
                        class="description aos-init"
                        data-aos="fade-up"
                        data-aos-offset="0"
                        data-aos-duration="250"
                        data-aos-easing="linear"
                      >
                        빅데이터 분석 역량과 솔루션 경쟁력을 더해<br />
                        데이터 생태계를 강화하는데 앞장섭니다.
                      </p>
                      <p
                        class="btn-arrow aos-init"
                        data-aos="fade-up"
                        data-aos-offset="0"
                        data-aos-duration="250"
                        data-aos-easing="linear"
                      >
                        <span class="blind">자세히 보기</span>
                      </p>
                    </a>
                  </li>
                  <li
                    class="blockchain aos-init"
                    data-aos="fade-up"
                    data-aos-offset="0"
                    data-aos-duration="250"
                    data-aos-easing="linear"
                  >
                    <div
                      class="bg-text aos-init"
                      data-aos="svg-stroke"
                      data-aos-offset="0"
                    >
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        xmlns:xlink="http://www.w3.org/1999/xlink"
                        width="1506px"
                        height="244px"
                        viewBox="0 0 1506 244"
                        version="1.1"
                        class="img-svg replaced-svg"
                      >
                        <title>Blockchain</title>
                        <defs>
                          <linearGradient
                            x1="0%"
                            y1="50%"
                            x2="100%"
                            y2="50%"
                            id="blocklinearGradient-1"
                          >
                            <stop stop-color="#97A0F3" offset="0%"></stop>
                            <stop stop-color="#979AF3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient
                            x1="0%"
                            y1="50%"
                            x2="100%"
                            y2="50%"
                            id="blocklinearGradient-2"
                          >
                            <stop stop-color="#979AF3" offset="0%"></stop>
                            <stop stop-color="#9797F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient
                            x1="0%"
                            y1="50%"
                            x2="100%"
                            y2="50%"
                            id="blocklinearGradient-3"
                          >
                            <stop stop-color="#9797F3" offset="0%"></stop>
                            <stop stop-color="#9D97F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient
                            x1="0%"
                            y1="50%"
                            x2="100%"
                            y2="50%"
                            id="blocklinearGradient-4"
                          >
                            <stop stop-color="#9D97F3" offset="0%"></stop>
                            <stop stop-color="#A397F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient
                            x1="0%"
                            y1="50%"
                            x2="100%"
                            y2="50%"
                            id="blocklinearGradient-5"
                          >
                            <stop stop-color="#A397F3" offset="0%"></stop>
                            <stop stop-color="#A997F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient
                            x1="0%"
                            y1="50%"
                            x2="100%"
                            y2="50%"
                            id="blocklinearGradient-6"
                          >
                            <stop stop-color="#A997F3" offset="0%"></stop>
                            <stop stop-color="#B097F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient
                            x1="0%"
                            y1="50%"
                            x2="100%"
                            y2="50%"
                            id="blocklinearGradient-7"
                          >
                            <stop stop-color="#B097F3" offset="0%"></stop>
                            <stop stop-color="#B697F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient
                            x1="0%"
                            y1="50%"
                            x2="100%"
                            y2="50%"
                            id="blocklinearGradient-8"
                          >
                            <stop stop-color="#B697F3" offset="0%"></stop>
                            <stop stop-color="#BC97F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient
                            x1="0%"
                            y1="50%"
                            x2="100%"
                            y2="50%"
                            id="blocklinearGradient-9"
                          >
                            <stop stop-color="#BC97F3" offset="0%"></stop>
                            <stop stop-color="#BF97F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient
                            x1="0%"
                            y1="50%"
                            x2="100%"
                            y2="50%"
                            id="blocklinearGradient-10"
                          >
                            <stop stop-color="#BF97F3" offset="0%"></stop>
                            <stop stop-color="#C597F3" offset="100%"></stop>
                          </linearGradient>
                        </defs>
                        <g
                          id="Img-/-main-/-core-bg-text_03_PC"
                          stroke="none"
                          stroke-width="1"
                          fill="none"
                          fill-rule="evenodd"
                          opacity="0.5"
                        >
                          <g id="Blockchain" fill-rule="nonzero">
                            <path
                              d="M75.5438146,2.67264628 C84.8707319,2.67264628 94.1976791,3.78751294 103.524611,6.01763267 C112.870008,8.25216727 121.33237,11.8176097 128.912439,16.7122495 C136.508171,21.6170028 142.699037,27.8547205 147.485371,35.4250723 C152.279421,43.0076298 154.683687,52.1372072 154.683687,62.8183963 C154.683687,78.612747 151.122812,90.8211963 144.043868,99.4620603 C137.409074,107.560776 128.763892,113.460129 118.107226,117.154614 C123.959854,117.958768 129.608152,119.684335 135.051996,122.331763 C141.195018,125.319214 146.609139,129.267 151.294486,134.174945 C155.978867,139.081878 159.726983,144.788497 162.537646,151.295596 C165.349895,157.806367 166.758313,165.010575 166.758313,172.909222 C166.758313,183.56885 164.725871,193.001312 160.669237,201.20869 C156.611354,209.418597 150.940978,216.402589 143.657557,222.160218 C136.385112,227.909171 127.814823,232.222696 117.944818,235.097247 C108.415898,237.872461 97.9649611,239.306175 86.5916099,239.395784 L85.4512001,239.400265 L-0.5,239.400265 L-0.5,18.4013484 C-0.5,13.8153957 0.94648128,10.0529903 3.82183202,7.10651099 C6.61415244,4.24511593 9.75874962,2.77582033 13.2475395,2.67789197 L13.6226551,2.67264628 L75.5438146,2.67264628 Z M89.4760754,129.626704 L25.5780696,129.626704 L25.5780696,222.527322 L25.8897647,222.27365 C27.4790894,221.020917 29.531283,220.002775 32.0520784,219.227829 C35.2006094,218.259904 38.1394306,217.778064 40.8679653,217.778064 L40.8679653,217.778064 L87.9280465,217.778064 L88.8219834,217.772603 C95.6591504,217.688863 102.120277,216.642084 108.2051,214.630683 C114.545618,212.534758 120.068901,209.654311 124.773302,205.98633 C129.463859,202.329143 133.185849,197.88837 135.939013,192.663796 C138.688243,187.446688 140.061032,181.707558 140.061032,175.447339 C140.061032,168.966446 138.735865,162.903394 136.08362,157.258619 C133.42909,151.60898 129.856116,146.743647 125.36378,142.663303 C120.868551,138.580332 115.504126,135.388745 109.272319,133.08561 C103.031643,130.779197 96.432808,129.626704 89.4760754,129.626704 L89.4760754,129.626704 Z M75.8534204,25.246641 L25.5780696,25.246641 L25.5780696,113.515801 L25.8711706,113.223066 C27.4632164,111.682813 29.5168224,110.478638 32.037382,109.617668 C35.1911617,108.540402 38.1349614,108.004503 40.8679653,108.004503 L40.8679653,108.004503 L73.6861798,108.004503 L74.5028189,108.001585 C90.5097843,107.886805 103.354102,104.385789 113.024862,97.4694433 C122.815196,90.4675795 127.6768,79.1152544 127.6768,63.4529256 C127.6768,56.5750143 126.260562,50.736263 123.412439,45.9414558 C120.562777,41.1440588 116.797174,37.2331135 112.115583,34.2086649 C107.413476,31.1709623 101.892816,28.9210348 95.5554735,27.4546224 C89.1933522,25.9824765 82.6259827,25.246641 75.8534204,25.246641 L75.8534204,25.246641 Z"
                              id="blockPath1"
                              stroke="url(#blocklinearGradient-1)"
                            ></path>
                            <path
                              d="M225.041605,2.67264628 L225.041605,229.699591 C225.041605,232.835743 223.987406,235.232778 221.914826,236.909502 C219.869237,238.56439 217.341308,239.400265 214.324613,239.400265 L214.324613,239.400265 L199.892352,239.400265 L199.892352,12.3733205 C199.892352,9.24025261 200.892926,6.8466513 202.85411,5.17190306 C204.796448,3.51324798 207.275284,2.67264628 210.299738,2.67264628 L210.299738,2.67264628 L225.041605,2.67264628 Z"
                              id="blockPath2"
                              stroke="url(#blocklinearGradient-2)"
                            ></path>
                            <path
                              d="M340.101968,60.7320732 C354.219306,60.7320732 366.362693,63.0776045 376.534832,67.7576646 C386.724499,72.4457897 395.041139,78.8935215 401.487461,87.0974838 C407.925734,95.2912006 412.652615,104.973816 415.664147,116.147368 C418.667817,127.291754 420.170658,139.338212 420.170658,152.287021 C420.170658,165.447706 418.667723,177.599904 415.664147,188.74394 C412.652988,199.916111 407.926886,209.650859 401.489387,217.949989 C395.042587,226.261113 386.72523,232.762446 376.534832,237.450907 C366.362693,242.130968 354.219306,244.476499 340.101968,244.476499 C326.396378,244.476499 314.5614,242.130484 304.594349,237.449246 C294.614095,232.761807 286.349993,226.262458 279.800561,217.953047 C273.260408,209.655408 268.379558,199.922386 265.161318,188.752246 C261.949867,177.605671 260.342884,165.450722 260.342884,152.287021 C260.342884,139.33522 261.949759,127.286009 265.161318,116.139061 C268.379951,104.967557 273.261581,95.2866664 279.802513,87.0944315 C286.35145,78.8921716 294.614825,72.446422 304.594349,67.7593259 C314.5614,63.0780881 326.396378,60.7320732 340.101968,60.7320732 Z M340.72118,82.9888033 C331.318379,82.9888033 323.242066,84.7631219 316.495742,88.3244729 C309.756751,91.8819525 304.242735,96.747043 299.954249,102.92037 C295.652657,109.112563 292.479885,116.407616 290.431582,124.803506 C288.376406,133.227572 287.349771,142.388825 287.349771,152.287021 C287.349771,162.397055 288.376489,171.717404 290.431918,180.247817 C292.480191,188.748534 295.652702,196.096074 299.954249,202.288202 C304.241351,208.459538 309.75348,213.270901 316.490321,216.722648 C323.238155,220.180026 331.316222,221.902504 340.72118,221.902504 C349.711708,221.902504 357.478278,220.180821 364.017633,216.725555 C370.551456,213.273213 375.961914,208.460505 380.249688,202.288202 C384.55231,196.094525 387.776952,188.745174 389.928183,180.242305 C392.085958,171.713574 393.163771,162.395051 393.163771,152.287021 C393.163771,142.390841 392.086048,133.231433 389.92855,124.809074 C387.777279,116.411026 384.552374,109.114138 380.249688,102.92037 C375.960492,96.7460211 370.548112,91.8795668 364.012154,88.3214458 C357.474337,84.7623121 349.709547,82.9888033 340.72118,82.9888033 Z"
                              id="blockPath3"
                              stroke="url(#blocklinearGradient-3)"
                            ></path>
                            <path
                              d="M526.244692,60.7321335 C539.970563,60.5190211 552.083003,63.6667341 562.584662,70.1662192 C573.212381,76.7437233 581.443597,85.5587151 587.278404,96.6111058 L587.278404,96.6111058 L574.206807,105.432134 C572.584004,106.501172 571.227785,106.794127 570.139938,106.442098 C569.057059,106.091677 568.181531,105.090822 567.595355,103.332812 C562.906084,96.4567263 557.203491,91.294604 550.483313,87.8513953 C543.737736,84.395173 535.253007,82.8867973 525.026836,83.3059039 C516.854663,83.5152622 509.549693,85.3441089 503.113687,88.7987456 C496.678563,92.2529095 491.265373,97.0159506 486.873206,103.08682 C482.467684,109.17615 479.08889,116.421279 476.73253,124.820064 C474.370368,133.239525 473.190651,142.501067 473.190651,152.604286 C473.190651,174.463035 477.991871,191.497477 487.634315,203.691017 C497.240769,215.839046 510.529889,221.902504 527.490877,221.902504 C538.325131,221.902504 547.221512,219.870427 554.173238,215.784779 C561.087657,211.721057 565.875419,206.673432 568.519968,200.628118 C569.589384,199.146655 570.698694,198.330371 571.878195,198.04259 C573.08073,197.749189 574.37472,197.994178 575.755574,198.824563 L575.755574,198.824563 L588.788196,208.270792 C586.69169,213.313326 583.830267,218.076062 580.202932,222.558407 C576.661065,226.935136 572.390431,230.725287 567.390084,233.927814 C562.399035,237.124385 556.628684,239.682989 550.077791,241.600973 C543.53422,243.516814 536.211836,244.476499 528.117971,244.476437 C514.624738,244.68916 502.793407,242.664003 492.622094,238.409748 C482.432856,234.147996 473.907928,227.967575 467.045905,219.870383 C460.193307,211.784314 454.999726,202.050166 451.469496,190.665496 C447.946925,179.305525 446.183764,166.618661 446.183764,152.604286 C446.183764,139.439094 447.842783,127.282785 451.158203,116.134954 C454.480944,104.962504 459.466933,95.3340967 466.112238,87.2475873 C472.763853,79.1533994 481.129472,72.7619595 491.211044,68.0757493 C501.279922,63.3954392 512.957055,60.9448887 526.244692,60.7321335 Z"
                              id="blockPath4"
                              stroke="url(#blocklinearGradient-4)"
                            ></path>
                            <path
                              d="M647.266511,2.67264628 L647.266511,230.016855 C647.266511,233.15555 646.159138,235.555968 643.975139,237.234487 C641.822786,238.888684 639.347981,239.717529 636.549519,239.717529 L636.549519,239.717529 L620.56923,239.717529 L620.56923,12.3733205 C620.56923,9.24025261 621.569804,6.8466513 623.530987,5.17190306 C625.473325,3.51324798 627.952161,2.67264628 630.976615,2.67264628 L630.976615,2.67264628 L647.266511,2.67264628 Z M757.487109,65.8083072 L689.873335,141.189301 C687.063289,144.683374 683.482719,147.882348 679.129117,150.783523 L679.129117,150.783523 L757.009266,229.959339 C757.924401,230.671415 758.474701,231.53337 758.676101,232.5358 C758.872986,233.515754 758.73199,234.641914 758.224553,235.913 C757.718452,237.180739 756.994985,238.124971 756.068498,238.757908 C755.140477,239.391893 754.003502,239.717529 752.651693,239.717529 L752.651693,239.717529 L733.864075,239.717529 L654.625867,158.200752 L654.625867,149.748904 C654.625867,147.063393 655.404014,144.945405 656.927272,143.379868 L656.927272,143.379868 L719.151216,73.589302 C723.793316,68.3999195 729.491341,65.8083072 736.242586,65.8083072 L736.242586,65.8083072 L757.487109,65.8083072 Z"
                              id="blockPath5"
                              stroke="url(#blocklinearGradient-5)"
                            ></path>
                            <path
                              d="M867.585084,60.7321335 C881.310954,60.5190211 893.423394,63.6667341 903.925053,70.1662192 C914.552773,76.7437233 922.783989,85.5587151 928.618796,96.6111058 L928.618796,96.6111058 L915.547199,105.432134 C913.924396,106.501172 912.568177,106.794127 911.480329,106.442098 C910.39745,106.091677 909.521923,105.090822 908.935746,103.332812 C904.246475,96.4567263 898.543883,91.294604 891.823705,87.8513953 C885.078128,84.395173 876.593398,82.8867973 866.367228,83.3059039 C858.195055,83.5152622 850.890085,85.3441089 844.454079,88.7987456 C838.018954,92.2529095 832.605764,97.0159506 828.213598,103.08682 C823.808076,109.17615 820.429282,116.421279 818.072921,124.820064 C815.71076,133.239525 814.531043,142.501067 814.531043,152.604286 C814.531043,174.463035 819.332263,191.497477 828.974707,203.691017 C838.58116,215.839046 851.870281,221.902504 868.831269,221.902504 C879.665523,221.902504 888.561903,219.870427 895.513629,215.784779 C902.428048,211.721057 907.21581,206.673432 909.860359,200.628118 C910.929775,199.146655 912.039085,198.330371 913.218586,198.04259 C914.421122,197.749189 915.715112,197.994178 917.095966,198.824563 L917.095966,198.824563 L930.128588,208.270792 C928.032082,213.313326 925.170659,218.076062 921.543323,222.558407 C918.001457,226.935136 913.730822,230.725287 908.730476,233.927814 C903.739427,237.124385 897.969076,239.682989 891.418182,241.600973 C884.874612,243.516814 877.552228,244.476499 869.458362,244.476437 C855.96513,244.68916 844.133799,242.664003 833.962486,238.409748 C823.773248,234.147996 815.24832,227.967575 808.386296,219.870383 C801.533698,211.784314 796.340118,202.050166 792.809887,190.665496 C789.287316,179.305525 787.524156,166.618661 787.524156,152.604286 C787.524156,139.439094 789.183175,127.282785 792.498594,116.134954 C795.821336,104.962504 800.807325,95.3340967 807.45263,87.2475873 C814.104245,79.1533994 822.469863,72.7619595 832.551435,68.0757493 C842.620314,63.3954392 854.297447,60.9448887 867.585084,60.7321335 Z"
                              id="blockPath6"
                              stroke="url(#blocklinearGradient-6)"
                            ></path>
                            <path
                              d="M987.678085,2.67264628 L987.678085,77.7673055 C991.591753,72.5883736 996.981263,68.5075542 1003.85293,65.532207 C1011.22752,62.3390999 1021.56052,60.7320732 1034.85738,60.7320732 C1054.52856,60.7320732 1069.26533,65.6377754 1079.09617,75.3919961 C1088.92824,85.1474414 1093.87287,99.7710417 1093.87287,119.2915 L1093.87287,119.2915 L1093.87287,228.430532 C1093.87287,231.751947 1092.78476,234.459828 1090.62559,236.561784 C1088.46467,238.665441 1085.87164,239.717529 1082.84628,239.717529 L1082.84628,239.717529 L1067.4852,239.717529 L1067.4852,119.2915 C1067.4852,106.998739 1064.52183,98.1186562 1058.5167,92.6950705 C1052.50226,87.263078 1043.47174,84.5751264 1031.45171,84.5751264 C1018.17346,84.5751264 1008.05047,87.1702375 1001.10163,92.4060734 C994.173004,97.6266772 989.718822,106.827509 987.678085,119.964579 L987.678085,119.964579 L987.678085,228.430532 C987.678085,231.757419 986.483599,234.471809 984.103789,236.577942 C981.739884,238.669999 978.946562,239.717529 975.722671,239.717529 L975.722671,239.717529 L960.671198,239.717529 L960.671198,13.3251144 C960.671198,10.2280105 961.544974,7.68945433 963.270343,5.70039785 C965.009157,3.69584182 967.501532,2.67264628 970.768978,2.67264628 L970.768978,2.67264628 L987.678085,2.67264628 Z"
                              id="blockPath7"
                              stroke="url(#blocklinearGradient-7)"
                            ></path>
                            <path
                              d="M1193.45295,60.7320732 C1215.67935,60.7320732 1232.33671,64.9599333 1243.44635,73.3652892 C1254.4648,81.7016423 1260.07876,95.7059791 1260.20636,115.428538 L1260.20859,116.118854 L1260.20859,228.113268 C1260.20859,231.437606 1259.06714,234.148784 1256.79767,236.252909 C1254.62765,238.264827 1252.11062,239.311109 1249.24776,239.394806 L1248.87239,239.400265 L1234.13052,239.400265 L1234.13052,220.655214 C1230.62272,227.941051 1224.77529,233.541455 1216.5789,237.448032 C1207.64882,241.704307 1196.85066,244.050561 1184.17482,244.476398 C1173.57556,244.689368 1164.64029,243.45942 1157.36683,240.797498 C1150.05969,238.123246 1144.16476,234.322136 1139.67655,229.40203 C1135.19039,224.484164 1131.90307,218.711482 1129.81644,212.082905 C1127.73945,205.484968 1126.59557,198.142298 1126.38787,190.054348 C1126.3877,181.961165 1127.21875,174.51891 1128.87879,167.714481 C1130.54926,160.867327 1133.57802,154.876712 1137.96287,149.74149 C1142.34303,144.611769 1148.28465,140.439437 1155.79431,137.23301 C1163.27006,134.041061 1172.51003,132.12135 1183.52119,131.482679 C1192.20851,131.058764 1201.30952,131.164589 1210.82421,131.800463 C1219.7448,132.396632 1227.48675,133.73777 1234.05093,135.819992 L1234.74973,136.045923 L1234.74973,117.387912 C1234.74973,105.100593 1231.42941,96.1731044 1224.71503,90.6478719 C1217.97223,85.0992525 1207.54261,82.354274 1193.45295,82.354274 C1184.45292,82.354274 1176.32132,84.1331521 1169.05955,87.6966402 C1161.79245,91.2627505 1155.69841,95.1412942 1150.7801,99.3354863 C1149.52126,100.961538 1148.27581,101.707416 1147.08948,101.707416 C1145.94559,101.707416 1144.79582,101.020815 1143.68585,99.52303 L1143.51093,99.2797782 L1134.00061,86.6105307 C1137.16874,82.4320252 1141.04735,78.7012707 1145.63766,75.4195039 C1150.10782,72.2236425 1155.04559,69.5600438 1160.45139,67.4294564 C1165.84477,65.3037661 1171.39372,63.6563398 1177.09826,62.4872099 C1182.80942,61.3167216 1188.26102,60.7320732 1193.45295,60.7320732 Z M1212.76351,153.419964 C1204.8356,152.786923 1196.23869,152.575955 1186.97279,152.78666 C1173.75715,153.411989 1164.57445,157.017901 1159.48433,163.694427 C1154.38812,170.378939 1152.05784,178.946658 1152.46539,189.387481 C1152.87278,200.241496 1155.49879,208.446631 1160.39017,213.981141 C1165.27076,219.503436 1173.62583,222.219769 1185.4032,222.219769 C1192.34967,222.219769 1198.83679,220.912421 1204.86402,218.29533 C1210.89238,215.677751 1216.05315,212.223688 1220.34464,207.930735 C1224.63618,203.637749 1228.00854,198.821503 1230.46087,193.481392 C1232.90669,188.155461 1234.13052,182.673016 1234.13052,177.033662 L1234.13052,177.033662 L1234.13052,157.411771 L1233.24313,157.137775 C1227.00344,155.250679 1220.1768,154.011913 1212.76351,153.419964 Z"
                              id="blockPath8"
                              stroke="url(#blocklinearGradient-8)"
                            ></path>
                            <path
                              d="M1324.37439,65.8083072 L1324.37439,228.747797 C1324.37439,232.056197 1323.55243,234.695158 1321.94027,236.677612 C1320.30202,238.692134 1317.96021,239.717529 1314.89582,239.717529 L1314.89582,239.717529 L1298.60593,239.717529 L1298.60593,76.4607753 C1298.60593,73.3592887 1299.53401,70.8168181 1301.36991,68.8248331 C1303.21694,66.8207763 1305.65829,65.8083072 1308.70371,65.8083072 L1308.70371,65.8083072 L1324.37439,65.8083072 Z M1313.03819,-0.5 C1318.34546,-0.5 1322.80457,1.51063889 1326.41388,5.53558508 C1330.00571,9.54103227 1331.80493,14.3575293 1331.80493,19.9876716 C1331.80493,25.6216464 1330.00333,30.3865802 1326.40929,34.286171 C1322.80122,38.2009919 1318.34409,40.1580785 1313.03819,40.1580785 C1307.73629,40.1580785 1303.22885,38.2035777 1299.51721,34.291452 C1295.8161,30.390421 1293.96184,25.6235065 1293.96184,19.9876716 C1293.96184,14.355665 1295.81371,9.53717502 1299.51254,5.53024888 C1303.22547,1.5080643 1307.73488,-0.5 1313.03819,-0.5 Z"
                              id="blockPath9"
                              stroke="url(#blocklinearGradient-9)"
                            ></path>
                            <path
                              d="M1448.10372,60.7320732 C1457.87318,60.7320732 1466.39451,62.1203273 1473.66925,64.8892173 C1480.96871,67.6675132 1487.06753,71.6764791 1491.96837,76.9122523 C1496.86716,82.1458457 1500.5163,88.3401514 1502.91364,95.4964619 C1505.30367,102.630964 1506.5,110.350983 1506.5,118.656971 L1506.5,118.656971 L1506.5,228.113268 C1506.5,231.651643 1505.40816,234.46346 1503.25272,236.561784 C1501.0918,238.665441 1498.49876,239.717529 1495.4734,239.717529 L1495.4734,239.717529 L1480.11232,239.717529 L1480.11232,123.098676 C1480.11232,109.314122 1477.19227,99.3704597 1471.27591,93.3077438 C1465.37064,87.256397 1456.60549,84.2578618 1445.00766,84.2578618 C1432.14431,84.2578618 1422.12933,87.1156868 1414.97986,92.872093 C1407.84311,98.6182516 1402.96167,107.450074 1400.30521,119.346557 L1400.30521,119.346557 L1400.30521,228.113268 C1400.30521,231.657574 1399.10644,234.475605 1396.73092,236.577942 C1394.36701,238.669999 1391.57369,239.717529 1388.3498,239.717529 L1388.3498,239.717529 L1373.29832,239.717529 L1373.29832,76.4607753 C1373.29832,72.9147577 1374.16264,70.2713447 1375.83443,68.5029359 C1377.5148,66.7254494 1380.02564,65.8083072 1383.3961,65.8083072 L1383.3961,65.8083072 L1400.30521,65.8083072 L1400.30521,82.6046788 C1404.2089,76.4560078 1409.58073,71.3552512 1416.42409,67.3056933 C1423.8108,62.9346098 1434.36679,60.7320732 1448.10372,60.7320732 Z"
                              id="blockPath10"
                              stroke="url(#blocklinearGradient-10)"
                            ></path>
                          </g>
                        </g>
                      </svg>
                    </div>
                    <a href="/tech/blockchain">
                      <h3
                        class="tit aos-init"
                        data-aos="fade-up"
                        data-aos-offset="0"
                        data-aos-duration="250"
                        data-aos-easing="linear"
                      >
                        Blockchain
                      </h3>
                      <p
                        class="description aos-init"
                        data-aos="fade-up"
                        data-aos-offset="0"
                        data-aos-duration="250"
                        data-aos-easing="linear"
                      >
                        우리는 국내 최초 블록체인 기반 저작권 시스템을
                        구축하여,<br />
                        생산, 물류, 유통 전 과정에 공정성과 투명성을 보장합니다.
                      </p>
                      <p
                        class="btn-arrow aos-init"
                        data-aos="fade-up"
                        data-aos-offset="0"
                        data-aos-duration="250"
                        data-aos-easing="linear"
                      >
                        <span class="blind">자세히 보기</span>
                      </p>
                    </a>
                  </li>
                  <li class="cloud">
                    <div
                      class="bg-text aos-init"
                      data-aos="svg-stroke"
                      data-aos-offset="0"
                    >
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        xmlns:xlink="http://www.w3.org/1999/xlink"
                        width="794px"
                        height="244px"
                        viewBox="0 0 794 244"
                        version="1.1"
                        class="img-svg replaced-svg"
                      >
                        <title>Cloud</title>
                        <defs>
                          <linearGradient
                            x1="0%"
                            y1="58.8120299%"
                            x2="100%"
                            y2="58.8120299%"
                            id="cloudlinearGradient-1"
                          >
                            <stop
                              stop-color="#C597F3"
                              offset="0.0655594406%"
                            ></stop>
                            <stop stop-color="#D497F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient
                            x1="0%"
                            y1="58.8120299%"
                            x2="100%"
                            y2="58.8120299%"
                            id="cloudlinearGradient-2"
                          >
                            <stop
                              stop-color="#D497F3"
                              offset="0.0655594406%"
                            ></stop>
                            <stop stop-color="#DA97F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient
                            x1="0%"
                            y1="58.8120299%"
                            x2="100%"
                            y2="58.8120299%"
                            id="cloudlinearGradient-3"
                          >
                            <stop
                              stop-color="#DA97F3"
                              offset="0.0655594406%"
                            ></stop>
                            <stop stop-color="#EA97F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient
                            x1="0%"
                            y1="58.8120299%"
                            x2="100%"
                            y2="58.8120299%"
                            id="cloudlinearGradient-4"
                          >
                            <stop
                              stop-color="#EA97F3"
                              offset="0.0655594406%"
                            ></stop>
                            <stop stop-color="#F397ED" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient
                            x1="0%"
                            y1="58.8120299%"
                            x2="100%"
                            y2="58.8120299%"
                            id="cloudlinearGradient-5"
                          >
                            <stop
                              stop-color="#F397ED"
                              offset="0.0655594406%"
                            ></stop>
                            <stop
                              stop-color="#F397DE"
                              offset="99.9371722%"
                            ></stop>
                          </linearGradient>
                        </defs>
                        <g
                          id="Img-/-main-/-core-bg-text_04_PC"
                          stroke="none"
                          stroke-width="1"
                          fill="none"
                          fill-rule="evenodd"
                          opacity="0.5"
                        >
                          <g id="Cloud" fill-rule="nonzero">
                            <path
                              d="M110.308597,-0.460383798 C127.166717,-0.876653158 142.671441,1.98730753 156.823658,8.12715971 C171.101116,14.3213468 184.537444,25.5387383 197.121612,41.7946463 L197.121612,41.7946463 L183.640922,51.1030979 C182.842376,51.6735145 182.056158,52.0092285 181.287074,52.1231721 C180.492109,52.2409502 179.711369,52.1252851 178.945453,51.7717691 C177.533668,51.1201454 176.283306,50.1443909 175.200584,48.8450178 C170.467945,43.2890512 165.582059,38.812066 160.540652,35.4166735 C155.500224,32.0219408 150.25422,29.34696 144.8023,27.3924067 C139.349435,25.4375147 133.587846,24.1517828 127.517709,23.5344517 C121.427202,22.9150492 115.078621,22.7087508 108.46545,22.9153794 C97.1470128,23.1211788 86.5999945,25.6413192 76.8248573,30.477666 C67.044318,35.3166855 58.448455,42.1127092 51.0359334,50.8640122 C43.61538,59.6247978 37.7940939,70.0871035 33.5685866,82.2488889 C29.3383508,94.4242835 27.225636,108.147692 27.225636,123.418232 C27.225636,137.65065 29.3893568,150.645957 33.7208376,162.403383 C38.0478433,174.148663 44.0733284,184.246485 51.8002694,192.695002 C59.5242103,201.14024 68.6385768,207.782957 79.14311,212.623507 C89.6475079,217.463996 101.079002,219.985763 113.444693,220.191928 C119.830877,220.397944 126.26854,219.882702 132.757712,218.646611 C139.2424,217.411375 145.36693,215.455858 151.131119,212.779502 C156.894436,210.103551 162.24608,206.758601 167.186065,202.744676 C172.111414,198.742642 176.113987,194.176777 179.192145,189.045598 C180.404565,186.846537 181.744257,185.500418 183.170797,184.951724 C184.654811,184.380922 186.260411,184.632135 187.984159,185.783203 L187.984159,185.783203 L201.083997,195.049376 C196.458505,204.183419 190.919966,211.814848 184.471741,217.946234 C178.116488,223.989216 171.083934,228.938046 163.3743,232.793044 C155.668724,236.646012 147.702758,239.40535 139.476555,241.071494 C131.259828,242.735719 123.095094,243.567667 114.982387,243.567667 C97.7135443,243.567667 82.0058184,240.496297 67.858142,234.358415 C53.7057221,228.218475 41.5831392,219.788291 31.4892247,209.069509 C21.3976406,198.353202 13.5417322,185.660712 7.92367548,170.990655 C2.30883251,156.32899 -0.5,140.471697 -0.5,123.418232 C-0.5,105.954591 2.15198243,89.7386768 7.45314577,74.7699857 C12.7581252,59.7905192 20.1967679,46.7883685 29.7664144,35.7619555 C39.342369,24.728274 50.9476439,16.0360881 64.5830572,9.68647639 C78.2123034,3.33973648 93.4537437,-0.0441951069 110.308597,-0.460383798 Z"
                              id="cloudPath1"
                              stroke="url(#cloudlinearGradient-1)"
                            ></path>
                            <path
                              d="M251.596673,7.30890767 L251.596673,229.704223 C251.596673,232.781089 250.538016,235.133227 248.454254,236.778379 C246.402586,238.398193 243.867171,239.216778 240.841487,239.216778 L240.841487,239.216778 L226.357143,239.216778 L226.357143,16.8214625 C226.357143,13.7474982 227.362145,11.3988527 229.333911,9.75563754 C231.281995,8.13215834 233.768152,7.30890767 236.801566,7.30890767 L236.801566,7.30890767 L251.596673,7.30890767 Z"
                              id="cloudPath2"
                              stroke="url(#cloudlinearGradient-2)"
                            ></path>
                            <path
                              d="M358.931507,64.1812365 C373.099652,64.1812365 385.286826,66.4784676 395.495606,71.0622159 C405.723364,75.6544856 414.070919,81.9706437 420.541312,90.0068305 C427.00486,98.0345156 431.75019,107.520937 434.773542,118.468071 C437.788923,129.386338 439.297652,141.188366 439.297652,153.874452 C439.297652,166.768096 437.788824,178.673701 434.773542,189.59161 C431.750571,200.537363 427.006032,210.074839 420.543278,218.205782 C414.072394,226.346952 405.724117,232.715635 395.495606,237.308243 C385.286826,241.891991 373.099652,244.189222 358.931507,244.189222 C345.17666,244.189222 333.299068,241.891519 323.296166,237.30664 C313.278583,232.715033 304.98375,226.348326 298.409848,218.208828 C291.8441,210.079426 286.944249,200.543732 283.713416,189.600076 C280.48942,178.679579 278.876125,166.771171 278.876125,153.874452 C278.876125,141.185317 280.489308,129.380483 283.713416,118.459605 C286.944652,107.514585 291.845294,98.0299455 298.41184,90.0037911 C304.985234,81.969267 313.279334,75.6550809 323.296166,71.0638183 C333.299068,66.47894 345.17666,64.1812365 358.931507,64.1812365 Z M359.553033,86.0033459 C350.112974,86.0033459 342.004749,87.7417547 335.231726,91.2310507 C328.467841,94.7156396 322.933224,99.4808078 318.628866,105.52769 C314.312273,111.591758 311.128384,118.735886 309.07294,126.95805 C307.010476,135.208288 305.980235,144.180508 305.980235,153.874452 C305.980235,163.775914 307.010563,172.903996 309.07329,181.258431 C311.128703,189.583243 314.312323,196.77877 318.628866,202.842769 C322.931851,208.887722 328.464608,213.600261 335.226355,216.981293 C342.000873,220.36871 350.110835,222.056335 359.553033,222.056335 C368.579262,222.056335 376.376593,220.369492 382.941884,216.984105 C389.499832,213.602505 394.930511,208.888638 399.234148,202.842769 C403.551815,196.77719 406.787776,189.579813 408.946529,181.252807 C411.111947,172.900089 412.193542,163.773869 412.193542,153.874452 C412.193542,144.182565 411.112041,135.212227 408.946911,126.963731 C406.788117,118.739366 403.551884,111.593365 399.234148,105.52769 C394.929098,99.4798368 389.496524,94.7133232 382.936451,91.228121 C376.372685,87.740957 368.577118,86.0033459 359.553033,86.0033459 Z"
                              id="cloudPath3"
                              stroke="url(#cloudlinearGradient-3)"
                            ></path>
                            <path
                              d="M498.964188,69.1536805 L498.964188,184.330671 C498.964188,197.833858 501.381151,207.371121 506.296217,212.900829 C511.197245,218.414744 519.792812,221.124002 532.026614,221.124002 C544.744298,221.124002 554.981647,218.26608 562.727367,212.520641 C570.449148,206.79296 575.682983,198.199716 578.451859,186.757369 L578.451859,186.757369 L578.451859,80.2201241 C578.451859,76.9592879 579.598139,74.2994109 581.879408,72.2353091 C584.146838,70.1837279 586.899018,69.1536805 590.139335,69.1536805 L590.139335,69.1536805 L604.934442,69.1536805 L604.934442,228.150335 C604.934442,231.607516 604.105666,234.298375 602.487836,236.239862 C600.848661,238.206965 598.399361,239.216778 595.111546,239.216778 L595.111546,239.216778 L578.451859,239.216778 L578.451859,222.74845 C574.502534,228.780501 568.898448,233.785352 561.633582,237.756998 C553.805427,242.036589 543.21398,244.189222 529.851272,244.189222 C509.572831,244.189222 494.857475,239.138286 485.665075,229.109744 C476.473124,219.081692 471.860078,205.50706 471.860078,188.370782 L471.860078,188.370782 L471.860078,80.2201241 C471.860078,76.9568719 473.059466,74.2937431 475.451655,72.2276652 C477.826452,70.1766082 480.525716,69.1536805 483.547554,69.1536805 L483.547554,69.1536805 L498.964188,69.1536805 Z"
                              id="cloudPath4"
                              stroke="url(#cloudlinearGradient-4)"
                            ></path>
                            <path
                              d="M784.366341,7.30890767 C786.983919,7.30890767 789.335305,8.38805648 791.410257,10.5723189 C793.391418,12.6578488 794.412982,14.9457627 794.494673,17.4288135 L794.5,17.7537958 L794.5,239.216778 L777.840313,239.216778 C774.77643,239.216778 772.377811,238.218545 770.62981,236.251952 C768.967445,234.381704 768.09509,232.115247 768.022375,229.44876 L768.017417,229.082668 L768.017417,220.699991 C763.807204,228.905841 757.566593,234.855313 749.298789,238.551681 C740.436866,242.513668 729.85554,244.5 717.55225,244.5 C705.24706,244.5 694.455338,242.305597 685.174862,237.925842 C675.884114,233.541239 668.107334,227.381583 661.843951,219.447593 C655.590504,211.526189 650.898447,202.146456 647.771641,191.306356 C644.65196,180.490954 643.090607,168.531769 643.090607,155.42834 C643.090607,142.537478 644.546893,130.530429 647.457578,119.406936 C650.375487,108.255831 654.910584,98.5648443 661.058877,90.3319998 C667.216572,82.086565 674.835519,75.6156081 683.915486,70.9188537 C692.992613,66.2235683 703.685954,63.8704587 715.998434,63.8704587 C723.71323,63.8704587 730.48935,64.6544783 736.327417,66.2183194 C742.176792,67.7851897 747.294278,69.8758257 751.681191,72.4872058 C756.083848,75.1079574 759.69879,78.0971965 762.528924,81.4515862 C764.634068,83.9466881 766.361424,86.4422982 767.712347,88.9375975 L768.017417,89.5134299 L768.017417,7.30890767 L784.366341,7.30890767 Z M719.41683,86.3141237 C711.224694,86.3141237 704.054751,88.0501176 697.90992,91.5323516 C691.760509,95.017181 686.636415,99.7323427 682.536857,105.67698 C678.423983,111.640927 675.290852,118.891377 673.131694,127.42559 C670.965837,135.986283 669.883953,145.320626 669.883953,155.42834 C669.883953,165.326126 670.96512,174.34779 673.130187,182.492949 C675.289037,190.614718 678.422275,197.60684 682.534529,203.467077 C686.630214,209.303702 691.749263,213.80992 697.892924,216.984294 C704.042611,220.161781 711.218124,221.745557 719.41683,221.745557 C727.205213,221.745557 734.225968,220.159959 740.477576,216.982764 C746.725159,213.807614 751.948003,209.300402 756.147125,203.462325 C760.362372,197.601829 763.598645,190.609404 765.860401,182.487263 C768.128091,174.343816 769.26047,165.324031 769.26047,155.42834 C769.26047,146.353831 768.229714,137.640176 766.167415,129.287472 C764.11025,120.955566 761.026256,113.651389 756.911813,107.376569 C752.808846,101.119252 747.629086,96.0413139 741.372016,92.143285 C735.12835,88.253606 727.80886,86.3141237 719.41683,86.3141237 Z"
                              id="cloudPath5"
                              stroke="url(#cloudlinearGradient-5)"
                            ></path>
                          </g>
                        </g>
                      </svg>
                    </div>
                    <a href="/business/cloud_service">
                      <h3
                        class="tit aos-init"
                        data-aos="fade-up"
                        data-aos-offset="0"
                        data-aos-duration="250"
                        data-aos-easing="linear"
                      >
                        Cloud
                      </h3>
                      <p
                        class="description aos-init"
                        data-aos="fade-up"
                        data-aos-offset="0"
                        data-aos-duration="250"
                        data-aos-easing="linear"
                      >
                        고객 서비스에 최적화된 Cloud 환경 조성으로<br />
                        안전하고 효율적인 인프라를 구축합니다.
                      </p>
                      <p
                        class="btn-arrow aos-init"
                        data-aos="fade-up"
                        data-aos-offset="0"
                        data-aos-duration="250"
                        data-aos-easing="linear"
                      >
                        <span class="blind">자세히 보기</span>
                      </p>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="service-wrap section">
              <div class="inner_container">
                <div class="section-title-area">
                  <a href="/business/our_services">
                    <h2
                      class="tit aos-init"
                      data-aos="fade-up"
                      data-aos-offset="0"
                      data-aos-duration="250"
                      data-aos-easing="linear"
                    >
                      OUR SERVICES
                    </h2>
                    <p
                      class="description aos-init"
                      data-aos="fade-up"
                      data-aos-offset="0"
                      data-aos-duration="250"
                      data-aos-easing="linear"
                    >
                      CJ올리브네트웍스는 우리가 가진 기술력으로<br />
                      디지털 혁신을 실현합니다.
                    </p>
                  </a>
                  <div
                    class="btn-area aos-init"
                    data-aos="fade-up"
                    data-aos-offset="0"
                    data-aos-duration="250"
                    data-aos-easing="linear"
                  >
                    <a
                      href="/business/our_services"
                      class="common-btn is-grad-blue"
                      ><span>전체보기<i class="icon link-arrow"></i></span
                    ></a>
                  </div>
                </div>
                <div class="service-list-wrap">
                  <ul class="service-list">
                    <li
                      class="factory-one aos-init"
                      data-aos="fade-up"
                      data-aos-offset="0"
                      data-aos-duration="250"
                      data-aos-easing="linear"
                    >
                      <a href="/business/ai_factory_solution">
                        <h3 class="tit-label">FactoryOne</h3>
                        <h4 class="tit">AI팩토리</h4>
                        <p class="description">
                          제조 현장의 최적 운영을 위한<br />
                          스마트 팩토리 구축 서비스
                        </p>
                        <p class="btn-arrow">
                          <span class="blind">자세히 보기</span>
                        </p>
                      </a>
                    </li>
                    <li
                      class="eliss-one aos-init"
                      data-aos="fade-up"
                      data-aos-offset="0"
                      data-aos-duration="250"
                      data-aos-easing="linear"
                    >
                      <a href="/business/ai_logistics">
                        <h3 class="tit-label">ELissOne</h3>
                        <h4 class="tit">AI로지스틱스</h4>
                        <p class="description">
                          물류 생산성과 효율성을 높이는<br />
                          스마트 물류센터 구축 서비스
                        </p>
                        <p class="btn-arrow">
                          <span class="blind">자세히 보기</span>
                        </p>
                      </a>
                    </li>
                    <li
                      class="cj-one-ad aos-init"
                      data-aos="fade-up"
                      data-aos-offset="0"
                      data-aos-duration="250"
                      data-aos-easing="linear"
                    >
                      <a href="/business/cj_one_ad">
                        <h3 class="tit-label">CJ ONE AD</h3>
                        <h4 class="tit">CJ ONE AD</h4>
                        <p class="description">
                          2,800만 회원 데이터를 활용한<br />
                          타겟 맞춤형 광고 큐레이션 서비스
                        </p>
                        <p class="btn-arrow">
                          <span class="blind">자세히 보기</span>
                        </p>
                      </a>
                    </li>
                    <li
                      class="one-order aos-init"
                      data-aos="fade-up"
                      data-aos-offset="0"
                      data-aos-duration="250"
                      data-aos-easing="linear"
                    >
                      <a href="/business/smart_store_solution">
                        <h3 class="tit-label">OneOrder</h3>
                        <h4 class="tit">매장 통합관리 솔루션</h4>
                        <p class="description">
                          스마트한 매장 관리를 위한<br />
                          주문 통합 솔루션
                        </p>
                        <p class="btn-arrow">
                          <span class="blind">자세히 보기</span>
                        </p>
                      </a>
                    </li>
                    <li
                      class="smart-culture-space aos-init"
                      data-aos="fade-up"
                      data-aos-offset="0"
                      data-aos-duration="250"
                      data-aos-easing="linear"
                    >
                      <a href="/business/media_culture_spaces">
                        <h3 class="tit-label">Smart Culture Space</h3>
                        <h4 class="tit">스마트 컬처 스페이스</h4>
                        <p class="description">
                          최신 디지털 경험을 선사하는<br />
                          미디어 문화 공간 디자인
                        </p>
                        <p class="btn-arrow">
                          <span class="blind">자세히 보기</span>
                        </p>
                      </a>
                    </li>
                    <li
                      class="mplace aos-init"
                      data-aos="fade-up"
                      data-aos-offset="0"
                      data-aos-duration="250"
                      data-aos-easing="linear"
                    >
                      <a href="/business/messaging_service">
                        <h3 class="tit-label">mplace</h3>
                        <h4 class="tit">통합 커뮤니케이션 플랫폼</h4>
                        <p class="description">
                          데이터와 API 플랫폼을 활용한<br />
                          고객 맞춤형 커뮤니케이션 채널
                        </p>
                        <p class="btn-arrow">
                          <span class="blind">자세히 보기</span>
                        </p>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="esg-wrap section">
            <a href="/sustainability/compliance/ceo_practice">
              <div class="inner_container">
                <h2 class="tit">ESG</h2>
                <p class="point-text">
                  <strong
                    >우리는 지속 가능한 성장을 통해 함께하는 내일을
                    그려갑니다</strong
                  >
                </p>
                <div class="btn-area">
                  <p class="common-btn is-black">
                    <span>자세히 보기</span><i class="icon link-arrow2"></i>
                  </p>
                </div>
              </div>
            </a>
          </div>
          <div class="culture-wrap section">
            <div class="inner_container">
              <div class="section-title-area">
                <a href="/culture/people">
                  <h2
                    class="tit aos-init"
                    data-aos="fade-up"
                    data-aos-offset="0"
                    data-aos-duration="250"
                    data-aos-easing="linear"
                  >
                    <span>PEOPLE </span>&amp; CULTURE
                  </h2>
                  <p
                    class="description aos-init"
                    data-aos="fade-up"
                    data-aos-offset="0"
                    data-aos-duration="250"
                    data-aos-easing="linear"
                  >
                    우리와 함께 새로운 미래를 만들어 갈 당신을 기다립니다.
                  </p>
                </a>
                <div
                  class="btn-area aos-init"
                  data-aos="fade-up"
                  data-aos-offset="0"
                  data-aos-duration="250"
                  data-aos-easing="linear"
                >
                  <a href="/culture/people" class="common-btn is-grad-blue"
                    ><span>자세히 보기<i class="icon link-arrow"></i> </span
                  ></a>
                </div>
              </div>
              <div
                class="half-wrap aos-init"
                data-aos-offset="0"
                data-aos-duration="250"
                data-aos-easing="linear"
              >
                <div class="is-left">
                  <a
                    href="/culture/people"
                    class="banner is-people aos-init"
                    data-aos-offset="0"
                    data-aos-duration="250"
                    data-aos-delay="100"
                    data-aos-easing="linear"
                    data-aos="fade-up"
                  >
                    <h3 class="tit">올네인 이야기</h3>
                    <p class="description">
                      “복지와 문화, 커리어를 모두<br />
                      잡을 수 있는 회사라고 생각해요.”
                    </p>
                    <p class="btn-arrow is-black">
                      <span class="blind">자세히 보기</span>
                    </p>
                  </a>
                </div>
                <div class="is-right">
                  <a
                    href="/recruit/job_notice"
                    class="banner is-recruit aos-init"
                    data-aos-offset="0"
                    data-aos-duration="250"
                    data-aos-delay="100"
                    data-aos-easing="linear"
                    data-aos="fade-up"
                  >
                    <h3 class="tit">진행 중인 공고</h3>
                    <p class="description">
                      <span class="recruit-num" id="recruit-num">60</span> 건
                      진행 중
                    </p>
                    <p class="btn-arrow is-black">
                      <span class="blind">자세히 보기</span>
                    </p>
                  </a>
                  <a
                    href="/culture/growth"
                    class="banner is-growth aos-init"
                    data-aos-offset="0"
                    data-aos-duration="250"
                    data-aos-delay="100"
                    data-aos-easing="linear"
                    data-aos="fade-up"
                  >
                    <h3 class="tit">성장</h3>
                    <p class="description">
                      차세대 신기술 개발과<br />
                      혁신의 중추적 역할을 해 나갈<br />
                      IT 기술 전문가를 양성합니다.
                    </p>
                    <p class="btn-arrow is-black">
                      <span class="blind">자세히 보기</span>
                    </p>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="news-wrap section">
            <div class="inner_container card-ui">
              <div class="section-title-area">
                <a href="/news/recent_news">
                  <h2 class="tit">NEWS</h2>
                  <p class="description">새로운 소식을 만나보세요.</p>
                </a>
                <div
                  class="btn-area aos-init"
                  data-aos="fade-up"
                  data-aos-offset="0"
                  data-aos-duration="250"
                  data-aos-easing="linear"
                >
                  <a href="/news/recent_news" class="common-btn is-grad-blue"
                    ><span>전체보기<i class="icon link-arrow"></i></span
                  ></a>
                </div>
              </div>
              <ul class="common-layout_3">
                <li
                  data-aos="fade-up"
                  data-aos-offset="0"
                  data-aos-duration="250"
                  data-aos-easing="linear"
                  class="items aos-init"
                >
                  <div class="image_box">
                    <a href="/news/press_release/detail/621?ca=ALL">
                      <div class="img_cover">
                        <img
                          src="${pageContext.request.contextPath}/resources/imgs/imageBoard/neadam_logo.png"
                        />
                      </div>
                    </a>
                  </div>
                  <a
                    href="/news/press_release/detail/621?ca=ALL"
                    class="desc_box"
                  >
                    <p class="ui_category">언론보도</p>
                    <p class="ui_title">
                      CJ올리브네트웍스, 메타버스 커뮤니케이션 서비스 브릿지
                      오피스(Bridge Office)
                    </p>
                  </a>

                  <div class="hash_area">
                    <a
                      href="javascript:void(0);"
                      onclick="hashtagLink('/news/recent_news?searchTag=', &quot;\uBE0C\uB9BF\uC9C0\uC624\uD53C\uC2A4&quot;)"
                      class="hash_tag"
                      >#브릿지오피스</a
                    >
                    <a
                      href="javascript:void(0);"
                      onclick="hashtagLink('/news/recent_news?searchTag=', &quot;\uBA54\uD0C0\uBC84\uC2A4&quot;)"
                      class="hash_tag"
                      >#메타버스</a
                    >
                    <a
                      href="javascript:void(0);"
                      onclick="hashtagLink('/news/recent_news?searchTag=', &quot;\uCEE4\uBBA4\uB2C8\uCF00\uC774\uC158&quot;)"
                      class="hash_tag"
                      >#커뮤니케이션</a
                    >
                  </div>
                </li>
                <li
                  data-aos="fade-up"
                  data-aos-offset="0"
                  data-aos-duration="250"
                  data-aos-easing="linear"
                  class="items aos-init"
                >
                  <div class="image_box">
                    <a href="/news/press_release/detail/620?ca=ALL">
                      <div class="img_cover">
                        <img
                          src="${pageContext.request.contextPath}/resources/imgs/imageBoard/neadam_logo.png"
                        />
                      </div>
                    </a>
                  </div>
                  <a
                    href="/news/press_release/detail/620?ca=ALL"
                    class="desc_box"
                  >
                    <p class="ui_category">언론보도</p>
                    <p class="ui_title">
                      CJ올리브네트웍스, 찾아가는 ‘시니어 디지털 리터러시 교육’
                      펼쳐
                    </p>
                  </a>

                  <div class="hash_area">
                    <a
                      href="javascript:void(0);"
                      onclick="hashtagLink('/news/recent_news?searchTag=', &quot;\uC2DC\uB2C8\uC5B4&quot;)"
                      class="hash_tag"
                      >#시니어</a
                    >
                    <a
                      href="javascript:void(0);"
                      onclick="hashtagLink('/news/recent_news?searchTag=', &quot;\uB514\uC9C0\uD138\uBB38\uD574&quot;)"
                      class="hash_tag"
                      >#디지털문해</a
                    >
                    <a
                      href="javascript:void(0);"
                      onclick="hashtagLink('/news/recent_news?searchTag=', &quot;\uC2A4\uB9C8\uD2B8\uD3F0&quot;)"
                      class="hash_tag"
                      >#스마트폰</a
                    >
                  </div>
                </li>
                <li
                  data-aos="fade-up"
                  data-aos-offset="0"
                  data-aos-duration="250"
                  data-aos-easing="linear"
                  class="items aos-init"
                >
                  <div class="image_box">
                    <a href="/news/press_release/detail/619?ca=ALL">
                      <div class="img_cover">
                        <img
                          src="${pageContext.request.contextPath}/resources/imgs/imageBoard/neadam_logo.png"
                        />
                      </div>
                    </a>
                  </div>
                  <a
                    href="/news/press_release/detail/619?ca=ALL"
                    class="desc_box"
                  >
                    <p class="ui_category">언론보도</p>
                    <p class="ui_title">
                      CJ올리브네트웍스, 데이터 마케팅 컨퍼런스 &lt;The MAXONOMY
                      2023&gt; 개최
                    </p>
                  </a>

                  <div class="hash_area">
                    <a
                      href="javascript:void(0);"
                      onclick="hashtagLink('/news/recent_news?searchTag=', &quot;\uB370\uC774\uD130\uB9C8\uCF00\uD305\uC194\uB8E8\uC158&quot;)"
                      class="hash_tag"
                      >#데이터마케팅솔루션</a
                    >
                    <a
                      href="javascript:void(0);"
                      onclick="hashtagLink('/news/recent_news?searchTag=', &quot;MAXONOMY&quot;)"
                      class="hash_tag"
                      >#MAXONOMY</a
                    >
                    <a
                      href="javascript:void(0);"
                      onclick="hashtagLink('/news/recent_news?searchTag=', &quot;Braze&quot;)"
                      class="hash_tag"
                      >#Braze</a
                    >
                  </div>
                </li>
              </ul>
            </div>
          </div>
          <div class="contact-wrap section">
            <div class="inner_container">
              <div class="contact-banner">
                <h3 class="tit">
                  ICT 전문가와 상담을 원하시나요?<br />
                  CJ올리브네트웍스가 도와드리겠습니다.
                </h3>
                <div class="btn-area">
                  <a href="/util/contact_us" class="common-btn is-white2"
                    ><span>고객센터</span></a
                  >
                  <a
                    href="#pop_customer"
                    class="common-btn is-white"
                    onclick="openPopSet(this); return false;"
                    ><span>문의하기</span></a
                  >
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- // #contents -->
      </section>
      <!-- // #container -->

      <div class="layer_wrapper" id="pop_customer">
        <div class="layer_outer">
          <div class="layer_inner">
            <div class="layer_head">
              <p class="layer_title">문의하기</p>
            </div>
            <div class="layer_body">
              <div class="form_fieldset">
                <div class="form_head">
                  <label for="form01" class="form-label">문의 유형</label>
                </div>
                <div class="form_body">
                  <div class="common-select_box">
                    <select
                      name=""
                      id="category"
                      onchange="categoryType(this.value)"
                    >
                      <option value="">문의 유형을 선택해 주세요.</option>
                      <option value="서비스/기술문의">서비스/기술문의</option>
                      <option value="제휴제안">제휴제안</option>
                      <option value="기타문의">기타문의</option>
                    </select>
                    <p class="messg categorymsg" style="display: none">
                      문의 유형을 선택해 주세요.
                    </p>
                  </div>
                </div>
              </div>

              <div class="form_fieldset">
                <div class="form_head">
                  <label for="form02" class="form-label">사업 구분</label>
                </div>
                <div class="form_body form-layout_2 full1">
                  <div class="items">
                    <div class="common-select_box">
                      <select
                        name="business"
                        id="business"
                        onchange="businessType(this.value)"
                      >
                        <option value="">
                          서비스 또는 기술을 선택해 주세요.
                        </option>
                        <option value="1">스마트 제조·물류</option>
                        <option value="2">미디어 컨버전스</option>
                        <option value="3">디지털 마케팅</option>
                        <option value="4">이커머스&amp;리테일</option>
                        <option value="5">스마트 비즈니스</option>
                        <option value="6">클라우드&amp;인프라</option>
                        <option value="7">정보 보호</option>
                        <option value="8">기술 연구</option>
                        <option value="9">AI 비전 연구</option>
                        <option value="10">AI 자연어 연구</option>
                        <option value="11">AI 오디오 연구</option>
                        <option value="12">데이터 사이언스</option>
                        <option value="13">블록체인</option>
                      </select>
                      <p class="messg businessmsg" style="display: none">
                        서비스 또는 기술을 선택해 주세요.
                      </p>
                    </div>
                  </div>
                  <div class="items">
                    <div class="common-select_box">
                      <select
                        name="businessDetail"
                        id="businessDetail"
                        onchange="businessDType(this.value)"
                        disabled=""
                      >
                        <option value="">상세항목을 선택해 주세요.</option>
                        <option value="1">AI팩토리 (FactoryOne)</option>
                        <option value="2">AI로지스틱스</option>
                        <option value="3">스마트 컬처 스페이스</option>
                        <option value="4">NFT</option>
                        <option value="5">방송 송출 서비스</option>
                        <option value="6">인코딩 하우스</option>
                        <option value="7">공간 음악 서비스</option>
                        <option value="8">
                          방송•미디어 통합 인프라 솔루션
                        </option>
                        <option value="9">CJ ONE AD</option>
                        <option value="10">CJ기프트카드</option>
                        <option value="11">
                          데이터 마케팅 솔루션 (Amplitude &amp; Braze)
                        </option>
                        <option value="12">데이터 바우처</option>
                        <option value="13">빅데이터 통합 마케팅</option>
                        <option value="14">
                          통합 커뮤니케이션 솔루션 (mplace)
                        </option>
                        <option value="15">
                          매장 통합관리 솔루션 (OneOrder)
                        </option>
                        <option value="16">
                          티켓 통합 솔루션 (OneOrder Ticket)
                        </option>
                        <option value="17">결제 솔루션 (One PG)</option>
                        <option value="18">시스템 통합</option>
                        <option value="19">시스템 운영</option>
                        <option value="20">웹앱 서비스</option>
                        <option value="21">
                          스마트 인사관리 플랫폼 (WORKSCAN)
                        </option>
                        <option value="22">이러닝 서비스</option>
                        <option value="23">AI 통합 인프라 솔루션</option>
                        <option value="24">IT 인프라 서비스</option>
                        <option value="25">Hybrid/Multi 클라우드 서비스</option>
                        <option value="26">퍼블릭 클라우드 보안</option>
                        <option value="27">
                          보안 취약점 진단 &amp; 모의해킹
                        </option>
                        <option value="28">산업제어시스템(OT/ICS) 보안</option>
                      </select>
                      <p class="messg businessDetailmsg" style="display: none">
                        상세항목을 선택해 주세요.
                      </p>
                    </div>
                  </div>
                </div>
              </div>

              <div class="form_fieldset form-layout_2 full2">
                <div class="items">
                  <div class="form_head">
                    <label for="form03" class="form-label">이름</label>
                  </div>
                  <div class="form_body">
                    <div class="textfd_wrap">
                      <input
                        type="text"
                        placeholder="이름을 입력해주세요."
                        id="name"
                        maxlength="30"
                      />
                      <p class="messg namemsg" style="display: none">
                        이름을 입력해 주세요.
                      </p>
                    </div>
                  </div>
                </div>
                <div class="items">
                  <div class="form_head">
                    <label for="form04" class="form-label">이메일</label>
                  </div>
                  <div class="form_body">
                    <div class="textfd_wrap">
                      <input
                        type="email"
                        placeholder="이메일을 입력해 주세요."
                        id="email"
                        maxlength="30"
                      />
                      <p class="messg emailmsg1" style="display: none">
                        이메일을 입력해 주세요.
                      </p>
                      <p class="messg emailmsg2" style="display: none">
                        이메일 형식이 올바르지 않습니다.
                      </p>
                    </div>
                  </div>
                </div>
              </div>

              <div class="form_fieldset form-layout_2 full2">
                <div class="items">
                  <div class="form_head">
                    <label for="form05" class="form-label">연락처</label>
                  </div>
                  <div class="form_body">
                    <div class="textfd_wrap">
                      <input
                        type="tel"
                        placeholder="연락처를 입력해 주세요."
                        id="phone"
                        maxlength="20"
                        onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"
                      />
                      <p class="messg phonemsg" style="display: none">
                        연락처를 입력해 주세요.
                      </p>
                    </div>
                  </div>
                </div>
                <div class="items">
                  <div class="form_head">
                    <label for="form06" class="form-label">회사(소속)</label>
                  </div>
                  <div class="form_body">
                    <div class="textfd_wrap">
                      <input
                        type="text"
                        placeholder="회사명 또는 소속기관을 입력해 주세요."
                        id="company"
                        maxlength="30"
                      />
                      <p class="messg companymsg" style="display: none">
                        회사명 또는 소속기관을 입력해 주세요.
                      </p>
                    </div>
                  </div>
                </div>
              </div>

              <div class="form_fieldset">
                <div class="form_head">
                  <label for="form07" class="form-label">문의 제목</label>
                </div>
                <div class="form_body">
                  <div class="textfd_wrap">
                    <input
                      type="text"
                      placeholder="제목을 입력해 주세요."
                      id="title"
                      maxlength="200"
                    />
                    <p class="messg titlemsg" style="display: none">
                      제목을 입력해 주세요.
                    </p>
                  </div>
                </div>
              </div>

              <div class="form_fieldset">
                <div class="form_head">
                  <label for="form08" class="form-label">문의 내용</label>
                </div>
                <div class="form_body">
                  <div class="textarea_wrap">
                    <textarea
                      id="content"
                      placeholder="문의 내용을 입력해 주세요."
                      maxlength="2000"
                    ></textarea>
                    <p class="messg contentmsg" style="display: none">
                      문의 내용을 입력해 주세요.
                    </p>
                  </div>
                </div>
              </div>

              <div class="form_fieldset">
                <div class="form_head">
                  <label for="form08" class="form-label">첨부 파일(선택)</label>
                </div>
                <div class="form_body">
                  <div class="common-file-upload type01">
                    <input
                      type="file"
                      id="file"
                      name="file"
                      class="iText"
                      title="첨부파일"
                    />
                    <label for="file" class="common-btn is-gray"
                      ><span>파일선택</span></label
                    >
                    <div class="file_viewer-box">
                      <p class="file_viewer-txt">첨부된 파일이 없습니다.</p>
                      <button type="button" class="icon val-del">
                        <span class="hidden">첨부파일 삭제</span>
                      </button>
                    </div>
                  </div>
                  <p class="guide-txt">
                    * 첨부파일은 최대 10MB까지 등록 가능하며, 파일 형식은 zip,
                    pdf, hwp, ppt, pptx, doc, docx, xls, xlsx, jpg, jpeg, png,
                    gif 만 가능합니다.
                  </p>
                </div>
              </div>

              <div class="form_fieldset">
                <div class="provision_area" id="agreeChk">
                  <div class="provision_box" style="">
                    개인정보 수집 및 이용 동의 (필수) <br />
                    <br />
                    1. 처리목적 : 고객 문의에 대한 답변 및 현황 관리<br />
                    2. 처리항목 : 이름, 연락처, 이메일, 회사(소속)<br />
                    3. 보유기간 : 개인정보 수집 및 이용에 관한 동의 후 36개월간
                    보유 <br />
                    <br />
                    귀하는 개인정보 수집·이용에 동의하지 않으실 수 있습니다.<br />
                    그러나 동의하지 않을 경우 고객문의 등록이 불가합니다. <br />
                    <br />
                    ※ CJ올리브네트웍스는 이용자가 만 14세 미만일 경우 개인정보를
                    수집하지 않습니다.
                  </div>

                  <p class="messg agreemsg" style="display: none">
                    개인정보 수집 및 이용에 동의해 주세요.
                  </p>
                </div>
              </div>

              <div class="input_wrapper">
                <input type="checkbox" id="formChkGlobal" />
                <label for="formChkGlobal"
                  >개인정보 수집 및 이용에 동의합니다.
                </label>
              </div>

              <div class="btn_area center">
                <a href="#self" class="common-btn" id="sendBtn_pop"
                  ><span>등록하기</span></a
                >
              </div>
            </div>
            <button
              type="button"
              class="icon pop-close"
              onclick="modalPop.close(this);"
            >
              닫기
            </button>
          </div>
          <!-- // .layer_inner -->
        </div>
        <!-- // .layer_outer -->
      </div>
      <!-- // .layer_wrapper -->
      <script>
        var filePath;
        var savedFileName;
        var orgFileName;
        var fileType;
        var emailTo = "";
        if (business_num > "") {
          $('select[name="business"]')
            .find("option[value=" + business_num + "]")
            .prop("selected", true);
          businessType(business_num);
        }
        if (businessDetail_num > "") {
          $('select[name="businessDetail"]')
            .find("option[value=" + businessDetail_num + "]")
            .prop("selected", true);
        }
        /* 	$.ajax({
		url : "/business/contact_us_info",
		async: false,
		type : "post",
		datatype : "json",
		data : {busgroup : business_num,
				dptgroup : businessDetail_num},
		success : function(data){
				$("#getEmail").text(data[0].email);
				$("#getTel").text(data[0].tel);
				telInfo = data[0].tel;
		}
	}) */
        //파일 저장
        function fileAttach() {
          var formData = new FormData();
          formData.append("file", file);
          /*
           * 파일업로드 multiple ajax처리
           */
          /* 		$.ajax({
			type: "POST",
			enctype: "multipart/form-data",
			url: "/file/upload",
			data: formData,
			processData: false,
			contentType: false,
			async: false,
			success: function(data) {
				if (data.result == "OK") {
					filePath = data.filePath;
					savedFileName = data.savedFileName;
					orgFileName = data.orgFileName;
					fileType = data.fileType;
				} else
					alert("파일 업로드 오류");
			},
			error: function(xhr, status, error) {
				alert("파일 업로드 오류");
			}
		}); */
        }

        $("#sendBtn_pop").click(function () {
          var validationChk = validation();
          if (validationChk != false) {
            var busgroup = $("#business").val();
            var dptgroup = $("#businessDetail").val();
            $.ajax({
              url: "/business/contact_us",
              async: false,
              type: "post",
              datatype: "json",
              data: { busgroup: busgroup, dptgroup: dptgroup },
              success: function (data) {
                emailTo = data[0];
                sendMail();
              },
            });
          }
        });

        function sendMail() {
          //메일 발송
          var result = confirm("문의내용을 등록하시겠습니까?");
          var category = $("#category").val();
          if (category == "기타문의") {
            var business = " ";
            var businessDetail = "-";
          } else {
            var business = $("#business option:selected").text();
            if ($("#business option:selected").val() >= 8) {
              var businessDetail = $("#businessDetail option:selected").text();
            } else {
              var businessDetail =
                " - " + $("#businessDetail option:selected").text();
            }
          }
          var name = $("#name").val();
          var email = $("#email").val();
          var phone = $("#phone").val();
          var company = $("#company").val();
          var title = $("#title").val();
          var content = $("textarea#content").val();
          var fileChk = $("#file").val();

          /* 	if(result) {
		if(fileChk != null){
			fileAttach();
		}
		$.ajax({
			url : "/util/sendmail",
			type : "post",
			async: false,
			data : {category : category,
					business : business,
					businessDetail : businessDetail,
					name : name,
					email : email,
					emailTo : emailTo,
					phone : phone,
					company : company,
					title : title,
					content : content,
					filePath : filePath,
					savedFileName : savedFileName,
					orgFileName : orgFileName,
					fileType : fileType					
			},
			success : function(){
				alert("문의 등록이 완료되었습니다. 담당자 확인 후 답변드리도록 하겠습니다.");
				location.reload();
			},
		     error:function(request, status, error) {
        	alert("status : " + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
       		}

		})
	}	 */
        }

        function categoryType(type) {
          $(".categorymsg").css("display", "none");
          $("#category").parent().removeClass("is-error");
          if (type == "기타문의") {
            $("#business").attr("disabled", "");
            $("#businessDetail").attr("disabled", "");
            $("#business").val("");
            //$('#businessDetail').val("");
            $("#businessDetail").empty();
            $("#businessDetail").append(
              "<option value='' >상세항목을 선택해 주세요.</option>'"
            );
          } else {
            if ($("#business").val() >= 8) {
              $("#business").removeAttr("disabled");
            } else {
              $("#business").removeAttr("disabled");
              $("#businessDetail").removeAttr("disabled");
            }
          }
        }

        function businessType(type) {
          $(".businessmsg").css("display", "none");
          $("#business").parent().removeClass("is-error");
          $("#businessDetail").empty();

          if (type == "1") {
            // 스마트제조물류
            $("#businessDetail").append(
              "<option value='1' >AI팩토리 (FactoryOne)</option>"
            );
            $("#businessDetail").append(
              "<option value='2' >AI로지스틱스</option>"
            );
          } else if (type == "2") {
            // 미디어 컨버전스
            $("#businessDetail").append(
              "<option value='3' >스마트 컬처 스페이스</option>"
            );
            $("#businessDetail").append("<option value='4' >NFT</option>");
            $("#businessDetail").append(
              "<option value='5' >방송 송출 서비스</option>"
            );
            $("#businessDetail").append(
              "<option value='6' >인코딩 하우스</option>"
            );
            $("#businessDetail").append(
              "<option value='7' >공간 음악 서비스</option>"
            );
            $("#businessDetail").append(
              "<option value='8' >방송•미디어 통합 인프라 솔루션</option>"
            );
          } else if (type == "3") {
            // 디지털 마케팅
            $("#businessDetail").append(
              "<option value='9' >CJ ONE AD</option>"
            );
            $("#businessDetail").append(
              "<option value='10' >CJ기프트카드</option>"
            );
            $("#businessDetail").append(
              "<option value='11' >데이터 마케팅 솔루션 (Amplitude & Braze)</option>"
            );
            $("#businessDetail").append(
              "<option value='12' >데이터 바우처</option>"
            );
            $("#businessDetail").append(
              "<option value='13' >빅데이터 통합 마케팅</option>"
            );
            $("#businessDetail").append(
              "<option value='14' >통합 커뮤니케이션 솔루션 (mplace)</option>"
            );
          } else if (type == "4") {
            // 이커머스리테일
            $("#businessDetail").append(
              "<option value='15' >매장 통합관리 솔루션 (OneOrder)</option>"
            );
            $("#businessDetail").append(
              "<option value='16' >티켓 통합 솔루션 (OneOrder Ticket)</option>"
            );
            $("#businessDetail").append(
              "<option value='17' >결제 솔루션 (One PG)</option>"
            );
          } else if (type == "5") {
            // 스마트 비즈니스
            $("#businessDetail").append(
              "<option value='18' >시스템 통합</option>"
            );
            $("#businessDetail").append(
              "<option value='19' >시스템 운영</option>"
            );
            $("#businessDetail").append(
              "<option value='20' >웹앱 서비스</option>"
            );
            $("#businessDetail").append(
              "<option value='21' >스마트 인사관리 플랫폼 (WORKSCAN)</option>"
            );
            $("#businessDetail").append(
              "<option value='22' >이러닝 서비스</option>"
            );
          } else if (type == "6") {
            // 클라우드인프라
            $("#businessDetail").append(
              "<option value='23' >AI 통합 인프라 솔루션</option>"
            );
            $("#businessDetail").append(
              "<option value='24' >IT 인프라 서비스</option>"
            );
            $("#businessDetail").append(
              "<option value='25' >Hybrid/Multi 클라우드 서비스</option>"
            );
          } else if (type == "7") {
            // 정보보호
            $("#businessDetail").append(
              "<option value='26' >퍼블릭 클라우드 보안</option>"
            );
            $("#businessDetail").append(
              "<option value='27' >보안 취약점 진단 & 모의해킹</option>"
            );
            $("#businessDetail").append(
              "<option value='28' >산업제어시스템(OT/ICS) 보안</option>"
            );
          } else {
            $("#businessDetail").append(
              "<option value='' >상세항목을 선택해 주세요.</option>'"
            );
          }
          if (type >= 8) {
            // 기술탭
            $("#businessDetail").attr("disabled", "");
            $("#businessDetail").text("");
          } else {
            $("#businessDetail").removeAttr("disabled");
          }
        }
        function businessDType() {
          //$('#businessDetail').empty();
          if ($("#business").val() == "") {
            alert("서비스 또는 기술을 선택해주세요.");
            $('select[name="businessDetail"]')
              .find('option[value=""]')
              .prop("selected", true);
            false;
          }

          $("#businessDetail").parent().removeClass("is-error");
          $('select[name="businessDetail"]')
            .find("option[value=" + data_businessdetail + "]")
            .prop("selected", true);
        }
        $("#name").on("propertychange change keyup paste input", function () {
          $(".namemsg").css("display", "none");
          $("#name").parent().removeClass("is-error");
        });
        $("#email").on("propertychange change keyup paste input", function () {
          $(".emailmsg1").css("display", "none");
          $(".emailmsg2").css("display", "none");
          $("#email").parent().removeClass("is-error");
        });
        $("#phone").on("propertychange change keyup paste input", function () {
          $(".phonemsg").css("display", "none");
          $("#phone").parent().removeClass("is-error");
        });
        $("#company").on(
          "propertychange change keyup paste input",
          function () {
            $(".companymsg").css("display", "none");
            $("#company").parent().removeClass("is-error");
          }
        );
        $("#title").on("propertychange change keyup paste input", function () {
          $(".titlemsg").css("display", "none");
          $("#title").parent().removeClass("is-error");
        });
        $("#content").on(
          "propertychange change keyup paste input",
          function () {
            $(".contentmsg").css("display", "none");
            $("#content").parent().removeClass("is-error");
          }
        );
        if ($("#formChkGlobal").is(":checked")) {
          $(".agreemsg").css("display", "none");
          $("#formChkGlobal").parent().removeClass("is-error");
        }

        function validation() {
          var email = $("#email").val();
          var businessChk = $("#business").val();
          if ($("#category").val() == "") {
            $("#category").parent().addClass("is-error");
            $(".categorymsg").css("display", "");
            setTimeout(function () {
              $("#category").focus();
            }, 0);
            return false;
          }
          if ($("#category").val() != "기타문의") {
            if ($("#business").val() == "") {
              $("#business").parent().addClass("is-error");
              $(".businessmsg").css("display", "");
              setTimeout(function () {
                $("#business").focus();
              }, 0);
              return false;
            }
            if (businessChk < 8) {
              if ($("#businessDetail").val() == "") {
                $("#businessDetail").parent().addClass("is-error");
                $(".businessDetailmsg").css("display", "");
                setTimeout(function () {
                  $("#businessDetail").focus();
                }, 0);
                return false;
              }
            }
          }
          if ($("#name").val() == "") {
            $("#name").parent().addClass("is-error");
            $(".namemsg").css("display", "");
            $("#name").focus();
            return false;
          }
          if ($("#email").val() == "") {
            $("#email").parent().addClass("is-error");
            $(".emailmsg1").css("display", "");
            $("#email").focus();
            return false;
          }
          if (!email_check(email)) {
            $("#email").parent().addClass("is-error");
            $(".emailmsg2").css("display", "");
            $("#email").focus();
            return false;
          }
          if ($("#phone").val() == "") {
            $("#phone").parent().addClass("is-error");
            $(".phonemsg").css("display", "");
            $("#phone").focus();
            return false;
          }
          if ($("#company").val() == "") {
            $("#company").parent().addClass("is-error");
            $(".companymsg").css("display", "");
            $("#company").focus();
            return false;
          }
          if ($("#title").val() == "") {
            $("#title").parent().addClass("is-error");
            $(".titlemsg").css("display", "");
            $("#title").focus();
            return false;
          }
          if ($("#content").val() == "") {
            $("#content").parent().addClass("is-error");
            $(".contentmsg").css("display", "");
            $("#content").focus();
            return false;
          }
          if ($("#formChkGlobal").is(":checked")) {
            $(".agreemsg").css("display", "none");
          } else {
            alert("개인정보 수집 및 이용에 동의해 주세요.");
            $("#agreeChk").addClass("is-error");
            $(".agreemsg").css("display", "");
            $("#formChkGlobal").focus();
            return false;
          }
        }

        function openPopSet(data) {
          if (business_num > "") {
            $('select[name="business"]')
              .find("option[value=" + business_num + "]")
              .prop("selected", true);
            businessType(business_num);
          }
          if (businessDetail_num > "") {
            $('select[name="businessDetail"]')
              .find("option[value=" + businessDetail_num + "]")
              .prop("selected", true);
          }
          modalPop.open("#pop_customer");
        }

        function email_check(email) {
          var regex =
            /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
          return email != "" && email != "undefined" && regex.test(email);
        }
      </script>

      <!-- 공통 footer -->
      <div>
        <footer id="footer">
          <button type="button" class="btn-scroll-top">
            <span class="blind">Top</span>
          </button>
          <div class="inner">
            <div class="footer-menu">
              <ul>
                <li class="point">
                  <a href="/util/privacy_statement">개인정보처리방침</a>
                </li>
                <li>
                  <a
                    href="https://ethics.cj.net/whistles/regist?target=tab01!gvnfAnonymous&amp;locale=ko&amp;cpc=E10BU"
                    target="_blank"
                    title="새창으로 보기"
                    >온라인제보<span class="outlink"></span
                  ></a>
                </li>
                <li><a href="/util/legal_notice">법적고지</a></li>
                <li><a href="/util/email_reject">이메일 무단수집거부</a></li>
              </ul>
              <ul>
                <li>
                  <a href="/util/billing_agreement">통신과금서비스 이용약관</a>
                </li>
                <li><a href="/util/eft_agreement">전자금융거래 이용약관</a></li>
                <li>
                  <a href="/util/sugarpay_agreement"
                    >슈가페이 서비스 이용약관</a
                  >
                </li>
                <li><a href="/util/pg_faq">결제대행서비스 FAQ</a></li>
                <li><a href="/util/sitemap">사이트맵</a></li>
              </ul>
            </div>

            <div class="footer-policy">
              <a
                href="https://www.youtube.com/channel/UCz-j1tzeMCqvOX0YNkOXIAw"
                class="common-btn is-white2 btn-youtube"
                target="_blank"
                title="새 창으로 보기"
              >
                <span>유튜브</span><i class="icon"></i>
              </a>

              <div class="select_policy">
                <h2>
                  <a href="#cjWebSite">CJ그룹 계열사 바로가기</a>
                </h2>
                <div id="cjWebSite" class="companyGroup">
                  <ul>
                    <li>
                      <p class="title">CJ그룹</p>
                      <ul>
                        <li class="pc_show">
                          <a
                            href="http://www.cj.net"
                            target="_blank"
                            title="새창으로 보기"
                            >CJ주식회사</a
                          >
                        </li>
                        <li class="mo_show">
                          <a
                            href="http://m.cj.net/index.asp"
                            target="_blank"
                            title="새창으로 보기"
                            >CJ주식회사</a
                          >
                        </li>
                      </ul>
                    </li>
                    <li>
                      <p class="title">식품 &amp; 식품서비스</p>
                      <ul>
                        <li class="pc_show">
                          <a
                            href="https://www.cj.co.kr/kr/index"
                            target="_blank"
                            title="새창으로 보기"
                            >CJ제일제당</a
                          >
                        </li>
                        <li class="mo_show">
                          <a
                            href="https://m.cj.co.kr/kr/index"
                            target="_blank"
                            title="새창으로 보기"
                            >CJ제일제당</a
                          >
                        </li>

                        <li class="pc_show">
                          <a
                            href="https://www.cjfoodville.co.kr/main.asp"
                            target="_blank"
                            title="새창으로 보기"
                            >CJ푸드빌</a
                          >
                        </li>
                        <li class="mo_show">
                          <a
                            href="http://m.cjfoodville.co.kr/"
                            target="_blank"
                            title="새창으로 보기"
                            >CJ푸드빌</a
                          >
                        </li>

                        <li class="pc_show">
                          <a
                            href="http://www.cjfreshway.com/index.jsp"
                            target="_blank"
                            title="새창으로 보기"
                            >CJ프레시웨이</a
                          >
                        </li>
                        <li class="mo_show">
                          <a
                            href="http://m.cjfreshway.com/index.jsp"
                            target="_blank"
                            title="새창으로 보기"
                            >CJ프레시웨이</a
                          >
                        </li>
                      </ul>
                    </li>
                    <li>
                      <p class="title">생명공학</p>
                      <ul>
                        <li class="pc_show">
                          <a
                            href="https://www.cj.co.kr/kr/about/business/bio"
                            target="_blank"
                            title="새창으로 보기"
                            >CJ제일제당 (바이오)</a
                          >
                        </li>
                        <li class="mo_show">
                          <a
                            href="https://m.cj.co.kr/kr/about/business/bio"
                            target="_blank"
                            title="새창으로 보기"
                            >CJ제일제당 (바이오)</a
                          >
                        </li>

                        <li class="pc_show">
                          <a
                            href="https://www.cj.co.kr/kr/about/business/bio"
                            target="_blank"
                            title="새창으로 보기"
                            >CJ Feed&amp;Care</a
                          >
                        </li>
                        <li class="mo_show">
                          <a
                            href="https://m.cj.co.kr/kr/about/business/bio"
                            target="_blank"
                            title="새창으로 보기"
                            >CJ Feed&amp;Care</a
                          >
                        </li>
                      </ul>
                    </li>
                    <li>
                      <p class="title">물류 &amp; 신유통</p>
                      <ul>
                        <li>
                          <a
                            href="https://www.cjlogistics.com/ko/main"
                            target="_blank"
                            title="새 창으로 보기"
                            >CJ대한통운</a
                          >
                        </li>
                        <li>
                          <a
                            href="http://www.cjenc.co.kr/kr/Default.asp"
                            target="_blank"
                            title="새 창으로 보기"
                            >CJ대한통운 (건설)</a
                          >
                        </li>

                        <li class="pc_show">
                          <a
                            href="https://www.oliveyoung.co.kr/store/company/brandStory.do"
                            target="_blank"
                            title="새 창으로 보기"
                            >CJ올리브영</a
                          >
                        </li>
                        <li class="mo_show">
                          <a
                            href="https://m.oliveyoung.co.kr/"
                            target="_blank"
                            title="새 창으로 보기"
                            >CJ올리브영</a
                          >
                        </li>

                        <li class="pc_show">
                          <a
                            href="https://www.cjolivenetworks.co.kr/"
                            target="_blank"
                            title="새 창으로 보기"
                            >CJ올리브네트웍스</a
                          >
                        </li>
                        <li class="mo_show">
                          <a
                            href="https://m.cjolivenetworks.co.kr/"
                            target="_blank"
                            title="새 창으로 보기"
                            >CJ올리브네트웍스</a
                          >
                        </li>

                        <li class="pc_show">
                          <a
                            href="https://company.cjonstyle.com/index.asp"
                            target="_blank"
                            title="새 창으로 보기"
                            >CJ ENM 커머스부문</a
                          >
                        </li>
                        <li class="mo_show">
                          <a
                            href="https://company.cjonstyle.com/mobile/index.asp"
                            target="_blank"
                            title="새 창으로 보기"
                            >CJ ENM 커머스부문</a
                          >
                        </li>
                      </ul>
                    </li>
                    <li>
                      <p class="title">엔터테인먼트 &amp; 미디어</p>
                      <ul>
                        <li>
                          <a
                            href="https://www.cjenm.com/ko/"
                            target="_blank"
                            title="새 창으로 보기"
                            >CJ ENM 엔터테인먼트부문</a
                          >
                        </li>

                        <li class="pc_show">
                          <a
                            href="http://corp.cgv.co.kr/"
                            target="_blank"
                            title="새 창으로 보기"
                            >CJ CGV</a
                          >
                        </li>
                        <li class="mo_show">
                          <a
                            href="http://m.cgv.co.kr/"
                            target="_blank"
                            title="새 창으로 보기"
                            >CJ CGV</a
                          >
                        </li>
                      </ul>
                    </li>
                  </ul>
                </div>
              </div>

              <div class="select_policy">
                <h2>
                  <a href="#familySite">Family Site</a>
                </h2>
                <div id="familySite" class="companyGroup">
                  <ul>
                    <li>
                      <a
                        href="https://www.cjone.com"
                        target="_blank"
                        title="새 창으로 보기"
                        >CJ ONE</a
                      >
                    </li>
                    <li>
                      <a
                        href="https://www.youtube.com/user/CJONEcard"
                        target="_blank"
                        title="새 창으로 보기"
                        >원스터와 아이들</a
                      >
                    </li>
                    <li>
                      <a
                        href="http://www.elissone.com"
                        target="_blank"
                        title="새 창으로 보기"
                        >ELiSSOne</a
                      >
                    </li>
                    <li>
                      <a
                        href="https://www.cjmplace.com"
                        target="_blank"
                        title="새 창으로 보기"
                        >mplace</a
                      >
                    </li>
                    <li>
                      <a
                        href="http://www.cmpcollab.com/"
                        target="_blank"
                        title="새 창으로 보기"
                        >CollaB</a
                      >
                    </li>
                    <li>
                      <a
                        href="https://maxonomy.net/"
                        target="_blank"
                        title="새 창으로 보기"
                        >Maxonomy</a
                      >
                    </li>
                    <li>
                      <a
                        href="http://www.all-dt4u.com/"
                        target="_blank"
                        title="새 창으로 보기"
                        >GridGain</a
                      >
                    </li>
                    <li>
                      <a
                        href="https://www.workscan.net/"
                        target="_blank"
                        title="새 창으로 보기"
                        >WORKSCAN</a
                      >
                    </li>
                    <li>
                      <a
                        href="https://www.youtube.com/channel/UCVOdl1J_3KqTMhU5D90ulEQ"
                        target="_blank"
                        title="새 창으로 보기"
                        >AI연구소 유튜브</a
                      >
                    </li>
                    <li>
                      <a
                        href="https://devinn.dev/"
                        target="_blank"
                        title="새 창으로 보기"
                        >Dev.Inn 기술블로그</a
                      >
                    </li>
                    <li>
                      <a
                        href="https://aicenter.cj.net/"
                        target="_blank"
                        title="새 창으로 보기"
                        >CJ AI Center</a
                      >
                    </li>
                    <li>
                      <a
                        href="https://cafe.naver.com/cjunit"
                        target="_blank"
                        title="새 창으로 보기"
                        >SW창의캠프 네이버카페</a
                      >
                    </li>
                    <li>
                      <a
                        href="https://www.instagram.com/cjsw.unit/"
                        target="_blank"
                        title="새 창으로 보기"
                        >SW창의캠프 인스타그램</a
                      >
                    </li>
                    <li>
                      <a
                        href="https://www.hubpot.co.kr/"
                        target="_blank"
                        title="새 창으로 보기"
                        >허브팟</a
                      >
                    </li>
                    <li>
                      <a
                        href="http://www.diware.co.kr/"
                        target="_blank"
                        title="새 창으로 보기"
                        >디아이웨어</a
                      >
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <address>
              <span class="line">씨제이올리브네트웍스(주)</span>
              <span class="line">사업자번호 : 104-81-36565</span
              ><br class="show_1024" />
              <span>대표 : 차인혁</span><br class="hide_1024" />
              <span>주소 : 서울특별시 용산구 한강대로 366 트윈시티 10층</span
              ><br />
              <span class="line">대표전화 : 02-6252-0000</span>
              <span
                >대표이메일 :
                <a href="mailto:cs_ons@cj.net" title="새창열림"
                  >cs_ons@cj.net</a
                >
              </span>
            </address>
            <p class="copyright">© CJ OLIVENETWORKS. All Rights Reserved.</p>
          </div>
        </footer>
      </div>
    </div>

    <div
      style="
        left: -1000px;
        overflow: scroll;
        position: absolute;
        top: -1000px;
        border: none;
        box-sizing: content-box;
        height: 200px;
        margin: 0px;
        padding: 0px;
        width: 200px;
      "
    >
      <div
        style="
          border: none;
          box-sizing: content-box;
          height: 200px;
          margin: 0px;
          padding: 0px;
          width: 200px;
        "
      ></div>
    </div>
  </body>
</html>
