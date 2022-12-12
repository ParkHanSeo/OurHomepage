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
<!-- 	<script type="text/javascript">
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
	</script>     -->
  </head>
  <body>
    <div id="wrap">
	<jsp:include page="/WEB-INF/views/user/common/header.jsp" />
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
					<div
						class="visual-slider swiper-container-initialized swiper-container-horizontal">
						<div class="swiper-wrapper"
							style="transition-duration: 0ms; transform: translate3d(-1687px, 0px, 0px);">
							<div class="swiper-slide swiper-slide-duplicate-next"
								data-swiper-slide-index="0" style="width: 241px">
								<div class="view"
									style="background-image: url(${pageContext.request.contextPath}/resources/user/images/image_8.jpg);"></div>
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
												class="common-btn is-white2"> <span>솔루션 보기</span> <i
												class="icon link-arrow"></i></a>
											<!-- <a href="https://www.cjolivenetworks.co.kr/news/press_release/detail/514?ca=ALL" class="common-btn is-white">
												<span>뉴스 보기</span>
												<i class="icon link-arrow2"></i>
											</a> -->
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide" data-swiper-slide-index="1"
								style="width: 241px">
								<div class="view"
									style="background-image: url(${pageContext.request.contextPath}/resources/user/images/image_9.jpg);"></div>
								<p class="blind">배경이미지 대채텍스트</p>
								<div class="inner">
									<div class="visual_txt_area aos-init aos-animate"
										data-aos="fade-up" data-aos-offset="0" data-aos-duration="400"
										data-aos-delay="300" data-aos-easing="linear">
										<div class="main-banner">
											<h2 class="tit-slide">
												공급망 투명석과 지속가능성의 <br /> 구축을 위한 SCM 기술
											</h2>
											<p class="description">
												SCM을 통한 인공지능, 머신 러님, 예측 분석을 이용하여 <br /> 신속성과 탄력성을 향상시킬 수
												있습니다.
											</p>
										</div>
										<div class="btn-area">
											<a href="https://www.cjolivenetworks.co.kr/tech/ai_audio"
												class="common-btn is-white2"> <span>솔루션 보기</span> <i
												class="icon link-arrow"></i>
											</a>
											<!-- <a href="https://www.cjolivenetworks.co.kr/news/press_release/detail/595?ca=ALL" class="common-btn is-white">
												<span>뉴스 보기</span>
												<i class="icon link-arrow2"></i>
											</a> -->
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide" data-swiper-slide-index="2"
								style="width: 241px">
								<div class="view"
									style="background-image: url(${pageContext.request.contextPath}/resources/user/images/image_11.jpg);"></div>
								<p class="blind">배경이미지 대채텍스트</p>
								<div class="inner">
									<div class="visual_txt_area aos-init aos-animate"
										data-aos="fade-up" data-aos-offset="0" data-aos-duration="400"
										data-aos-delay="300" data-aos-easing="linear">
										<div class="main-banner">
											<h2 class="tit-slide">
												Digital Twin 플랫폼을 통한 <br />'산업현장'의 안전/관리 완전성
											</h2>
											<p class="description">
												다양한 고객의 Needs를 수용할 수 있는 <br />Digital Twin기반의 SMART 관제시스템
												구축하고 있습니다.
											</p>
										</div>
										<div class="btn-area">
											<a
												href="https://www.cjolivenetworks.co.kr/news/press_release/detail/560?ca=ALL"
												class="common-btn is-white2"> <span>솔루션 보기</span> <i
												class="icon link-arrow"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide swiper-slide-prev"
								data-swiper-slide-index="3" style="width: 241px">
								<div class="view"
									style="background-image: url(${pageContext.request.contextPath}/resources/user/images/image_3.jpg);"></div>
								<p class="blind">배경이미지 대채텍스트</p>
								<div class="inner">
									<div class="visual_txt_area aos-init aos-animate"
										data-aos="fade-up" data-aos-offset="0" data-aos-duration="400"
										data-aos-delay="300" data-aos-easing="linear">
										<div class="main-banner">
											<h2 class="tit-slide">
												Vision AI의 딥러닝의 <br /> 빅데이터를 기반의 솔루션
											</h2>
											<p class="description">
												객체인식 및 인공지능, 이미지 분류, 사고예방 등 <br />...
											</p>
										</div>
										<div class="btn-area">
											<a enetworks.co.kr/news/press_release/detail/547?ca=ALL
												" class="common-btn is-white2"> <span>솔루션 보기</span> <i
												class="icon link-arrow"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide swiper-slide-active"
								data-swiper-slide-index="4" style="width: 241px">
								<div class="view"
									style=" background-image: url(${pageContext.request.contextPath}/resources/user/images/image_13.jpg);"></div>
								<p class="blind">배경이미지 대채텍스트</p>
								<div class="inner">
									<div class="visual_txt_area aos-init aos-animate"
										data-aos="fade-up" data-aos-offset="0" data-aos-duration="400"
										data-aos-delay="300" data-aos-easing="linear">
										<div class="main-banner">
											<h2 class="tit-slide">
												Cloud MSP 기술로 <br />시스템 구축
											</h2>
											<p class="description">
												클라우드 전환 관련 컨설팅, 디자인 및 개발 등 <br />제반 시스템의 서비스를 제공합니다.
											</p>
										</div>
										<div class="btn-area">
											<a href="https://www.cjolivenetworks.co.kr/business/nft"
												class="common-btn is-white2"> <span>솔루션 보기</span> <i
												class="icon link-arrow"></i>
											</a>
											<!-- <a href="https://www.cjolivenetworks.co.kr/news/press_release/detail/515?ca=ALL" class="common-btn is-white">
												<span>뉴스 보기</span><i class="icon link-arrow2"></i>
											</a> -->
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
								<svg class="progress" width="64px" height="64px"
									viewBox="0 0 64 64">
                    <circle cx="32" cy="32" r="32" class="top"
										style="stroke-dashoffset: 55.9282px"></circle>
                    <circle cx="32" cy="32" r="32" class="bottom"></circle>
                  </svg>
							</div>
							<div class="fraction swiper-pagination-custom">
								<span class="current-num">5</span> <span class="div">|</span> <span
									class="total-num">5</span>
							</div>
						</div>
					</div>
					<div class="scroll-guide-area">
						<div class="scroll-guide">
							<span class="blind">Scroll Down</span>
						</div>
					</div>
				</div>
				<div class="nft-wrap section">
					<div class="inner_container">
						<a href="/business/nft">
							<h3 class="tit aos-init" data-aos="fade-up" data-aos-offset="0"
								data-aos-duration="250" data-aos-easing="linear">
								고객사의 고객 만족 및 내부 경쟁력 향상
							</h3>
							<p class="description aos-init" data-aos="fade-up"
								data-aos-offset="0" data-aos-duration="250"
								data-aos-easing="linear">
								(주)내담C&C는 축적된 경험 및 Knowhow와 이를 뒷받침 해주는 전문화된 Skill 및 Solution을 기반으로 
								<br />고객사의 고객 만족 및 내부 경쟁력 향상을 이끌어 내어 한단계 업그레이드 시키는 것을 Mission으로 하고 있으며 
								<br />나아가 글로벌 경쟁력을 갖춘 IT Total Service Provider 기업으로의 성장을 비전으로 하고 있습니다.
							</p>
						</a>
						<div class="btn-area aos-init" data-aos="fade-up"
							data-aos-offset="0" data-aos-duration="250"
							data-aos-easing="linear">
							<a href="/business/nft" class="common-btn is-white"><span>기업
									알아보기</span><i class="icon link-arrow2"></i></a>
						</div>
					</div>
				</div>
				<div class="bg-responsive-container">
					<div class="core-wrap section">
						<div class="inner_container">
							<div class="section-title-area">
								<a href="/tech/rnd">
									<h2 class="tit aos-init" data-aos="fade-up" data-aos-offset="0"
										data-aos-duration="250" data-aos-easing="linear">주요 사업</h2>
									<p class="description aos-init" data-aos="fade-up"
										data-aos-offset="0" data-aos-duration="250"
										data-aos-easing="linear">
										(주)내담C&amp;은 친환경, 4차 산업혁명, DT(Digital Transformation), AI,
										Cloud, DT(Digital Twin) 등의 경쟁력이 필요한 시점을 맞이하여, <br />고객의 성공적인
										비즈니스를 위해 최적의 시스템을 제공합니다.
									</p>
								</a>
								<div class="btn-area aos-init" data-aos="fade-up"
									data-aos-offset="0" data-aos-duration="250"
									data-aos-easing="linear">
									<a href="/tech/rnd" class="common-btn is-white"> <span>확인하기</span>
										<i class="icon link-arrow2"></i>
									</a>
								</div>
							</div>
							<ul class="core-list">
								<li class="ai aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
									<div class="bg-text aos-init" data-aos="svg-stroke" data-aos-offset="0">
										<svg class="naedamcnc" height="100%" stroke-miterlimit="10" style="fill-rule:nonzero;clip-rule:evenodd;stroke-linecap:round;stroke-linejoin:round;" version="1.1" viewBox="0 0 3370.82 2384.24" width="100%" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:vectornator="http://vectornator.io" xmlns:xlink="http://www.w3.org/1999/xlink">
					                        <defs>
					                          <linearGradient x1="50%" y1="200%" x2="200%" y2="200%" id="biglinearGradient-1">
					                            <stop stop-color="#97DBF3" offset="0%"></stop>
					                            <stop stop-color="#97D1F3" offset="50%"></stop>
					                          </linearGradient>
					                          <linearGradient x1="0%" y1="100%" x2="82.1663062%" y2="100%" id="biglinearGradient-2">
					                            <stop stop-color="#97D1F3" offset="0.0655594406%"></stop>
					                            <stop stop-color="#97CEF3" offset="100%"></stop>
					                          </linearGradient>
					                          <linearGradient x1="0%" y1="100%" x2="100%" y2="100%" id="biglinearGradient-3">
					                            <stop stop-color="#97CEF3" offset="0.0655594406%"></stop>
					                            <stop stop-color="#97C5F3" offset="100%"></stop>
					                          </linearGradient>
					                          <linearGradient x1="0%" y1="100%" x2="100%" y2="100%" id="biglinearGradient-4">
					                            <stop stop-color="#97C5F3" offset="0.0655594406%"></stop>
					                            <stop stop-color="#97BCF3" offset="100%"></stop>
					                          </linearGradient>
					                          <linearGradient x1="0%" y1="100%" x2="100%" y2="100%" id="biglinearGradient-5">
					                            <stop stop-color="#97BCF3" offset="0.0655594406%"></stop>
					                            <stop stop-color="#97B3F3" offset="99.9399038%"></stop>
					                          </linearGradient>
					                          <linearGradient x1="0%" y1="100%" x2="100%" y2="100%" id="biglinearGradient-6">
					                            <stop stop-color="#97B3F3" offset="0.0655594406%"></stop>
					                            <stop stop-color="#97A9F3" offset="99.9399038%"></stop>
					                          </linearGradient>
					                          <linearGradient x1="0%" y1="100%" x2="100%" y2="100%" id="biglinearGradient-7">
					                            <stop stop-color="#97A9F3" offset="0.0655594406%"></stop>
					                            <stop stop-color="#97A0F3" offset="100%"></stop>
					                          </linearGradient>
					                        </defs>
											<g id="레이어-1" vectornator:layerName="레이어 1">
												<g fill="#000000" opacity="1" stroke="#9bcc6a" stroke-linecap="butt" stroke-linejoin="round" stroke-width="6.88946">
													<path id="bigPath1" stroke="url(#biglinearGradient-1)" d="M759.073 1402.52L588.407 1106.45L588.732 1402.71L507.523 1402.8L507.065 985.717L598.461 985.617L764.877 1276.6L764.558 985.434L845.767 985.345L846.225 1402.43L759.073 1402.52Z"/>
													<path id="bigPath2" stroke="url(#biglinearGradient-2)" d="M1132.34 985.031L1280.5 1401.95L1185.99 1402.05L1159.01 1316.35L1005.37 1316.52L976.6 1402.28L885.487 1402.38L1033.87 985.139L1132.34 985.031ZM1082.36 1080.44L1028.77 1244.62L1134.6 1244.5L1082.36 1080.44Z"/>
													<path id="bigPath3" stroke="url(#biglinearGradient-3)" d="M1639.42 1326.57L1639.5 1401.56L1323.44 1401.9L1322.98 984.822L1628.86 984.486L1628.94 1058.34L1408.23 1058.58L1408.33 1147.15L1610.93 1146.92L1611.01 1219.36L1408.41 1219.58L1408.53 1326.83L1639.42 1326.57Z"/>
													<path id="bigPath4" stroke="url(#biglinearGradient-4)" d="M2009.72 1046.04C2024.27 1066.77 2034.2 1089.21 2039.51 1113.35C2044.81 1137.49 2047.48 1160.5 2047.5 1182.38C2047.56 1237.84 2036.49 1284.82 2014.27 1323.33C1984.14 1375.24 1937.58 1401.23 1874.57 1401.3L1694.89 1401.5L1694.44 984.414L1874.12 984.217C1899.96 984.566 1921.47 987.561 1938.64 993.201C1967.89 1002.79 1991.58 1020.4 2009.72 1046.04ZM1939.03 1090.54C1925.61 1067.92 1899.1 1056.63 1859.48 1056.67L1779.12 1056.76L1779.42 1328.97L1859.78 1328.88C1900.9 1328.83 1929.55 1308.52 1945.73 1267.95C1954.57 1245.68 1958.98 1219.17 1958.94 1188.42C1958.9 1145.98 1952.26 1113.35 1939.03 1090.54Z"/>
													<path id="bigPath5" stroke="url(#biglinearGradient-5)" d="M2318.29 983.73L2466.45 1400.65L2371.95 1400.75L2344.97 1315.05L2191.32 1315.21L2162.56 1400.98L2071.44 1401.08L2219.82 983.838L2318.29 983.73ZM2268.31 1079.14L2214.73 1243.32L2320.56 1243.2L2268.31 1079.14Z"/>
													<path id="bigPath6" stroke="url(#biglinearGradient-6)" d="M2749.06 1400.34L2664.46 1400.43L2585.69 1050.5C2585.7 1058.42 2585.81 1069.69 2586.01 1084.31C2586.22 1098.93 2586.32 1110.3 2586.33 1118.41L2586.64 1400.52L2505.43 1400.61L2504.98 983.525L2631.74 983.386L2707.93 1311.25L2782.84 983.22L2908.19 983.083L2908.65 1400.16L2827.44 1400.25L2827.13 1118.14C2827.12 1110.03 2827.2 1098.67 2827.38 1084.05C2827.55 1069.43 2827.63 1058.16 2827.62 1050.23L2749.06 1400.34Z"/>
												</g>
											</g>
										</svg>
									</div> 
									<a href="/tech/ai_language">
										<h3 class="tit aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">If you with NaedamC&C</h3>
										<p class="description aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
											SCM(Supply Chain Management, 공급망 관리), <br />PLM(Product
											Lifecycle Management), CRM, MES, <br />EIP(Enterprise
											Information Portal) 등 <br />다양한 IT분야에서의 구축 경험을 토대로 고객사를 위한
											다양한 솔루션과 서비스를 제공합니다.
										</p>
										<p class="btn-arrow aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
											<span class="blind">자세히 보기</span>
										</p>
									</a>
								</li>
								<li class="big-data aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
									<div class="bg-text aos-init" data-aos="svg-stroke" data-aos-offset="0">
									<svg height="100%" stroke-miterlimit="10" style="fill-rule:nonzero;clip-rule:evenodd;stroke-linecap:round;stroke-linejoin:round;" version="1.1" viewBox="0 0 3370.82 2384.24" width="100%" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:vectornator="http://vectornator.io" xmlns:xlink="http://www.w3.org/1999/xlink">
				                        <title>컨설팅 사업부</title>
				                        <defs>
				                          <linearGradient x1="50%" y1="200%" x2="200%" y2="200%" id="biglinearGradient-1">
				                            <stop stop-color="#97DBF3" offset="0%"></stop>
				                            <stop stop-color="#97D1F3" offset="50%"></stop>
				                          </linearGradient>
				                          <linearGradient x1="0%" y1="100%" x2="82.1663062%" y2="100%" id="biglinearGradient-2">
				                            <stop stop-color="#97D1F3" offset="0.0655594406%"></stop>
				                            <stop stop-color="#97CEF3" offset="100%"></stop>
				                          </linearGradient>
				                          <linearGradient x1="0%" y1="100%" x2="100%" y2="100%" id="biglinearGradient-3">
				                            <stop stop-color="#97CEF3" offset="0.0655594406%"></stop>
				                            <stop stop-color="#97C5F3" offset="100%"></stop>
				                          </linearGradient>
				                          <linearGradient x1="0%" y1="100%" x2="100%" y2="100%" id="biglinearGradient-4">
				                            <stop stop-color="#97C5F3" offset="0.0655594406%"></stop>
				                            <stop stop-color="#97BCF3" offset="100%"></stop>
				                          </linearGradient>
				                          <linearGradient x1="0%" y1="100%" x2="100%" y2="100%" id="biglinearGradient-5">
				                            <stop stop-color="#97BCF3" offset="0.0655594406%"></stop>
				                            <stop stop-color="#97B3F3" offset="99.9399038%"></stop>
				                          </linearGradient>
				                          <linearGradient x1="0%" y1="100%" x2="100%" y2="100%" id="biglinearGradient-6">
				                            <stop stop-color="#97B3F3" offset="0.0655594406%"></stop>
				                            <stop stop-color="#97A9F3" offset="99.9399038%"></stop>
				                          </linearGradient>
				                          <linearGradient x1="0%" y1="100%" x2="100%" y2="100%" id="biglinearGradient-7">
				                            <stop stop-color="#97A9F3" offset="0.0655594406%"></stop>
				                            <stop stop-color="#97A0F3" offset="100%"></stop>
				                          </linearGradient>
				                        </defs>
										<g id="레이어-1" vectornator:layerName="레이어 1">
											<g fill="#000000" opacity="1" stroke="#9bcc6a" stroke-linecap="butt" stroke-linejoin="round" stroke-width="6.88946">
												<path id="bigPath1" stroke="url(#biglinearGradient-1)" d="M312.92 1315.93C262.78 1315.93 223.361 1299.84 194.665 1267.68C165.969 1235.35 151.62 1191.05 151.62 1134.76C151.62 1073.9 167.939 1026.99 200.578 994.036C228.959 965.34 265.066 950.992 308.899 950.992C367.553 950.992 410.44 970.228 437.56 1008.7C452.539 1030.3 460.58 1051.98 461.684 1073.74L388.839 1073.74C384.109 1057.03 378.038 1044.41 370.628 1035.9C357.383 1020.76 337.753 1013.19 311.737 1013.19C285.248 1013.19 264.356 1023.88 249.062 1045.24C233.768 1066.61 226.121 1096.84 226.121 1135.94C226.121 1175.04 234.201 1204.33 250.363 1223.8C266.524 1243.28 287.061 1253.01 311.974 1253.01C337.517 1253.01 356.989 1244.66 370.391 1227.94C377.802 1218.96 383.951 1205.48 388.839 1187.5L460.974 1187.5C454.667 1225.5 438.545 1256.4 412.608 1280.21C386.671 1304.02 353.441 1315.93 312.92 1315.93Z"/>
												<path id="bigPath1" stroke="url(#biglinearGradient-2)" d="M784.992 987.65C820.153 1019.66 837.733 1067.59 837.733 1131.45C837.733 1194.04 820.153 1241.98 784.992 1275.25C758.661 1302.37 720.583 1315.93 670.758 1315.93C620.933 1315.93 582.855 1302.37 556.524 1275.25C521.205 1241.98 503.546 1194.04 503.546 1131.45C503.546 1067.59 521.205 1019.66 556.524 987.65C582.855 960.531 620.933 946.971 670.758 946.971C720.583 946.971 758.661 960.531 784.992 987.65ZM670.758 1008.7C641.904 1008.7 618.884 1019.34 601.697 1040.63C584.511 1061.91 575.918 1092.19 575.918 1131.45C575.918 1170.71 584.511 1200.98 601.697 1222.27C618.884 1243.55 641.904 1254.2 670.758 1254.2C699.612 1254.2 722.514 1243.55 739.464 1222.27C756.414 1200.98 764.889 1170.71 764.889 1131.45C764.889 1092.35 756.414 1062.11 739.464 1040.75C722.514 1019.38 699.612 1008.7 670.758 1008.7Z"/>
												<path id="bigPath1" stroke="url(#biglinearGradient-3)" d="M1102.39 1306.23L960.009 1058.6L960.009 1306.23L892.131 1306.23L892.131 957.614L968.523 957.614L1107.35 1200.98L1107.35 957.614L1175.23 957.614L1175.23 1306.23L1102.39 1306.23Z"/>
												<path id="bigPath1" stroke="url(#biglinearGradient-4)" d="M1361.36 1093.37L1421.44 1107.8C1447.77 1114.1 1467.64 1122.54 1481.04 1133.1C1501.85 1149.5 1512.26 1173.23 1512.26 1204.29C1512.26 1236.14 1500.08 1262.59 1475.72 1283.64C1451.36 1304.69 1416.94 1315.22 1372.48 1315.22C1327.07 1315.22 1291.36 1304.85 1265.34 1284.11C1239.33 1263.38 1226.32 1234.88 1226.32 1198.62L1295.85 1198.62C1298.06 1214.54 1302.4 1226.45 1308.86 1234.33C1320.69 1248.68 1340.95 1255.85 1369.64 1255.85C1386.83 1255.85 1400.78 1253.96 1411.5 1250.18C1431.84 1242.92 1442.01 1229.44 1442.01 1209.73C1442.01 1198.22 1436.97 1189.31 1426.88 1183.01C1416.79 1176.86 1400.94 1171.42 1379.34 1166.69L1342.44 1158.41C1306.18 1150.21 1281.11 1141.3 1267.23 1131.68C1243.74 1115.6 1231.99 1090.45 1231.99 1056.24C1231.99 1025.02 1243.35 999.082 1266.05 978.427C1288.76 957.771 1322.1 947.444 1366.09 947.444C1402.83 947.444 1434.17 957.18 1460.11 976.653C1486.04 996.125 1499.64 1024.39 1500.91 1061.44L1430.9 1061.44C1429.64 1040.47 1420.49 1025.57 1403.46 1016.74C1392.11 1010.91 1378 1007.99 1361.13 1007.99C1342.37 1007.99 1327.39 1011.77 1316.19 1019.34C1305 1026.91 1299.4 1037.48 1299.4 1051.03C1299.4 1063.49 1304.92 1072.79 1315.95 1078.94C1323.05 1083.04 1338.19 1087.85 1361.36 1093.37Z"/>
												<path id="bigPath1" stroke="url(#biglinearGradient-5)" d="M1829.18 1258.45C1807.74 1296.29 1766.82 1315.22 1706.43 1315.22C1646.04 1315.22 1605.05 1296.29 1583.45 1258.45C1571.94 1237.8 1566.18 1208.94 1566.18 1171.89L1566.18 957.614L1640.21 957.614L1640.21 1171.89C1640.21 1195.86 1643.05 1213.36 1648.72 1224.4C1657.55 1243.95 1676.79 1253.72 1706.43 1253.72C1735.92 1253.72 1755.07 1243.95 1763.9 1224.4C1769.58 1213.36 1772.42 1195.86 1772.42 1171.89L1772.42 957.614L1846.45 957.614L1846.45 1171.89C1846.45 1208.94 1840.69 1237.8 1829.18 1258.45Z"/>
												<path id="bigPath1" stroke="url(#biglinearGradient-1)" d="M1988.82 957.614L1988.82 1243.55L2161.48 1243.55L2161.48 1306.23L1915.98 1306.23L1915.98 957.614L1988.82 957.614Z"/>
												<path id="bigPath1" stroke="url(#biglinearGradient-1)" d="M2147.05 957.614L2429.44 957.614L2429.44 1019.34L2325.14 1019.34L2325.14 1306.23L2251.82 1306.23L2251.82 1019.34L2147.05 1019.34L2147.05 957.614Z"/>
												<path id="bigPath1" stroke="url(#biglinearGradient-1)" d="M2466.34 957.614L2538.71 957.614L2538.71 1306.23L2466.34 1306.23L2466.34 957.614Z"/>
												<path id="bigPath1" stroke="url(#biglinearGradient-1)" d="M2815.66 1306.23L2673.28 1058.6L2673.28 1306.23L2605.4 1306.23L2605.4 957.614L2681.8 957.614L2820.63 1200.98L2820.63 957.614L2888.5 957.614L2888.5 1306.23L2815.66 1306.23Z"/>
												<path id="bigPath1" stroke="url(#biglinearGradient-1)" d="M3110.35 1008.7C3082.28 1008.7 3059.22 1019.3 3041.17 1040.51C3023.12 1061.72 3014.09 1093.61 3014.09 1136.18C3014.09 1179.07 3023.87 1209.42 3043.42 1227.23C3062.97 1245.05 3085.2 1253.96 3110.11 1253.96C3134.55 1253.96 3154.58 1246.9 3170.19 1232.79C3185.8 1218.68 3195.41 1200.19 3199.04 1177.33L3118.39 1177.33L3118.39 1119.15L3263.61 1119.15L3263.61 1306.23L3215.36 1306.23L3208.03 1262.71C3194 1279.27 3181.38 1290.93 3170.19 1297.71C3150.95 1309.54 3127.3 1315.45 3099.23 1315.45C3053.04 1315.45 3015.19 1299.45 2985.71 1267.44C2954.96 1235.28 2939.59 1191.28 2939.59 1135.47C2939.59 1079.02 2955.12 1033.77 2986.18 999.712C3017.24 965.655 3058.32 948.626 3109.4 948.626C3153.71 948.626 3189.3 959.861 3216.19 982.329C3243.07 1004.8 3258.48 1032.82 3262.43 1066.41L3190.76 1066.41C3185.24 1042.6 3171.76 1025.96 3150.32 1016.5C3138.34 1011.3 3125.01 1008.7 3110.35 1008.7Z"/>
											</g>
										</g>
									</svg>		                      
									</div> <a href="/business/big_data">
										<h3 class="tit aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">컨설팅 사업부</h3>
										<p class="description aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
											빅데이터 분석 역량과 솔루션 경쟁력을 더해<br /> 데이터 생태계를 강화하는데 앞장섭니다.
										</p>
										<p class="btn-arrow aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
											<span class="blind">자세히 보기</span>
										</p>
								</a>
								</li>
								<li class="blockchain aos-init" data-aos="fade-up"
									data-aos-offset="0" data-aos-duration="250"
									data-aos-easing="linear">
									<div class="bg-text aos-init" data-aos="svg-stroke"
										data-aos-offset="0">
										<svg xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink" width="1506px"
											height="244px" viewBox="0 0 1506 244" version="1.1"
											class="img-svg replaced-svg">
                        <title>Blockchain</title>
                        <defs>
                          <linearGradient x1="0%" y1="50%" x2="100%"
												y2="50%" id="blocklinearGradient-1">
                            <stop stop-color="#97A0F3" offset="0%"></stop>
                            <stop stop-color="#979AF3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient x1="0%" y1="50%" x2="100%"
												y2="50%" id="blocklinearGradient-2">
                            <stop stop-color="#979AF3" offset="0%"></stop>
                            <stop stop-color="#9797F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient x1="0%" y1="50%" x2="100%"
												y2="50%" id="blocklinearGradient-3">
                            <stop stop-color="#9797F3" offset="0%"></stop>
                            <stop stop-color="#9D97F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient x1="0%" y1="50%" x2="100%"
												y2="50%" id="blocklinearGradient-4">
                            <stop stop-color="#9D97F3" offset="0%"></stop>
                            <stop stop-color="#A397F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient x1="0%" y1="50%" x2="100%"
												y2="50%" id="blocklinearGradient-5">
                            <stop stop-color="#A397F3" offset="0%"></stop>
                            <stop stop-color="#A997F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient x1="0%" y1="50%" x2="100%"
												y2="50%" id="blocklinearGradient-6">
                            <stop stop-color="#A997F3" offset="0%"></stop>
                            <stop stop-color="#B097F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient x1="0%" y1="50%" x2="100%"
												y2="50%" id="blocklinearGradient-7">
                            <stop stop-color="#B097F3" offset="0%"></stop>
                            <stop stop-color="#B697F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient x1="0%" y1="50%" x2="100%"
												y2="50%" id="blocklinearGradient-8">
                            <stop stop-color="#B697F3" offset="0%"></stop>
                            <stop stop-color="#BC97F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient x1="0%" y1="50%" x2="100%"
												y2="50%" id="blocklinearGradient-9">
                            <stop stop-color="#BC97F3" offset="0%"></stop>
                            <stop stop-color="#BF97F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient x1="0%" y1="50%" x2="100%"
												y2="50%" id="blocklinearGradient-10">
                            <stop stop-color="#BF97F3" offset="0%"></stop>
                            <stop stop-color="#C597F3" offset="100%"></stop>
                          </linearGradient>
                        </defs>
                        <g id="Img-/-main-/-core-bg-text_03_PC"
												stroke="none" stroke-width="1" fill="none"
												fill-rule="evenodd" opacity="0.5">
                          <g id="Blockchain" fill-rule="nonzero">
                            <path
												d="M75.5438146,2.67264628 C84.8707319,2.67264628 94.1976791,3.78751294 103.524611,6.01763267 C112.870008,8.25216727 121.33237,11.8176097 128.912439,16.7122495 C136.508171,21.6170028 142.699037,27.8547205 147.485371,35.4250723 C152.279421,43.0076298 154.683687,52.1372072 154.683687,62.8183963 C154.683687,78.612747 151.122812,90.8211963 144.043868,99.4620603 C137.409074,107.560776 128.763892,113.460129 118.107226,117.154614 C123.959854,117.958768 129.608152,119.684335 135.051996,122.331763 C141.195018,125.319214 146.609139,129.267 151.294486,134.174945 C155.978867,139.081878 159.726983,144.788497 162.537646,151.295596 C165.349895,157.806367 166.758313,165.010575 166.758313,172.909222 C166.758313,183.56885 164.725871,193.001312 160.669237,201.20869 C156.611354,209.418597 150.940978,216.402589 143.657557,222.160218 C136.385112,227.909171 127.814823,232.222696 117.944818,235.097247 C108.415898,237.872461 97.9649611,239.306175 86.5916099,239.395784 L85.4512001,239.400265 L-0.5,239.400265 L-0.5,18.4013484 C-0.5,13.8153957 0.94648128,10.0529903 3.82183202,7.10651099 C6.61415244,4.24511593 9.75874962,2.77582033 13.2475395,2.67789197 L13.6226551,2.67264628 L75.5438146,2.67264628 Z M89.4760754,129.626704 L25.5780696,129.626704 L25.5780696,222.527322 L25.8897647,222.27365 C27.4790894,221.020917 29.531283,220.002775 32.0520784,219.227829 C35.2006094,218.259904 38.1394306,217.778064 40.8679653,217.778064 L40.8679653,217.778064 L87.9280465,217.778064 L88.8219834,217.772603 C95.6591504,217.688863 102.120277,216.642084 108.2051,214.630683 C114.545618,212.534758 120.068901,209.654311 124.773302,205.98633 C129.463859,202.329143 133.185849,197.88837 135.939013,192.663796 C138.688243,187.446688 140.061032,181.707558 140.061032,175.447339 C140.061032,168.966446 138.735865,162.903394 136.08362,157.258619 C133.42909,151.60898 129.856116,146.743647 125.36378,142.663303 C120.868551,138.580332 115.504126,135.388745 109.272319,133.08561 C103.031643,130.779197 96.432808,129.626704 89.4760754,129.626704 L89.4760754,129.626704 Z M75.8534204,25.246641 L25.5780696,25.246641 L25.5780696,113.515801 L25.8711706,113.223066 C27.4632164,111.682813 29.5168224,110.478638 32.037382,109.617668 C35.1911617,108.540402 38.1349614,108.004503 40.8679653,108.004503 L40.8679653,108.004503 L73.6861798,108.004503 L74.5028189,108.001585 C90.5097843,107.886805 103.354102,104.385789 113.024862,97.4694433 C122.815196,90.4675795 127.6768,79.1152544 127.6768,63.4529256 C127.6768,56.5750143 126.260562,50.736263 123.412439,45.9414558 C120.562777,41.1440588 116.797174,37.2331135 112.115583,34.2086649 C107.413476,31.1709623 101.892816,28.9210348 95.5554735,27.4546224 C89.1933522,25.9824765 82.6259827,25.246641 75.8534204,25.246641 L75.8534204,25.246641 Z"
												id="blockPath1" stroke="url(#blocklinearGradient-1)"></path>
                            <path
												d="M225.041605,2.67264628 L225.041605,229.699591 C225.041605,232.835743 223.987406,235.232778 221.914826,236.909502 C219.869237,238.56439 217.341308,239.400265 214.324613,239.400265 L214.324613,239.400265 L199.892352,239.400265 L199.892352,12.3733205 C199.892352,9.24025261 200.892926,6.8466513 202.85411,5.17190306 C204.796448,3.51324798 207.275284,2.67264628 210.299738,2.67264628 L210.299738,2.67264628 L225.041605,2.67264628 Z"
												id="blockPath2" stroke="url(#blocklinearGradient-2)"></path>
                            <path
												d="M340.101968,60.7320732 C354.219306,60.7320732 366.362693,63.0776045 376.534832,67.7576646 C386.724499,72.4457897 395.041139,78.8935215 401.487461,87.0974838 C407.925734,95.2912006 412.652615,104.973816 415.664147,116.147368 C418.667817,127.291754 420.170658,139.338212 420.170658,152.287021 C420.170658,165.447706 418.667723,177.599904 415.664147,188.74394 C412.652988,199.916111 407.926886,209.650859 401.489387,217.949989 C395.042587,226.261113 386.72523,232.762446 376.534832,237.450907 C366.362693,242.130968 354.219306,244.476499 340.101968,244.476499 C326.396378,244.476499 314.5614,242.130484 304.594349,237.449246 C294.614095,232.761807 286.349993,226.262458 279.800561,217.953047 C273.260408,209.655408 268.379558,199.922386 265.161318,188.752246 C261.949867,177.605671 260.342884,165.450722 260.342884,152.287021 C260.342884,139.33522 261.949759,127.286009 265.161318,116.139061 C268.379951,104.967557 273.261581,95.2866664 279.802513,87.0944315 C286.35145,78.8921716 294.614825,72.446422 304.594349,67.7593259 C314.5614,63.0780881 326.396378,60.7320732 340.101968,60.7320732 Z M340.72118,82.9888033 C331.318379,82.9888033 323.242066,84.7631219 316.495742,88.3244729 C309.756751,91.8819525 304.242735,96.747043 299.954249,102.92037 C295.652657,109.112563 292.479885,116.407616 290.431582,124.803506 C288.376406,133.227572 287.349771,142.388825 287.349771,152.287021 C287.349771,162.397055 288.376489,171.717404 290.431918,180.247817 C292.480191,188.748534 295.652702,196.096074 299.954249,202.288202 C304.241351,208.459538 309.75348,213.270901 316.490321,216.722648 C323.238155,220.180026 331.316222,221.902504 340.72118,221.902504 C349.711708,221.902504 357.478278,220.180821 364.017633,216.725555 C370.551456,213.273213 375.961914,208.460505 380.249688,202.288202 C384.55231,196.094525 387.776952,188.745174 389.928183,180.242305 C392.085958,171.713574 393.163771,162.395051 393.163771,152.287021 C393.163771,142.390841 392.086048,133.231433 389.92855,124.809074 C387.777279,116.411026 384.552374,109.114138 380.249688,102.92037 C375.960492,96.7460211 370.548112,91.8795668 364.012154,88.3214458 C357.474337,84.7623121 349.709547,82.9888033 340.72118,82.9888033 Z"
												id="blockPath3" stroke="url(#blocklinearGradient-3)"></path>
                            <path
												d="M526.244692,60.7321335 C539.970563,60.5190211 552.083003,63.6667341 562.584662,70.1662192 C573.212381,76.7437233 581.443597,85.5587151 587.278404,96.6111058 L587.278404,96.6111058 L574.206807,105.432134 C572.584004,106.501172 571.227785,106.794127 570.139938,106.442098 C569.057059,106.091677 568.181531,105.090822 567.595355,103.332812 C562.906084,96.4567263 557.203491,91.294604 550.483313,87.8513953 C543.737736,84.395173 535.253007,82.8867973 525.026836,83.3059039 C516.854663,83.5152622 509.549693,85.3441089 503.113687,88.7987456 C496.678563,92.2529095 491.265373,97.0159506 486.873206,103.08682 C482.467684,109.17615 479.08889,116.421279 476.73253,124.820064 C474.370368,133.239525 473.190651,142.501067 473.190651,152.604286 C473.190651,174.463035 477.991871,191.497477 487.634315,203.691017 C497.240769,215.839046 510.529889,221.902504 527.490877,221.902504 C538.325131,221.902504 547.221512,219.870427 554.173238,215.784779 C561.087657,211.721057 565.875419,206.673432 568.519968,200.628118 C569.589384,199.146655 570.698694,198.330371 571.878195,198.04259 C573.08073,197.749189 574.37472,197.994178 575.755574,198.824563 L575.755574,198.824563 L588.788196,208.270792 C586.69169,213.313326 583.830267,218.076062 580.202932,222.558407 C576.661065,226.935136 572.390431,230.725287 567.390084,233.927814 C562.399035,237.124385 556.628684,239.682989 550.077791,241.600973 C543.53422,243.516814 536.211836,244.476499 528.117971,244.476437 C514.624738,244.68916 502.793407,242.664003 492.622094,238.409748 C482.432856,234.147996 473.907928,227.967575 467.045905,219.870383 C460.193307,211.784314 454.999726,202.050166 451.469496,190.665496 C447.946925,179.305525 446.183764,166.618661 446.183764,152.604286 C446.183764,139.439094 447.842783,127.282785 451.158203,116.134954 C454.480944,104.962504 459.466933,95.3340967 466.112238,87.2475873 C472.763853,79.1533994 481.129472,72.7619595 491.211044,68.0757493 C501.279922,63.3954392 512.957055,60.9448887 526.244692,60.7321335 Z"
												id="blockPath4" stroke="url(#blocklinearGradient-4)"></path>
                            <path
												d="M647.266511,2.67264628 L647.266511,230.016855 C647.266511,233.15555 646.159138,235.555968 643.975139,237.234487 C641.822786,238.888684 639.347981,239.717529 636.549519,239.717529 L636.549519,239.717529 L620.56923,239.717529 L620.56923,12.3733205 C620.56923,9.24025261 621.569804,6.8466513 623.530987,5.17190306 C625.473325,3.51324798 627.952161,2.67264628 630.976615,2.67264628 L630.976615,2.67264628 L647.266511,2.67264628 Z M757.487109,65.8083072 L689.873335,141.189301 C687.063289,144.683374 683.482719,147.882348 679.129117,150.783523 L679.129117,150.783523 L757.009266,229.959339 C757.924401,230.671415 758.474701,231.53337 758.676101,232.5358 C758.872986,233.515754 758.73199,234.641914 758.224553,235.913 C757.718452,237.180739 756.994985,238.124971 756.068498,238.757908 C755.140477,239.391893 754.003502,239.717529 752.651693,239.717529 L752.651693,239.717529 L733.864075,239.717529 L654.625867,158.200752 L654.625867,149.748904 C654.625867,147.063393 655.404014,144.945405 656.927272,143.379868 L656.927272,143.379868 L719.151216,73.589302 C723.793316,68.3999195 729.491341,65.8083072 736.242586,65.8083072 L736.242586,65.8083072 L757.487109,65.8083072 Z"
												id="blockPath5" stroke="url(#blocklinearGradient-5)"></path>
                            <path
												d="M867.585084,60.7321335 C881.310954,60.5190211 893.423394,63.6667341 903.925053,70.1662192 C914.552773,76.7437233 922.783989,85.5587151 928.618796,96.6111058 L928.618796,96.6111058 L915.547199,105.432134 C913.924396,106.501172 912.568177,106.794127 911.480329,106.442098 C910.39745,106.091677 909.521923,105.090822 908.935746,103.332812 C904.246475,96.4567263 898.543883,91.294604 891.823705,87.8513953 C885.078128,84.395173 876.593398,82.8867973 866.367228,83.3059039 C858.195055,83.5152622 850.890085,85.3441089 844.454079,88.7987456 C838.018954,92.2529095 832.605764,97.0159506 828.213598,103.08682 C823.808076,109.17615 820.429282,116.421279 818.072921,124.820064 C815.71076,133.239525 814.531043,142.501067 814.531043,152.604286 C814.531043,174.463035 819.332263,191.497477 828.974707,203.691017 C838.58116,215.839046 851.870281,221.902504 868.831269,221.902504 C879.665523,221.902504 888.561903,219.870427 895.513629,215.784779 C902.428048,211.721057 907.21581,206.673432 909.860359,200.628118 C910.929775,199.146655 912.039085,198.330371 913.218586,198.04259 C914.421122,197.749189 915.715112,197.994178 917.095966,198.824563 L917.095966,198.824563 L930.128588,208.270792 C928.032082,213.313326 925.170659,218.076062 921.543323,222.558407 C918.001457,226.935136 913.730822,230.725287 908.730476,233.927814 C903.739427,237.124385 897.969076,239.682989 891.418182,241.600973 C884.874612,243.516814 877.552228,244.476499 869.458362,244.476437 C855.96513,244.68916 844.133799,242.664003 833.962486,238.409748 C823.773248,234.147996 815.24832,227.967575 808.386296,219.870383 C801.533698,211.784314 796.340118,202.050166 792.809887,190.665496 C789.287316,179.305525 787.524156,166.618661 787.524156,152.604286 C787.524156,139.439094 789.183175,127.282785 792.498594,116.134954 C795.821336,104.962504 800.807325,95.3340967 807.45263,87.2475873 C814.104245,79.1533994 822.469863,72.7619595 832.551435,68.0757493 C842.620314,63.3954392 854.297447,60.9448887 867.585084,60.7321335 Z"
												id="blockPath6" stroke="url(#blocklinearGradient-6)"></path>
                            <path
												d="M987.678085,2.67264628 L987.678085,77.7673055 C991.591753,72.5883736 996.981263,68.5075542 1003.85293,65.532207 C1011.22752,62.3390999 1021.56052,60.7320732 1034.85738,60.7320732 C1054.52856,60.7320732 1069.26533,65.6377754 1079.09617,75.3919961 C1088.92824,85.1474414 1093.87287,99.7710417 1093.87287,119.2915 L1093.87287,119.2915 L1093.87287,228.430532 C1093.87287,231.751947 1092.78476,234.459828 1090.62559,236.561784 C1088.46467,238.665441 1085.87164,239.717529 1082.84628,239.717529 L1082.84628,239.717529 L1067.4852,239.717529 L1067.4852,119.2915 C1067.4852,106.998739 1064.52183,98.1186562 1058.5167,92.6950705 C1052.50226,87.263078 1043.47174,84.5751264 1031.45171,84.5751264 C1018.17346,84.5751264 1008.05047,87.1702375 1001.10163,92.4060734 C994.173004,97.6266772 989.718822,106.827509 987.678085,119.964579 L987.678085,119.964579 L987.678085,228.430532 C987.678085,231.757419 986.483599,234.471809 984.103789,236.577942 C981.739884,238.669999 978.946562,239.717529 975.722671,239.717529 L975.722671,239.717529 L960.671198,239.717529 L960.671198,13.3251144 C960.671198,10.2280105 961.544974,7.68945433 963.270343,5.70039785 C965.009157,3.69584182 967.501532,2.67264628 970.768978,2.67264628 L970.768978,2.67264628 L987.678085,2.67264628 Z"
												id="blockPath7" stroke="url(#blocklinearGradient-7)"></path>
                            <path
												d="M1193.45295,60.7320732 C1215.67935,60.7320732 1232.33671,64.9599333 1243.44635,73.3652892 C1254.4648,81.7016423 1260.07876,95.7059791 1260.20636,115.428538 L1260.20859,116.118854 L1260.20859,228.113268 C1260.20859,231.437606 1259.06714,234.148784 1256.79767,236.252909 C1254.62765,238.264827 1252.11062,239.311109 1249.24776,239.394806 L1248.87239,239.400265 L1234.13052,239.400265 L1234.13052,220.655214 C1230.62272,227.941051 1224.77529,233.541455 1216.5789,237.448032 C1207.64882,241.704307 1196.85066,244.050561 1184.17482,244.476398 C1173.57556,244.689368 1164.64029,243.45942 1157.36683,240.797498 C1150.05969,238.123246 1144.16476,234.322136 1139.67655,229.40203 C1135.19039,224.484164 1131.90307,218.711482 1129.81644,212.082905 C1127.73945,205.484968 1126.59557,198.142298 1126.38787,190.054348 C1126.3877,181.961165 1127.21875,174.51891 1128.87879,167.714481 C1130.54926,160.867327 1133.57802,154.876712 1137.96287,149.74149 C1142.34303,144.611769 1148.28465,140.439437 1155.79431,137.23301 C1163.27006,134.041061 1172.51003,132.12135 1183.52119,131.482679 C1192.20851,131.058764 1201.30952,131.164589 1210.82421,131.800463 C1219.7448,132.396632 1227.48675,133.73777 1234.05093,135.819992 L1234.74973,136.045923 L1234.74973,117.387912 C1234.74973,105.100593 1231.42941,96.1731044 1224.71503,90.6478719 C1217.97223,85.0992525 1207.54261,82.354274 1193.45295,82.354274 C1184.45292,82.354274 1176.32132,84.1331521 1169.05955,87.6966402 C1161.79245,91.2627505 1155.69841,95.1412942 1150.7801,99.3354863 C1149.52126,100.961538 1148.27581,101.707416 1147.08948,101.707416 C1145.94559,101.707416 1144.79582,101.020815 1143.68585,99.52303 L1143.51093,99.2797782 L1134.00061,86.6105307 C1137.16874,82.4320252 1141.04735,78.7012707 1145.63766,75.4195039 C1150.10782,72.2236425 1155.04559,69.5600438 1160.45139,67.4294564 C1165.84477,65.3037661 1171.39372,63.6563398 1177.09826,62.4872099 C1182.80942,61.3167216 1188.26102,60.7320732 1193.45295,60.7320732 Z M1212.76351,153.419964 C1204.8356,152.786923 1196.23869,152.575955 1186.97279,152.78666 C1173.75715,153.411989 1164.57445,157.017901 1159.48433,163.694427 C1154.38812,170.378939 1152.05784,178.946658 1152.46539,189.387481 C1152.87278,200.241496 1155.49879,208.446631 1160.39017,213.981141 C1165.27076,219.503436 1173.62583,222.219769 1185.4032,222.219769 C1192.34967,222.219769 1198.83679,220.912421 1204.86402,218.29533 C1210.89238,215.677751 1216.05315,212.223688 1220.34464,207.930735 C1224.63618,203.637749 1228.00854,198.821503 1230.46087,193.481392 C1232.90669,188.155461 1234.13052,182.673016 1234.13052,177.033662 L1234.13052,177.033662 L1234.13052,157.411771 L1233.24313,157.137775 C1227.00344,155.250679 1220.1768,154.011913 1212.76351,153.419964 Z"
												id="blockPath8" stroke="url(#blocklinearGradient-8)"></path>
                            <path
												d="M1324.37439,65.8083072 L1324.37439,228.747797 C1324.37439,232.056197 1323.55243,234.695158 1321.94027,236.677612 C1320.30202,238.692134 1317.96021,239.717529 1314.89582,239.717529 L1314.89582,239.717529 L1298.60593,239.717529 L1298.60593,76.4607753 C1298.60593,73.3592887 1299.53401,70.8168181 1301.36991,68.8248331 C1303.21694,66.8207763 1305.65829,65.8083072 1308.70371,65.8083072 L1308.70371,65.8083072 L1324.37439,65.8083072 Z M1313.03819,-0.5 C1318.34546,-0.5 1322.80457,1.51063889 1326.41388,5.53558508 C1330.00571,9.54103227 1331.80493,14.3575293 1331.80493,19.9876716 C1331.80493,25.6216464 1330.00333,30.3865802 1326.40929,34.286171 C1322.80122,38.2009919 1318.34409,40.1580785 1313.03819,40.1580785 C1307.73629,40.1580785 1303.22885,38.2035777 1299.51721,34.291452 C1295.8161,30.390421 1293.96184,25.6235065 1293.96184,19.9876716 C1293.96184,14.355665 1295.81371,9.53717502 1299.51254,5.53024888 C1303.22547,1.5080643 1307.73488,-0.5 1313.03819,-0.5 Z"
												id="blockPath9" stroke="url(#blocklinearGradient-9)"></path>
                            <path
												d="M1448.10372,60.7320732 C1457.87318,60.7320732 1466.39451,62.1203273 1473.66925,64.8892173 C1480.96871,67.6675132 1487.06753,71.6764791 1491.96837,76.9122523 C1496.86716,82.1458457 1500.5163,88.3401514 1502.91364,95.4964619 C1505.30367,102.630964 1506.5,110.350983 1506.5,118.656971 L1506.5,118.656971 L1506.5,228.113268 C1506.5,231.651643 1505.40816,234.46346 1503.25272,236.561784 C1501.0918,238.665441 1498.49876,239.717529 1495.4734,239.717529 L1495.4734,239.717529 L1480.11232,239.717529 L1480.11232,123.098676 C1480.11232,109.314122 1477.19227,99.3704597 1471.27591,93.3077438 C1465.37064,87.256397 1456.60549,84.2578618 1445.00766,84.2578618 C1432.14431,84.2578618 1422.12933,87.1156868 1414.97986,92.872093 C1407.84311,98.6182516 1402.96167,107.450074 1400.30521,119.346557 L1400.30521,119.346557 L1400.30521,228.113268 C1400.30521,231.657574 1399.10644,234.475605 1396.73092,236.577942 C1394.36701,238.669999 1391.57369,239.717529 1388.3498,239.717529 L1388.3498,239.717529 L1373.29832,239.717529 L1373.29832,76.4607753 C1373.29832,72.9147577 1374.16264,70.2713447 1375.83443,68.5029359 C1377.5148,66.7254494 1380.02564,65.8083072 1383.3961,65.8083072 L1383.3961,65.8083072 L1400.30521,65.8083072 L1400.30521,82.6046788 C1404.2089,76.4560078 1409.58073,71.3552512 1416.42409,67.3056933 C1423.8108,62.9346098 1434.36679,60.7320732 1448.10372,60.7320732 Z"
												id="blockPath10" stroke="url(#blocklinearGradient-10)"></path>
                          </g>
                        </g>
                      </svg>
									</div> <a href="/tech/blockchain">
										<h3 class="tit aos-init" data-aos="fade-up"
											data-aos-offset="0" data-aos-duration="250"
											data-aos-easing="linear">
											SI사업부</h3>
										<p class="description aos-init" data-aos="fade-up"
											data-aos-offset="0" data-aos-duration="250"
											data-aos-easing="linear">
											내담씨앤씨는 공공, 금융, 통신, 전자상거래, 제조, 인프라 등 
											<br/>다양한 산업영역의 전문적인 IT 서비스 수행을 통해 축적한 Know How를 기반으로
											<br/>컨설팅, Application 개발/운영 서비스까지 고객사에서 필요로하는 IT영역의 Total Service를 제공하고 있습니다.
										</p>
										<p class="btn-arrow aos-init" data-aos="fade-up"
											data-aos-offset="0" data-aos-duration="250"
											data-aos-easing="linear">
											<span class="blind">자세히 보기</span>
										</p>
								</a>
								</li>
								<li class="cloud">
									<div class="bg-text aos-init" data-aos="svg-stroke"
										data-aos-offset="0">
										<svg xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink" width="794px"
											height="244px" viewBox="0 0 794 244" version="1.1"
											class="img-svg replaced-svg">
                        <title>Cloud</title>
                        <defs>
                          <linearGradient x1="0%" y1="58.8120299%"
												x2="100%" y2="58.8120299%" id="cloudlinearGradient-1">
                            <stop stop-color="#C597F3"
												offset="0.0655594406%"></stop>
                            <stop stop-color="#D497F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient x1="0%" y1="58.8120299%"
												x2="100%" y2="58.8120299%" id="cloudlinearGradient-2">
                            <stop stop-color="#D497F3"
												offset="0.0655594406%"></stop>
                            <stop stop-color="#DA97F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient x1="0%" y1="58.8120299%"
												x2="100%" y2="58.8120299%" id="cloudlinearGradient-3">
                            <stop stop-color="#DA97F3"
												offset="0.0655594406%"></stop>
                            <stop stop-color="#EA97F3" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient x1="0%" y1="58.8120299%"
												x2="100%" y2="58.8120299%" id="cloudlinearGradient-4">
                            <stop stop-color="#EA97F3"
												offset="0.0655594406%"></stop>
                            <stop stop-color="#F397ED" offset="100%"></stop>
                          </linearGradient>
                          <linearGradient x1="0%" y1="58.8120299%" x2="100%" y2="58.8120299%" id="cloudlinearGradient-5">
                            <stop stop-color="#F397ED" offset="0.0655594406%"></stop>
                            <stop stop-color="#F397DE" offset="99.9371722%"></stop>
                          </linearGradient>
                        </defs>
                        <g id="Img-/-main-/-core-bg-text_04_PC"
												stroke="none" stroke-width="1" fill="none"
												fill-rule="evenodd" opacity="0.5">
                          <g id="Cloud" fill-rule="nonzero">
                            <path
												d="M110.308597,-0.460383798 C127.166717,-0.876653158 142.671441,1.98730753 156.823658,8.12715971 C171.101116,14.3213468 184.537444,25.5387383 197.121612,41.7946463 L197.121612,41.7946463 L183.640922,51.1030979 C182.842376,51.6735145 182.056158,52.0092285 181.287074,52.1231721 C180.492109,52.2409502 179.711369,52.1252851 178.945453,51.7717691 C177.533668,51.1201454 176.283306,50.1443909 175.200584,48.8450178 C170.467945,43.2890512 165.582059,38.812066 160.540652,35.4166735 C155.500224,32.0219408 150.25422,29.34696 144.8023,27.3924067 C139.349435,25.4375147 133.587846,24.1517828 127.517709,23.5344517 C121.427202,22.9150492 115.078621,22.7087508 108.46545,22.9153794 C97.1470128,23.1211788 86.5999945,25.6413192 76.8248573,30.477666 C67.044318,35.3166855 58.448455,42.1127092 51.0359334,50.8640122 C43.61538,59.6247978 37.7940939,70.0871035 33.5685866,82.2488889 C29.3383508,94.4242835 27.225636,108.147692 27.225636,123.418232 C27.225636,137.65065 29.3893568,150.645957 33.7208376,162.403383 C38.0478433,174.148663 44.0733284,184.246485 51.8002694,192.695002 C59.5242103,201.14024 68.6385768,207.782957 79.14311,212.623507 C89.6475079,217.463996 101.079002,219.985763 113.444693,220.191928 C119.830877,220.397944 126.26854,219.882702 132.757712,218.646611 C139.2424,217.411375 145.36693,215.455858 151.131119,212.779502 C156.894436,210.103551 162.24608,206.758601 167.186065,202.744676 C172.111414,198.742642 176.113987,194.176777 179.192145,189.045598 C180.404565,186.846537 181.744257,185.500418 183.170797,184.951724 C184.654811,184.380922 186.260411,184.632135 187.984159,185.783203 L187.984159,185.783203 L201.083997,195.049376 C196.458505,204.183419 190.919966,211.814848 184.471741,217.946234 C178.116488,223.989216 171.083934,228.938046 163.3743,232.793044 C155.668724,236.646012 147.702758,239.40535 139.476555,241.071494 C131.259828,242.735719 123.095094,243.567667 114.982387,243.567667 C97.7135443,243.567667 82.0058184,240.496297 67.858142,234.358415 C53.7057221,228.218475 41.5831392,219.788291 31.4892247,209.069509 C21.3976406,198.353202 13.5417322,185.660712 7.92367548,170.990655 C2.30883251,156.32899 -0.5,140.471697 -0.5,123.418232 C-0.5,105.954591 2.15198243,89.7386768 7.45314577,74.7699857 C12.7581252,59.7905192 20.1967679,46.7883685 29.7664144,35.7619555 C39.342369,24.728274 50.9476439,16.0360881 64.5830572,9.68647639 C78.2123034,3.33973648 93.4537437,-0.0441951069 110.308597,-0.460383798 Z"
												id="cloudPath1" stroke="url(#cloudlinearGradient-1)"></path>
                            <path
												d="M251.596673,7.30890767 L251.596673,229.704223 C251.596673,232.781089 250.538016,235.133227 248.454254,236.778379 C246.402586,238.398193 243.867171,239.216778 240.841487,239.216778 L240.841487,239.216778 L226.357143,239.216778 L226.357143,16.8214625 C226.357143,13.7474982 227.362145,11.3988527 229.333911,9.75563754 C231.281995,8.13215834 233.768152,7.30890767 236.801566,7.30890767 L236.801566,7.30890767 L251.596673,7.30890767 Z"
												id="cloudPath2" stroke="url(#cloudlinearGradient-2)"></path>
                            <path
												d="M358.931507,64.1812365 C373.099652,64.1812365 385.286826,66.4784676 395.495606,71.0622159 C405.723364,75.6544856 414.070919,81.9706437 420.541312,90.0068305 C427.00486,98.0345156 431.75019,107.520937 434.773542,118.468071 C437.788923,129.386338 439.297652,141.188366 439.297652,153.874452 C439.297652,166.768096 437.788824,178.673701 434.773542,189.59161 C431.750571,200.537363 427.006032,210.074839 420.543278,218.205782 C414.072394,226.346952 405.724117,232.715635 395.495606,237.308243 C385.286826,241.891991 373.099652,244.189222 358.931507,244.189222 C345.17666,244.189222 333.299068,241.891519 323.296166,237.30664 C313.278583,232.715033 304.98375,226.348326 298.409848,218.208828 C291.8441,210.079426 286.944249,200.543732 283.713416,189.600076 C280.48942,178.679579 278.876125,166.771171 278.876125,153.874452 C278.876125,141.185317 280.489308,129.380483 283.713416,118.459605 C286.944652,107.514585 291.845294,98.0299455 298.41184,90.0037911 C304.985234,81.969267 313.279334,75.6550809 323.296166,71.0638183 C333.299068,66.47894 345.17666,64.1812365 358.931507,64.1812365 Z M359.553033,86.0033459 C350.112974,86.0033459 342.004749,87.7417547 335.231726,91.2310507 C328.467841,94.7156396 322.933224,99.4808078 318.628866,105.52769 C314.312273,111.591758 311.128384,118.735886 309.07294,126.95805 C307.010476,135.208288 305.980235,144.180508 305.980235,153.874452 C305.980235,163.775914 307.010563,172.903996 309.07329,181.258431 C311.128703,189.583243 314.312323,196.77877 318.628866,202.842769 C322.931851,208.887722 328.464608,213.600261 335.226355,216.981293 C342.000873,220.36871 350.110835,222.056335 359.553033,222.056335 C368.579262,222.056335 376.376593,220.369492 382.941884,216.984105 C389.499832,213.602505 394.930511,208.888638 399.234148,202.842769 C403.551815,196.77719 406.787776,189.579813 408.946529,181.252807 C411.111947,172.900089 412.193542,163.773869 412.193542,153.874452 C412.193542,144.182565 411.112041,135.212227 408.946911,126.963731 C406.788117,118.739366 403.551884,111.593365 399.234148,105.52769 C394.929098,99.4798368 389.496524,94.7133232 382.936451,91.228121 C376.372685,87.740957 368.577118,86.0033459 359.553033,86.0033459 Z"
												id="cloudPath3" stroke="url(#cloudlinearGradient-3)"></path>
                            <path
												d="M498.964188,69.1536805 L498.964188,184.330671 C498.964188,197.833858 501.381151,207.371121 506.296217,212.900829 C511.197245,218.414744 519.792812,221.124002 532.026614,221.124002 C544.744298,221.124002 554.981647,218.26608 562.727367,212.520641 C570.449148,206.79296 575.682983,198.199716 578.451859,186.757369 L578.451859,186.757369 L578.451859,80.2201241 C578.451859,76.9592879 579.598139,74.2994109 581.879408,72.2353091 C584.146838,70.1837279 586.899018,69.1536805 590.139335,69.1536805 L590.139335,69.1536805 L604.934442,69.1536805 L604.934442,228.150335 C604.934442,231.607516 604.105666,234.298375 602.487836,236.239862 C600.848661,238.206965 598.399361,239.216778 595.111546,239.216778 L595.111546,239.216778 L578.451859,239.216778 L578.451859,222.74845 C574.502534,228.780501 568.898448,233.785352 561.633582,237.756998 C553.805427,242.036589 543.21398,244.189222 529.851272,244.189222 C509.572831,244.189222 494.857475,239.138286 485.665075,229.109744 C476.473124,219.081692 471.860078,205.50706 471.860078,188.370782 L471.860078,188.370782 L471.860078,80.2201241 C471.860078,76.9568719 473.059466,74.2937431 475.451655,72.2276652 C477.826452,70.1766082 480.525716,69.1536805 483.547554,69.1536805 L483.547554,69.1536805 L498.964188,69.1536805 Z"
												id="cloudPath4" stroke="url(#cloudlinearGradient-4)"></path>
                            <path
												d="M784.366341,7.30890767 C786.983919,7.30890767 789.335305,8.38805648 791.410257,10.5723189 C793.391418,12.6578488 794.412982,14.9457627 794.494673,17.4288135 L794.5,17.7537958 L794.5,239.216778 L777.840313,239.216778 C774.77643,239.216778 772.377811,238.218545 770.62981,236.251952 C768.967445,234.381704 768.09509,232.115247 768.022375,229.44876 L768.017417,229.082668 L768.017417,220.699991 C763.807204,228.905841 757.566593,234.855313 749.298789,238.551681 C740.436866,242.513668 729.85554,244.5 717.55225,244.5 C705.24706,244.5 694.455338,242.305597 685.174862,237.925842 C675.884114,233.541239 668.107334,227.381583 661.843951,219.447593 C655.590504,211.526189 650.898447,202.146456 647.771641,191.306356 C644.65196,180.490954 643.090607,168.531769 643.090607,155.42834 C643.090607,142.537478 644.546893,130.530429 647.457578,119.406936 C650.375487,108.255831 654.910584,98.5648443 661.058877,90.3319998 C667.216572,82.086565 674.835519,75.6156081 683.915486,70.9188537 C692.992613,66.2235683 703.685954,63.8704587 715.998434,63.8704587 C723.71323,63.8704587 730.48935,64.6544783 736.327417,66.2183194 C742.176792,67.7851897 747.294278,69.8758257 751.681191,72.4872058 C756.083848,75.1079574 759.69879,78.0971965 762.528924,81.4515862 C764.634068,83.9466881 766.361424,86.4422982 767.712347,88.9375975 L768.017417,89.5134299 L768.017417,7.30890767 L784.366341,7.30890767 Z M719.41683,86.3141237 C711.224694,86.3141237 704.054751,88.0501176 697.90992,91.5323516 C691.760509,95.017181 686.636415,99.7323427 682.536857,105.67698 C678.423983,111.640927 675.290852,118.891377 673.131694,127.42559 C670.965837,135.986283 669.883953,145.320626 669.883953,155.42834 C669.883953,165.326126 670.96512,174.34779 673.130187,182.492949 C675.289037,190.614718 678.422275,197.60684 682.534529,203.467077 C686.630214,209.303702 691.749263,213.80992 697.892924,216.984294 C704.042611,220.161781 711.218124,221.745557 719.41683,221.745557 C727.205213,221.745557 734.225968,220.159959 740.477576,216.982764 C746.725159,213.807614 751.948003,209.300402 756.147125,203.462325 C760.362372,197.601829 763.598645,190.609404 765.860401,182.487263 C768.128091,174.343816 769.26047,165.324031 769.26047,155.42834 C769.26047,146.353831 768.229714,137.640176 766.167415,129.287472 C764.11025,120.955566 761.026256,113.651389 756.911813,107.376569 C752.808846,101.119252 747.629086,96.0413139 741.372016,92.143285 C735.12835,88.253606 727.80886,86.3141237 719.41683,86.3141237 Z"
												id="cloudPath5" stroke="url(#cloudlinearGradient-5)"></path>
                          </g>
                        </g>
                      </svg>
									</div> <a href="/business/cloud_service">
										<h3 class="tit aos-init" data-aos="fade-up"
											data-aos-offset="0" data-aos-duration="250"
											data-aos-easing="linear">Cloud</h3>
										<p class="description aos-init" data-aos="fade-up"
											data-aos-offset="0" data-aos-duration="250"
											data-aos-easing="linear">
											고객 서비스에 최적화된 Cloud 환경 조성으로<br /> 안전하고 효율적인 인프라를 구축합니다.
										</p>
										<p class="btn-arrow aos-init" data-aos="fade-up"
											data-aos-offset="0" data-aos-duration="250"
											data-aos-easing="linear">
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
									<h2 class="tit aos-init" data-aos="fade-up" data-aos-offset="0"
										data-aos-duration="250" data-aos-easing="linear">
										OUR SERVICES</h2>
									<p class="description aos-init" data-aos="fade-up"
										data-aos-offset="0" data-aos-duration="250"
										data-aos-easing="linear">
										CJ올리브네트웍스는 우리가 가진 기술력으로<br /> 디지털 혁신을 실현합니다.
									</p>
								</a>
								<div class="btn-area aos-init" data-aos="fade-up"
									data-aos-offset="0" data-aos-duration="250"
									data-aos-easing="linear">
									<a href="/business/our_services"
										class="common-btn is-grad-blue"><span>전체보기<i
											class="icon link-arrow"></i></span></a>
								</div>
							</div>
							<div class="service-list-wrap">
								<ul class="service-list">
									<li class="factory-one aos-init" data-aos="fade-up"
										data-aos-offset="0" data-aos-duration="250"
										data-aos-easing="linear"><a
										href="/business/ai_factory_solution">
											<h3 class="tit-label">FactoryOne</h3>
											<h4 class="tit">AI팩토리</h4>
											<p class="description">
												제조 현장의 최적 운영을 위한<br /> 스마트 팩토리 구축 서비스
											</p>
											<p class="btn-arrow">
												<span class="blind">자세히 보기</span>
											</p>
									</a></li>
									<li class="eliss-one aos-init" data-aos="fade-up"
										data-aos-offset="0" data-aos-duration="250"
										data-aos-easing="linear"><a
										href="/business/ai_logistics">
											<h3 class="tit-label">ELissOne</h3>
											<h4 class="tit">AI로지스틱스</h4>
											<p class="description">
												물류 생산성과 효율성을 높이는<br /> 스마트 물류센터 구축 서비스
											</p>
											<p class="btn-arrow">
												<span class="blind">자세히 보기</span>
											</p>
									</a></li>
									<li class="cj-one-ad aos-init" data-aos="fade-up"
										data-aos-offset="0" data-aos-duration="250"
										data-aos-easing="linear"><a
										href="/business/cj_one_ad">
											<h3 class="tit-label">CJ ONE AD</h3>
											<h4 class="tit">CJ ONE AD</h4>
											<p class="description">
												2,800만 회원 데이터를 활용한<br /> 타겟 맞춤형 광고 큐레이션 서비스
											</p>
											<p class="btn-arrow">
												<span class="blind">자세히 보기</span>
											</p>
									</a></li>
									<li class="one-order aos-init" data-aos="fade-up"
										data-aos-offset="0" data-aos-duration="250"
										data-aos-easing="linear"><a
										href="/business/smart_store_solution">
											<h3 class="tit-label">OneOrder</h3>
											<h4 class="tit">매장 통합관리 솔루션</h4>
											<p class="description">
												스마트한 매장 관리를 위한<br /> 주문 통합 솔루션
											</p>
											<p class="btn-arrow">
												<span class="blind">자세히 보기</span>
											</p>
									</a></li>
									<li class="smart-culture-space aos-init" data-aos="fade-up"
										data-aos-offset="0" data-aos-duration="250"
										data-aos-easing="linear"><a
										href="/business/media_culture_spaces">
											<h3 class="tit-label">Smart Culture Space</h3>
											<h4 class="tit">스마트 컬처 스페이스</h4>
											<p class="description">
												최신 디지털 경험을 선사하는<br /> 미디어 문화 공간 디자인
											</p>
											<p class="btn-arrow">
												<span class="blind">자세히 보기</span>
											</p>
									</a></li>
									<li class="mplace aos-init" data-aos="fade-up"
										data-aos-offset="0" data-aos-duration="250"
										data-aos-easing="linear"><a
										href="/business/messaging_service">
											<h3 class="tit-label">mplace</h3>
											<h4 class="tit">통합 커뮤니케이션 플랫폼</h4>
											<p class="description">
												데이터와 API 플랫폼을 활용한<br /> 고객 맞춤형 커뮤니케이션 채널
											</p>
											<p class="btn-arrow">
												<span class="blind">자세히 보기</span>
											</p>
									</a></li>
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
								<strong>우리는 지속 가능한 성장을 통해 함께하는
									내일을 그려갑니다</strong>
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
								<h2 class="tit aos-init" data-aos="fade-up" data-aos-offset="0"
									data-aos-duration="250" data-aos-easing="linear">
									<span>PEOPLE </span>&amp; CULTURE
								</h2>
								<p class="description aos-init" data-aos="fade-up"
									data-aos-offset="0" data-aos-duration="250"
									data-aos-easing="linear">우리와 함께 새로운 미래를
									만들어 갈 당신을 기다립니다.</p>
							</a>
							<div class="btn-area aos-init" data-aos="fade-up"
								data-aos-offset="0" data-aos-duration="250"
								data-aos-easing="linear">
								<a href="/culture/people" class="common-btn is-grad-blue"><span>자세히
										보기<i class="icon link-arrow"></i>
								</span></a>
							</div>
						</div>
						<div class="half-wrap aos-init" data-aos-offset="0"
							data-aos-duration="250" data-aos-easing="linear">
							<div class="is-left">
								<a href="/culture/people" class="banner is-people aos-init"
									data-aos-offset="0" data-aos-duration="250"
									data-aos-delay="100" data-aos-easing="linear"
									data-aos="fade-up">
									<h3 class="tit">올네인 이야기</h3>
									<p class="description">
										“복지와 문화, 커리어를 모두<br /> 잡을 수 있는 회사라고 생각해요.”
									</p>
									<p class="btn-arrow is-black">
										<span class="blind">자세히 보기</span>
									</p>
								</a>
							</div>
							<div class="is-right">
								<a href="/recruit/job_notice" class="banner is-recruit aos-init"
									data-aos-offset="0" data-aos-duration="250"
									data-aos-delay="100" data-aos-easing="linear"
									data-aos="fade-up">
									<h3 class="tit">진행 중인 공고</h3>
									<p class="description">
										<span class="recruit-num" id="recruit-num">60</span> 건 진행 중
									</p>
									<p class="btn-arrow is-black">
										<span class="blind">자세히 보기</span>
									</p>
								</a> <a href="/culture/growth" class="banner is-growth aos-init"
									data-aos-offset="0" data-aos-duration="250"
									data-aos-delay="100" data-aos-easing="linear"
									data-aos="fade-up">
									<h3 class="tit">성장</h3>
									<p class="description">
										차세대 신기술 개발과<br /> 혁신의 중추적 역할을 해 나갈<br /> IT 기술 전문가를 양성합니다.
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
							<div class="btn-area aos-init" data-aos="fade-up"
								data-aos-offset="0" data-aos-duration="250"
								data-aos-easing="linear">
								<a href="/news/recent_news" class="common-btn is-grad-blue"><span>전체보기<i
										class="icon link-arrow"></i></span></a>
							</div>
						</div>
						<ul class="common-layout_3">
							<li data-aos="fade-up" data-aos-offset="0"
								data-aos-duration="250" data-aos-easing="linear"
								class="items aos-init">
								<div class="image_box">
									<a href="/news/press_release/detail/621?ca=ALL">
										<div class="img_cover">
											<img
												src="${pageContext.request.contextPath}/resources/imgs/imageBoard/neadam_logo.png" />
										</div>
									</a>
								</div> <a href="/news/press_release/detail/621?ca=ALL"
								class="desc_box">
									<p class="ui_category">언론보도</p>
									<p class="ui_title">CJ올리브네트웍스, 메타버스 커뮤니케이션 서비스 브릿지
										오피스(Bridge Office)</p>
							</a>

								<div class="hash_area">
									<a href="javascript:void(0);"
										onclick="hashtagLink('/news/recent_news?searchTag=', &quot;\uBE0C\uB9BF\uC9C0\uC624\uD53C\uC2A4&quot;)"
										class="hash_tag">#브릿지오피스</a> <a
										href="javascript:void(0);"
										onclick="hashtagLink('/news/recent_news?searchTag=', &quot;\uBA54\uD0C0\uBC84\uC2A4&quot;)"
										class="hash_tag">#메타버스</a> <a
										href="javascript:void(0);"
										onclick="hashtagLink('/news/recent_news?searchTag=', &quot;\uCEE4\uBBA4\uB2C8\uCF00\uC774\uC158&quot;)"
										class="hash_tag">#커뮤니케이션</a>
								</div>
							</li>
							<li data-aos="fade-up" data-aos-offset="0"
								data-aos-duration="250" data-aos-easing="linear"
								class="items aos-init">
								<div class="image_box">
									<a href="/news/press_release/detail/620?ca=ALL">
										<div class="img_cover">
											<img
												src="${pageContext.request.contextPath}/resources/imgs/imageBoard/neadam_logo.png" />
										</div>
									</a>
								</div> <a href="/news/press_release/detail/620?ca=ALL"
								class="desc_box">
									<p class="ui_category">언론보도</p>
									<p class="ui_title">CJ올리브네트웍스, 찾아가는 ‘시니어 디지털 리터러시 교육’ 펼쳐</p>
							</a>

								<div class="hash_area">
									<a href="javascript:void(0);"
										onclick="hashtagLink('/news/recent_news?searchTag=', &quot;\uC2DC\uB2C8\uC5B4&quot;)"
										class="hash_tag">#시니어</a> <a
										href="javascript:void(0);"
										onclick="hashtagLink('/news/recent_news?searchTag=', &quot;\uB514\uC9C0\uD138\uBB38\uD574&quot;)"
										class="hash_tag">#디지털문해</a> <a
										href="javascript:void(0);"
										onclick="hashtagLink('/news/recent_news?searchTag=', &quot;\uC2A4\uB9C8\uD2B8\uD3F0&quot;)"
										class="hash_tag">#스마트폰</a>
								</div>
							</li>
							<li data-aos="fade-up" data-aos-offset="0"
								data-aos-duration="250" data-aos-easing="linear"
								class="items aos-init">
								<div class="image_box">
									<a href="/news/press_release/detail/619?ca=ALL">
										<div class="img_cover">
											<img
												src="${pageContext.request.contextPath}/resources/imgs/imageBoard/neadam_logo.png" />
										</div>
									</a>
								</div> <a href="/news/press_release/detail/619?ca=ALL"
								class="desc_box">
									<p class="ui_category">언론보도</p>
									<p class="ui_title">CJ올리브네트웍스, 데이터 마케팅 컨퍼런스 &lt;The
										MAXONOMY 2023&gt; 개최</p>
							</a>

								<div class="hash_area">
									<a href="javascript:void(0);"
										onclick="hashtagLink('/news/recent_news?searchTag=', &quot;\uB370\uC774\uD130\uB9C8\uCF00\uD305\uC194\uB8E8\uC158&quot;)"
										class="hash_tag">#데이터마케팅솔루션</a> <a
										href="javascript:void(0);"
										onclick="hashtagLink('/news/recent_news?searchTag=', &quot;MAXONOMY&quot;)"
										class="hash_tag">#MAXONOMY</a> <a
										href="javascript:void(0);"
										onclick="hashtagLink('/news/recent_news?searchTag=', &quot;Braze&quot;)"
										class="hash_tag">#Braze</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="contact-wrap section">
					<div class="inner_container">
						<div class="contact-banner">
							<h3 class="tit">
								ICT 전문가와 상담을 원하시나요?<br /> CJ올리브네트웍스가 도와드리겠습니다.
							</h3>
							<div class="btn-area">
								<a href="/util/contact_us" class="common-btn is-white2"><span>고객센터</span></a>
								<a href="#pop_customer" class="common-btn is-white"
									onclick="openPopSet(this); return false;"><span>문의하기</span></a>
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
									<select name="" id="category"
										onchange="categoryType(this.value)">
										<option value="">문의 유형을 선택해 주세요.</option>
										<option value="서비스/기술문의">서비스/기술문의</option>
										<option value="제휴제안">제휴제안</option>
										<option value="기타문의">기타문의</option>
									</select>
									<p class="messg categorymsg" style="display: none">문의 유형을
										선택해 주세요.</p>
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
										<select name="business" id="business"
											onchange="businessType(this.value)">
											<option value="">서비스 또는 기술을 선택해 주세요.</option>
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
										<p class="messg businessmsg" style="display: none">서비스 또는
											기술을 선택해 주세요.</p>
									</div>
								</div>
								<div class="items">
									<div class="common-select_box">
										<select name="businessDetail" id="businessDetail"
											onchange="businessDType(this.value)" disabled="">
											<option value="">상세항목을 선택해 주세요.</option>
											<option value="1">AI팩토리 (FactoryOne)</option>
											<option value="2">AI로지스틱스</option>
											<option value="3">스마트 컬처 스페이스</option>
											<option value="4">NFT</option>
											<option value="5">방송 송출 서비스</option>
											<option value="6">인코딩 하우스</option>
											<option value="7">공간 음악 서비스</option>
											<option value="8">방송•미디어 통합 인프라 솔루션</option>
											<option value="9">CJ ONE AD</option>
											<option value="10">CJ기프트카드</option>
											<option value="11">데이터 마케팅 솔루션 (Amplitude &amp;
												Braze)</option>
											<option value="12">데이터 바우처</option>
											<option value="13">빅데이터 통합 마케팅</option>
											<option value="14">통합 커뮤니케이션 솔루션 (mplace)</option>
											<option value="15">매장 통합관리 솔루션 (OneOrder)</option>
											<option value="16">티켓 통합 솔루션 (OneOrder Ticket)</option>
											<option value="17">결제 솔루션 (One PG)</option>
											<option value="18">시스템 통합</option>
											<option value="19">시스템 운영</option>
											<option value="20">웹앱 서비스</option>
											<option value="21">스마트 인사관리 플랫폼 (WORKSCAN)</option>
											<option value="22">이러닝 서비스</option>
											<option value="23">AI 통합 인프라 솔루션</option>
											<option value="24">IT 인프라 서비스</option>
											<option value="25">Hybrid/Multi 클라우드 서비스</option>
											<option value="26">퍼블릭 클라우드 보안</option>
											<option value="27">보안 취약점 진단 &amp; 모의해킹</option>
											<option value="28">산업제어시스템(OT/ICS) 보안</option>
										</select>
										<p class="messg businessDetailmsg" style="display: none">
											상세항목을 선택해 주세요.</p>
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
										<input type="text" placeholder="이름을 입력해주세요." id="name"
											maxlength="30" />
										<p class="messg namemsg" style="display: none">이름을 입력해
											주세요.</p>
									</div>
								</div>
							</div>
							<div class="items">
								<div class="form_head">
									<label for="form04" class="form-label">이메일</label>
								</div>
								<div class="form_body">
									<div class="textfd_wrap">
										<input type="email" placeholder="이메일을 입력해 주세요." id="email"
											maxlength="30" />
										<p class="messg emailmsg1" style="display: none">이메일을 입력해
											주세요.</p>
										<p class="messg emailmsg2" style="display: none">이메일 형식이
											올바르지 않습니다.</p>
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
										<input type="tel" placeholder="연락처를 입력해 주세요." id="phone"
											maxlength="20"
											onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" />
										<p class="messg phonemsg" style="display: none">연락처를 입력해
											주세요.</p>
									</div>
								</div>
							</div>
							<div class="items">
								<div class="form_head">
									<label for="form06" class="form-label">회사(소속)</label>
								</div>
								<div class="form_body">
									<div class="textfd_wrap">
										<input type="text" placeholder="회사명 또는 소속기관을 입력해 주세요."
											id="company" maxlength="30" />
										<p class="messg companymsg" style="display: none">회사명 또는
											소속기관을 입력해 주세요.</p>
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
									<input type="text" placeholder="제목을 입력해 주세요." id="title"
										maxlength="200" />
									<p class="messg titlemsg" style="display: none">제목을 입력해
										주세요.</p>
								</div>
							</div>
						</div>

						<div class="form_fieldset">
							<div class="form_head">
								<label for="form08" class="form-label">문의 내용</label>
							</div>
							<div class="form_body">
								<div class="textarea_wrap">
									<textarea id="content" placeholder="문의 내용을 입력해 주세요."
										maxlength="2000"></textarea>
									<p class="messg contentmsg" style="display: none">문의 내용을
										입력해 주세요.</p>
								</div>
							</div>
						</div>

						<div class="form_fieldset">
							<div class="form_head">
								<label for="form08" class="form-label">첨부 파일(선택)</label>
							</div>
							<div class="form_body">
								<div class="common-file-upload type01">
									<input type="file" id="file" name="file" class="iText"
										title="첨부파일" /> <label for="file"
										class="common-btn is-gray"><span>파일선택</span></label>
									<div class="file_viewer-box">
										<p class="file_viewer-txt">첨부된 파일이 없습니다.</p>
										<button type="button" class="icon val-del">
											<span class="hidden">첨부파일 삭제</span>
										</button>
									</div>
								</div>
								<p class="guide-txt">* 첨부파일은 최대 10MB까지 등록 가능하며, 파일 형식은 zip,
									pdf, hwp, ppt, pptx, doc, docx, xls, xlsx, jpg, jpeg, png, gif
									만 가능합니다.</p>
							</div>
						</div>

						<div class="form_fieldset">
							<div class="provision_area" id="agreeChk">
								<div class="provision_box" style="">
									개인정보 수집 및 이용 동의 (필수) <br /> <br /> 1. 처리목적 : 고객 문의에 대한 답변 및
									현황 관리<br /> 2. 처리항목 : 이름, 연락처, 이메일, 회사(소속)<br /> 3. 보유기간 :
									개인정보 수집 및 이용에 관한 동의 후 36개월간 보유 <br /> <br /> 귀하는 개인정보 수집·이용에
									동의하지 않으실 수 있습니다.<br /> 그러나 동의하지 않을 경우 고객문의 등록이 불가합니다. <br />
									<br /> ※ CJ올리브네트웍스는 이용자가 만 14세 미만일 경우 개인정보를 수집하지 않습니다.
								</div>

								<p class="messg agreemsg" style="display: none">개인정보 수집 및
									이용에 동의해 주세요.</p>
							</div>
						</div>

						<div class="input_wrapper">
							<input type="checkbox" id="formChkGlobal" /> <label
								for="formChkGlobal">개인정보 수집 및 이용에
								동의합니다. </label>
						</div>

						<div class="btn_area center">
							<a href="#self" class="common-btn" id="sendBtn_pop"><span>등록하기</span></a>
						</div>
					</div>
					<button type="button" class="icon pop-close"
						onclick="modalPop.close(this);">닫기</button>
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
      <jsp:include page="/WEB-INF/views/user/common/footer.jsp" />      
  </body>
</html>
