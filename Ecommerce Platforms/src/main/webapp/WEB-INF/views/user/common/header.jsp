		<!-- header -->
		<script src="${pageContext.request.contextPath}/resources/html/_skin/jjs/top-menu.js"></script>
		<header id="header" class="fixed">
			<div class="sta" style="">
				<div class="inner lang-depth1">
					

<script type="text/javascript">
	$(function(){
		
			var snsLink = $('.social_link_wrap--fc');
			var footerSnsArea = $('.footer-top-inner');
			footerSnsArea.append(snsLink.clone());
		
	});
	
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
					display = "<li class='mb-in'><a href='"+menu[i].url+"'>"+menu[i].title+"</a>"
							+ "<ul class='depth2'>"
							for(var j = 0; j < data.list2.length; j++){
								if(data.list[i].code == data.list2[j].originNo && menu2[j].status != 'n'){
									display += "<li><a href="+menu2[j].url+">"+menu2[j].title+"</a></li>"
								}
							}
					display	+= '</ul>'
						    + '</li>';
					$('#menuHeader').append(display)
				}
			}
		}
	})
</script>
<script type="text/javascript">
	function btnScrollTop() {
		  var $btn = $(".quick-top-btn");
	
		  $btn.on("click", function () {
		    $("html, body").animate({ scrollTop: 0 }, 600);
		  });
		}
</script>	
					<ul>
						<li class="line-r mb_none">
							<a href="/">Home</a>
						</li>
						<li class="type-member line-r">
							<a href="/member/login">Login</a>
						</li>
						<li class="type-member line-r">
							<a href="/member/stipulation">Join</a>
						</li>
						<li class="mb_none">
							<a href="/policy/sitemap">Sitemap</a>
						</li>
						<li class="lang-depth1-li">
							<a href="#">Other languages</a>
						<ul class="lang-depth2">
							<li class="lang">
								<a href="/index.html?locale=ko&amp;return_url=%2Fmain">한국어</a>
							</li>
						</ul>
						</li>
					</ul>
				</div>
			</div>
			<div class="header-bottom">
				<div class="header-bottom__inner">
					<h1 class="logo">
						<a href="${pageContext.request.contextPath}/user/dashBoard"> 
							<img src="${pageContext.request.contextPath}/resources/imgs/imageBoard/neadam_logo.png" alt="logo" class="basic_neadam">
						</a>
					</h1>
					<div class="m-menu-btn">
						<span></span> 
						<span></span> 
						<span></span>
					</div>
					<nav class="gnb">
						<div class="m-lang"></div>

						<ul id="menuHeader">
							
						</ul>
						<div class="m-gnb-bg"></div>
					</nav>
					<div class="pc_sitemap_btn">
						<span></span> 
						<span></span> 
						<span></span>
					</div>
				</div>
			</div>
		</header>
		<!-- //header -->