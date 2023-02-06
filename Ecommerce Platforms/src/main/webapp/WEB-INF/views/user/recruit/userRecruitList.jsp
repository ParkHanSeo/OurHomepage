<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<title>내담씨앤씨</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<jsp:include page="/WEB-INF/views/user/common/script_css_js.jsp" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/recruit.css">
<script type="text/javascript">
function paging(cPage){
	console.log("paging 클릭!" + cPage);
	if(cPage == 'prev'){
			alert("이전 페이지가 없습니다.");
			return;
		}else if(cPage == 'next'){
			alert("다음 페이지가 없습니다.");
			return;
		}
	
	$("li[id='postList']").remove();
	$("#page .common-pagination").remove();
	var search = $("form[name='searchForm']").serialize();
	var searchKeyword = $("input[name='searchKeyword']").val();
	
	console.log("searchKeyword>>>>", searchKeyword);
	
	$.ajax({
		url : "/user/recruit/userRecruitListPaging?${_csrf.parameterName}=${_csrf.token}",
				type : "POST",
				data : {
					cPage,
					searchKeyword
				},
				success : function(data){
					console.log("paging 처리 결과 ", data)
					let result = '';
					for(var i =0; i < data.recruit.list.length; i++){
						result = '<li id="postList">'
								+ '<div class="subj_box">'
								+	'<p class="common-text_title">'
								+		'<a href="/user/recruit/getRecruitDetail/' + data.recruit.list[i].recruitNo + '">'
							    +         data.recruit.list[i].recruitTitle
							    +		'</a>'
								+	'</p>'
								+ '</div>'
							    + '<div class="date_box center-left">'
							    + 	'<p class="common-text_reg-date" style="width:140px;">'
								+     data.recruit.list[i].career 
								+ 	'</p>'
								+ '</div>'
								+ '<div class="date_box center-left">';

							//list 마감일 있을경우
							if(data.recruit.list[i].recruitEnd != null ){
								result += '<p class="common-text_reg-date" style="width:140px;">'
									 	+	data.recruit.list[i].recruitEnd
									 	+ '</p></div>'

							} else {
								//list 마감일 없을경우
								result += '<p class="common-text_reg-date" style="width:140px;">-</p></div>'
							}
							//모집중
							if(data.recruit.list[i].contentsStatus == 'Y'){
								result += '<div class="date_box center-left">'
										+ '<p class="common-text_reg-date" style="width:140px;">채용중</p></div></li>'

							} else if(data.recruit.list[i].contentsStatus == 'R'){
								//상시채용
								result += '<div class="date_box center-left">'
										+ '<p class="common-text_reg-date" style="width:140px;">상시채용</p></div></li>'
							}
							
							$(".common-text_list_area .common-text_list").append(result);
					}
					$("#page").append(data.pagebar);
				},
				error : function(res){
					alert("실패");
					console.log("실패====" , res);
				}
	})

}


</script>
</head>
  <body>
  <jsp:include page="/WEB-INF/views/user/common/header.jsp" />
		<section id="container">
            <div id="contents" class="contents_top">
                <div class="sub_title_area">
                    <div class="inner_container">
                        <h2 class="sub_title">채용안내</h2>
                    </div>
                </div><!-- // .sub_title_area -->

                <div class="top_visual_area recruit">
                    <div class="inner_container">
                        <div class="top_txt_outer">
                            <div class="top_txt_area txt_notice">
                                <p class="top_txt2">(
                                주)내담씨앤씨는 진취적이며</br> 
                                프로페셔널한 인재에게 언제나 열려 있습니다
                                </p>
                                <p class="top_txt3">
                                   (주)내담씨앤씨에 입사 지원하실 분은 아래의 지원 양식을 다운로드 받아 채용 담당자 이메일로 접수하여 주시기 바랍니다.</br>
									서류면접을 통과하신 분들에겐 개별적으로 연락 드리겠습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                </div><!-- // .top_visual_area -->

                <div class="layout_section_outer_notice recruit">
                    <div class="inner_container inner_container_notice">
					<div class="recruit-search_box_wrap" id="recruit_search">
						<div class = "application_btn_area">
                				<a href="/resources/user/downloadFile/recruit/RECRUIT_NAEDAM.docx" download>
                				<button class="application_btn">
                				입사지원 양식 다운로드
                				</button>
                				</a>
                			
                		</div>
						<div class="common-search_box">
							<form name="searchForm" action="#" onsubmit="paging()" style="float: right"
								onkeypress="if(event.keyCode==13){paging();}">
								<input type="hidden" name="cPage">
								<input class="common-search_input" name="searchKeyword"
									id="recruit_search_txt" type="text" placeholder="검색어을 입력해주세요."
									title="검색어을 입력해주세요.">
								<button type="submit" class="common-search_btn recruit_search_imo" id="btnSearch">
								</button>
							</form>
						</div>
					</div>

					<div class="common-text_list_area" id="recruit_detail">
						<ul class="common-text_list">		
								<li class="main_notice">
									<div class="subj_box">
										<p class="common-text_title">
											<b>제목</b>
										</p>
									</div>
									<div class="date_box center-left">
										<p class="common-text_reg-date" style="width:140px;">
											<b>경력</b>
										</p>
									</div>
									<div class="date_box center-left">
										<p class="common-text_reg-date" style="width:140px;">
											<b>마감일자</b>
										</p>
									</div>
									<div class="date_box center-left">
										<p class="common-text_reg-date" style="width:140px;">
											<b>상태</b>
										</p>
									</div>
								</li>
								<c:if test="${!empty list}">
									<c:forEach var="recruit" items="${list}">
										<li id="postList">
											<div class="subj_box">
												<p class="common-text_title">
													<a href="/user/recruit/getRecruitDetail/${recruit.recruitNo}">
													${recruit.recruitTitle}
													</a>
												</p>
											</div>
											<div class="date_box center-left">
												<p class="common-text_reg-date" style="width:140px;">
													${recruit.career}
												</p>
											</div>
											<div class="date_box center-left">
											<c:choose>
												<c:when test="${recruit.recruitEnd != null}">
													<p class="common-text_reg-date" style="width:140px;">
														${recruit.recruitEnd}
													</p>
												</c:when>
												<c:otherwise>
													<p class="common-text_reg-date" style="width:140px;">
														-
													</p>
												</c:otherwise>
											</c:choose>
											</div>
											<div class="date_box center-left">
												<p class="common-text_reg-date" style="width:140px;">
													<c:choose>
														<c:when test="${recruit.contentsStatus == 'Y'}">채용중</c:when>
														<c:when test="${recruit.contentsStatus == 'R'}">상시채용</c:when>
													</c:choose>
												</p>
											</div>
										</li>
									</c:forEach>
								</c:if>
								<c:if test="${empty list}">
										<li id="postList">
											<div class="subj_box">
												<p class="common-text_txt2 notice_empty_txt">
													등록된 자료가 없습니다.
												</p>
											</div>
										</li>								
								</c:if>
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
