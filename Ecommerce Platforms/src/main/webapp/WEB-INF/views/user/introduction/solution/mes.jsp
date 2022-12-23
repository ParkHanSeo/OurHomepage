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
                        <h2 class="sub_title">SOLUTION</h2>
                    </div>
                </div><!-- // .sub_title_area -->

                <div class="top_visual_area type02">
                    <div class="inner_container aos-init aos-animate" data-aos="fade-up" data-aos-offset="0" data-aos-duration="300" data-aos-delay="150" data-aos-easing="linear">
                        <div class="top_txt_outer">
                            <div class="top_txt_area">
                                <span class="top_txt1">제조업체의 공장 관리를 위한 개념이자 구현 도구</span>
                                <p class="top_txt2">제조 실행 시스템 (MES)</p>
                                <p class="top_txt3">
                                    주문에서 제품 생산에 이르기까지 관련 정보를 제공해 가장 효과적으로 활용할 수 있도록 하며, 현장의 정확한 데이터를 사용함으로써<br class="hide_768"> 
                                    데이터들이 발생할 때마다 현장의 활동을 관리, 착수, 응답, 보고하는 솔루션을 제공합니다.
                                </p>
                            </div>
                        </div>
                    </div>
                </div><!-- // .top_visual_area -->

                <div class="common-swiper_area">
                    <div class="inner_container">
                        <div class="common-swiper_tab">
                            <ul class="swiper-wrapper service_swiper_wrapper">
                                <li class="swiper-slide service_swiper_slide active"><a href="#self">서비스 소개</a></li>
                                <li class="swiper-slide service_swiper_slide"><a href="#self">추천대상</a></li>
                                <li class="swiper-slide service_swiper_slide"><a href="#self">주요 서비스</a></li>
                                <li class="swiper-slide service_swiper_slide"><a href="#self">차별화 포인트</a></li>
                            </ul>
                        </div>
                    </div>
                </div><!-- // .common-swiper_area -->

                <div class="layout_section_outer intro type01" data-js="anchor-target">
                    <div class="inner_container">
                        <div class="layout_head">
                            <p class="top_txt1">
                                MES는 제품의 주문 단계에서 완성 단계까지
                                <br>모든 생산 활동의 최적화를 가능하게 지원하는 솔루션을 소개합니다
                            </p>
                            <p class="top_txt3">
                                1. 실시간 생산 관리 및 분석 : 수동 생산공정관리 및 원자재 수기관리 등 비효율 관리로 인해 발생하는 생산성 저하 등의 문제를 해소할 수 있습니다.<br>
                                2. 품질관리 시스템 구축 : 생산품의 품질 결과를 입력/유형분석 및 공정 별, 설비 별, 불량유형 별 통계분석 제공불량 발생 시 LOT 추적을 통한 문제 요인 탐색 가능합니다. <br>
                                3. 통합관리, 생산성 개선, 경쟁력 향상 : 제조현장과 주변 시스템의 통합, 최적화한 생산 활동 지원, 생산 현장의 실시간(real time) 정보 통합, 
								   통합 정보의 활용으로 최적의 의사결정 지원 등에 의한 통합화와 최적화할 수 있습니다. <br>
                                <br><br>
                                ※ MES란<br>
                                MES는 실시간으로 정확한 데이터를 이용해 공장 내에 존재하는 모든 작업 활동을 가이드하고 착수하며 응답하고 보고한다.
                                또한 상태 변화에 대한 신속한 응답과 값어치 없는(Non- value-added) 작업 활동의 감소에 초점을 맞추어 공장 내 작업과 공정들의 효율화를 높여준다.
                            </p>
                        </div>

                        <div class="layout_body">
                            <div class="common-img_box no-round">
                                <img src="${pageContext.request.contextPath}/resources/user/images/introduction/mes_3.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div><!-- // .layout_section_outer -->

                <div class="layout_section_outer type01" data-js="anchor-target">
                    <div class="inner_container">
                        <div class="layout_head">
                            <p class="top_txt1">
                                이런 분들에게 적극 추천합니다
                            </p>
                        </div>

                        <div class="layout_body">
                            <div class="recomm_biz_slider size-228">
                                <ul class="swiper-wrapper common-layout_3 swiper_introduction_layout">
                                    <li class="items swiper-slide">
                                        <div class="recomm_box">
                                            <div class="recomm_msg_box">
                                                <p class="recomm_msg">
                                                    후기 A
                                                </p>
                                                <p class="user_info">
                                                    <span>우OO 36세</span>
                                                    <span>A사 담당자</span>
                                                </p>
                                                <i class="icon recomm-1"></i>
                                            </div>
                                        </div>
                                        <p class="recomm_desc">
                                            대규모 좌석, 티켓 운영을 기본으로 NFT기술을
                                            활용한 위조, 변조 불가한 디지털 티켓 서비스 등
                                            최고 수준의 티켓 예매 솔루션 제공합니다.
                                        </p>
                                    </li>
                                    <li class="items swiper-slide">
                                        <div class="recomm_box">
                                            <div class="recomm_msg_box">
                                                <p class="recomm_msg">
                                                    후기 B
                                                </p>
                                                <p class="user_info">
                                                    <span>이OO 41세</span>
                                                    <span>A사 담당자</span>
                                                </p>
                                                <i class="icon recomm-2"></i>
                                            </div>
                                        </div>
                                        <p class="recomm_desc">
                                            다양한 티켓 솔루션 제공 노하우를 기반으로
                                            참석자 규모, 장소, 행사 특성에 따라 적합한
                                            솔루션을 빠르게 맞춤 제공해드릴 수 있습니다.
                                        </p>
                                    </li>
                                    <li class="items swiper-slide">
                                        <div class="recomm_box">
                                            <div class="recomm_msg_box">
                                                <p class="recomm_msg">
                                                    후기 A
                                                </p>
                                                <p class="user_info">
                                                    <span>주OO 32세</span>
                                                    <span>A사 담당자</span>
                                                </p>
                                                <i class="icon recomm-3"></i>
                                            </div>
                                        </div>
                                        <p class="recomm_desc">
                                            그룹사의 대용량 트래픽 처리 인프라를 통해
                                            체계적이고 안정적인 티켓 예매 솔루션을 합리적인
                                            가격으로 편리하게 이용하실 수 있습니다.
                                        </p>
                                    </li>
                                </ul>
                                <div class="swiper_pagination recomm_biz"></div>
                            </div>
                        </div>
                    </div>
                </div><!-- // .layout_section_outer -->

                <div class="layout_section_outer service_area introduction_area" data-js="anchor-target">
                    <div class="inner_container">
                        <div class="layout_head">
                            <p class="top_txt1">
                                이런 서비스를<br class="show_375"> 제공합니다
                            </p>
                        </div>
                        <div class="layout_body">
                            <p class="service_title">01. 개별 서비스</p>
                            <div class="serv_list_slider">
                                <ul class="swiper-wrapper common-layout_3 swiper_introduction_layout">
                                    <li class="items swiper-slide">
                                        <div class="service_box">
                                            <i class="icon service-12"></i>
                                            <p class="service_box_title">Title_1</p>
                                            <ul class="service_list">
                                                <li>회원/비회원 예매 (PC/모바일)</li>
                                                <li>예매조건 선택(일시, 인원, 좌석 및 구역 등) </li>
                                                <li>할인/배송수단 선택</li>
                                                <li>결제수단 선택</li>
                                                <li>예매내역 확인/취소, SMS 발송 </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="items swiper-slide">
                                        <div class="service_box">
                                            <i class="icon service-31"></i>
                                            <p class="service_box_title">Title_2</p>
                                            <ul class="service_list">
                                                <li>예매내역 발권 및 현장구매(PC/KIOSK)</li>
                                                <li>티켓 취소/환불/재발권</li>
                                                <li>좌석찜 등 부가기능</li>
                                                <li>판매자별 정산</li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="items swiper-slide">
                                        <div class="service_box">
                                            <i class="icon service-32"></i>
                                            <p class="service_box_title">Title_3</p>
                                            <ul class="service_list">
                                                <li>결제내역 조회 및 매출통계</li>
                                                <li>세금계산서발행내역</li>
                                                <li>대금지급현황</li>
                                                <li>가맹점 정산서</li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                                <!-- <div class="swiper_pagination"></div> -->
                            </div>
                        </div>

                        <div class="layout_body">
                            <p class="service_title">02. 통합 관리 서비스</p>
                            <div class="serv_list_slider">
                                <ul class="swiper-wrapper common-layout_3 swiper_introduction_layout">
                                    <li class="items swiper-slide">
                                        <div class="service_box">
                                            <i class="icon service-33"></i>
                                            <p class="service_box_title">Title_4</p>
                                            <ul class="service_list">
                                                <li>공연장, 무대 및 티켓정보 관리</li>
                                                <li>스케줄 관리</li>
                                                <li>좌석도 관리, 좌석등급 및 가격관리</li>
                                                <li>좌석할당 및 해제</li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="items swiper-slide">
                                        <div class="service_box">
                                            <i class="icon service-34"></i>
                                            <p class="service_box_title">Title_5</p>
                                            <ul class="service_list">
                                                <li>판매/취소 시간관리</li>
                                                <li>판매현황조회</li>
                                                <li>결제수단관리</li>
                                                <li>할인수단관리</li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="items swiper-slide">
                                        <div class="service_box">
                                            <i class="icon service-01"></i>
                                            <p class="service_box_title">Title_6</p>
                                            <ul class="service_list">
                                                <li>정산관리</li>
                                                <li>콜센터/본부관리</li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                                <!-- <div class="swiper_pagination"></div> -->
                            </div>
                        </div>
                    </div>
                </div><!-- // .service_area -->

                <div class="layout_section_outer biz_difference is-gray" data-js="anchor-target">
                    <div class="inner_container">
                        <div class="layout_head">
                            <p class="top_txt1">
                                디지털 트윈 (Digital Twin)만의 차별화 포인트
                            </p>
                        </div>
                        <div class="layout_body">
                            <ol class="difference_list">
                                <li>
                                    <div class="difference_img aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
                                        <img src="${pageContext.request.contextPath}/resources/user/images/introduction/mes_2.jpg" alt="">
                                    </div>
                                    <div class="difference_box aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
                                        <p class="difference_title">
                                            HTML 기반의 맞춤형<br>
                                            온라인 예매 서비스 제공
                                        </p>
                                        <p class="difference_desc">
                                            HTML기반의 온라인 예매시스템은 웹표준 및 접근성을 준수하고, 고객사 홈페이지 및 시스템에 쉽게 적용이 가능한 맞춤형 온라인 서비스를 제공합니다. 크롬,사파리 등 멀티브라우저 제공 및 장애인차별금지법 대응이 가능합니다.
                                        </p>
                                    </div>
                                </li>
                                <li class="is-right">
                                    <div class="difference_img aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
                                        <img src="${pageContext.request.contextPath}/resources/user/images/introduction/mes_1.jpg" alt="">
                                    </div>
                                    <div class="difference_box aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
                                        <p class="difference_title">
                                            통계분석을 통한<br>
                                            원활한 행사 진행
                                        </p>
                                        <p class="difference_desc">
                                            극장별, 일자별 예매추이 분석을 통해 탄력적인 행사 진행이 가능하며,
                                            고객사 자체 회원 DB를 이용한 예매시스템 연동으로 회원데이터 활용이
                                            자유롭습니다.
                                        </p>
                                    </div>
                                </li>
                                <li>
                                    <div class="difference_img aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
                                        <img src="${pageContext.request.contextPath}/resources/user/images/introduction/mes_4.jpg" alt="">
                                    </div>
                                    <div class="difference_box aos-init" data-aos="fade-up" data-aos-offset="0" data-aos-duration="250" data-aos-easing="linear">
                                        <p class="difference_title">
                                            One PG(CJ Payment Platform)을 통한 안정적인 결제 환경 제공
                                        </p>
                                        <p class="difference_desc">
                                            CJ그룹의 온/오프라인 결제를 담당하는 One PG(Payment 플랫폼)을 통해 신용카드, 휴대폰, 계좌이체 등 다양한 결제수단을 제공합니다.
                                            또한 월 2천만 건 규모 이상 결제를 수용할 수 있는 검증된 안정적인 결제 환경을 제공합니다.
                                        </p>
                                    </div>
                                </li>
                            </ol>
                        </div>
                    </div>
                </div><!-- // .biz_difference -->
                <div class="layout_section_outer card-ui">
                    <div class="inner_container">
                    </div>
                </div><!-- // .card-ui -->
            </div><!-- // #contents -->
        </section><!-- // #container -->
    </div><!-- // #wrap -->

<div>

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
                            <select name="" id="category" onchange="categoryType(this.value)">
                                <option value="">문의 유형을 선택해 주세요.</option>
                                <option value="서비스/기술문의">서비스/기술문의</option>
                                <option value="제휴제안">제휴제안</option>
                                
                                <option value="기타문의">기타문의</option>
                            </select>
                            <p class="messg categorymsg" style="display:none;">문의 유형을 선택해 주세요.</p>
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
                                <select name="business" id="business" onchange="businessType(this.value)">
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
                                <p class="messg businessmsg" style="display:none;">서비스 또는 기술을 선택해 주세요. </p>
                            </div>
                        </div>
                        <div class="items">
                            <div class="common-select_box">
                                <select name="businessDetail" id="businessDetail" onchange="businessDType(this.value)"><option value="15">매장 통합관리 솔루션 (OneOrder)</option><option value="16">티켓 통합 솔루션 (OneOrder Ticket)</option><option value="17">결제 솔루션 (One PG)</option></select>
                                <p class="messg businessDetailmsg" style="display:none;">상세항목을 선택해 주세요. </p>
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
                                <input type="text" placeholder="이름을 입력해주세요." id="name" maxlength="30">
                                <p class="messg namemsg" style="display:none;">이름을 입력해 주세요.</p>
                            </div>
                        </div>
                    </div>
                    <div class="items">
                        <div class="form_head">
                            <label for="form04" class="form-label">이메일</label>
                        </div>
                        <div class="form_body">
                            <div class="textfd_wrap">
                                <input type="email" placeholder="이메일을 입력해 주세요." id="email" maxlength="30">
                                <p class="messg emailmsg1" style="display:none;">이메일을 입력해 주세요.</p>
                                <p class="messg emailmsg2" style="display:none;">이메일 형식이 올바르지 않습니다.</p>
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
                                <input type="tel" placeholder="연락처를 입력해 주세요." id="phone" maxlength="20" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');">
                                <p class="messg phonemsg" style="display:none;">연락처를 입력해 주세요. </p>
                            </div>
                        </div>
                    </div>
                    <div class="items">
                        <div class="form_head">
                            <label for="form06" class="form-label">회사(소속)</label>
                        </div>
                        <div class="form_body">
                            <div class="textfd_wrap">
                                <input type="text" placeholder="회사명 또는 소속기관을 입력해 주세요." id="company" maxlength="30">
                                <p class="messg companymsg" style="display:none;">회사명 또는 소속기관을 입력해 주세요.</p>
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
                            <input type="text" placeholder="제목을 입력해 주세요." id="title" maxlength="200">
                            <p class="messg titlemsg" style="display:none;">제목을 입력해 주세요.</p>
                        </div>
                    </div>
                </div>

                <div class="form_fieldset">
                    <div class="form_head">
                        <label for="form08" class="form-label">문의 내용</label>
                    </div>
                    <div class="form_body">
                        <div class="textarea_wrap">
                            <textarea id="content" placeholder="문의 내용을 입력해 주세요." maxlength="2000"></textarea>
                            <p class="messg contentmsg" style="display:none;">문의 내용을 입력해 주세요. </p>
                        </div>
                    </div>
                </div>

                <div class="form_fieldset">
                    <div class="form_head">
                        <label for="form08" class="form-label">첨부 파일(선택)</label>
                    </div>
                    <div class="form_body">
                        <div class="common-file-upload type01">
                            <input type="file" id="file" name="file" class="iText" title="첨부파일">
                            <label for="file" class="common-btn is-gray"><span>파일선택</span></label>
                            <div class="file_viewer-box">
                                <p class="file_viewer-txt">첨부된 파일이 없습니다.</p>
                                <button type="button" class="icon val-del"><span class="hidden">첨부파일 삭제</span></button>
                            </div>
                        </div>
                        <p class="guide-txt">* 첨부파일은 최대 10MB까지 등록 가능하며, 파일 형식은 zip, pdf, hwp, ppt, pptx, doc, docx, xls, xlsx, jpg, jpeg, png, gif 만 가능합니다.</p>
                    </div>
                </div>

                <div class="form_fieldset">
                    <div class="provision_area" id="agreeChk">
                        <div class="scroll-wrapper provision_box" style="position: relative;"><div class="provision_box scroll-content scroll-scrollx_visible scroll-scrolly_visible" style="height: auto; margin-bottom: 0px; margin-right: 0px;">
                            개인정보 수집 및 이용 동의 (필수)
                            <br><br>
                            1. 처리목적 : 고객 문의에 대한 답변 및 현황 관리<br>
                            2. 처리항목 : 이름, 연락처, 이메일, 회사(소속)<br>
                            3. 보유기간 : 개인정보 수집 및 이용에 관한 동의 후 36개월간 보유
                            <br><br>
                            귀하는 개인정보 수집·이용에 동의하지 않으실 수 있습니다.<br>
                            그러나 동의하지 않을 경우 고객문의 등록이 불가합니다.
                            <br><br>
                            ※ CJ올리브네트웍스는 이용자가 만 14세 미만일 경우 개인정보를 수집하지 않습니다.
                        </div><div class="scroll-element scroll-x scroll-scrollx_visible scroll-scrolly_visible"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="left: 0px;"></div></div></div><div class="scroll-element scroll-y scroll-scrollx_visible scroll-scrolly_visible"><div class="scroll-element_outer"><div class="scroll-element_size"></div><div class="scroll-element_track"></div><div class="scroll-bar" style="top: 0px;"></div></div></div></div>

                        <p class="messg agreemsg" style="display:none;">개인정보 수집 및 이용에 동의해 주세요.</p>
                    </div>
                </div>

                <div class="input_wrapper">
                    <input type="checkbox" id="formChkGlobal">
                    <label for="formChkGlobal">개인정보 수집 및 이용에 동의합니다. </label>
                </div>

                <div class="btn_area center">
                    <a href="#self" class="common-btn" id="sendBtn_pop"><span>등록하기</span></a>
                </div>
            </div>
            <button type="button" class="icon pop-close" onclick="modalPop.close(this);">닫기</button>
        </div><!-- // .layer_inner -->
    </div><!-- // .layer_outer -->
</div><!-- // .layer_wrapper -->

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
