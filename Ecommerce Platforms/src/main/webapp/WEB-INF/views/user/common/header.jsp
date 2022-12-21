<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
window.onload=function(){
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
			console.log(data)
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
}
</script>
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
						
					</ul>
				</nav>

          <div id="sitemap" aria-hidden="true">
            <div class="sitemap-body">
              <ul>
                <li>
                  <a href="/company/overview" class="btn_submenu">메인페이지</a>
                </li>
                <li>
                  <a href="/company/overview" class="btn_submenu">회사소개</a>
                  <div class="sub-wrap">
                    <ul class="sub-2depth">
                      <li><a href="/company/overview">사업개요</a></li>
                      <li><a href="/company/ceo_greeting">CEO 메시지</a></li>
                      <li><a href="/company/history">사업부 소개</a></li>
                      <li><a href="/company/location">연혁</a></li>
                      <li><a href="/company/location">CI</a></li>
                      <li><a href="/company/location">오시는 길</a></li>
                    </ul>
                  </div>
                </li>   
                <li>
                  <a href="/company/overview" class="btn_submenu">사업소개</a>
                  <div class="sub-wrap">
                    <ul class="sub-2depth">
                      <li><a href="/company/overview">Solution</a></li>
                      <li><a href="/company/ceo_greeting">컨설팅</a></li>
                      <li><a href="/company/history">SI</a></li>
                    </ul>
                  </div>
                </li>   
                <li>
                  <a href="/company/overview" class="btn_submenu">파트너</a>
                  <div class="sub-wrap">
                    <ul class="sub-2depth">
                      <li><a href="/company/overview">Partner Ship</a></li>
                      <li><a href="/company/ceo_greeting">Partner</a></li>
                    </ul>
                  </div>
                </li> 
                <li>
                  <a href="/company/overview" class="btn_submenu">인재정보</a>
                  <div class="sub-wrap">
                    <ul class="sub-2depth">
                      <li><a href="/company/overview">채용안내</a></li>
                      <li><a href="/company/ceo_greeting">인재상</a></li>
                      <li><a href="/company/ceo_greeting">인사제도</a></li>
                    </ul>
                  </div>
                </li>
                <li>
                  <a href="/company/overview" class="btn_submenu">공지사항</a>
                  <div class="sub-wrap">
                    <ul class="sub-2depth">
                      <li><a href="/company/overview">IR 자료</a></li>
                      <li><a href="/company/ceo_greeting">기타 자료</a></li>
                    </ul>
                  </div>
                </li>                                                                                                                    
              </ul>
            </div>
        </div>
<div class="header_util">
            <div class="btn_util_wrap">
                <a href="/util/contact_us" class="btn_contact">고객센터</a>
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
      </header>
      <!--  공통 search -->
