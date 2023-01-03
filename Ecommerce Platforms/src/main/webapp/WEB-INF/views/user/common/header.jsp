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
			var sideDisplay = '';
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
					sideDisplay = "<li>"
								+ "	<a href='"+menu[i].url+"' class='btn_submenu'>"+menu[i].title+"</a>"
								+ "		<div class='sub-wrap'>"
								+ "			<ul class='sub-2depth'>"
								for(var j = 0; j < data.list2.length; j++){
									if(data.list[i].code == data.list2[j].originNo && menu2[j].status != 'n'){
										sideDisplay	+= "<li><a href='"+menu2[j].url+"'>"+menu2[j].title+"</a></li>"				
									}
								}
					sideDisplay += '		</ul>'
								+ '		</div>'
								+ '</li>';
					$('#menuHeader').append(display);
					$('#sideMenu').append(sideDisplay);
				}
			}
		}
	})	
}
</script>
      <!-- 공통 header -->
      <header id="header" class="root">
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
              <ul id="sideMenu">
                                                                                                                                    
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
