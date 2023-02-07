<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<title>내담씨앤씨</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"content="initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width, user-scalable=no">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/partner.css">
<jsp:include page="/WEB-INF/views/user/common/script_css_js.jsp" />
</head>
  <body>
  <jsp:include page="/WEB-INF/views/user/common/header.jsp" />
        <section id="container">
            <div id="contents" class="contents_top">
				<div class="business_title_area">
                    <div class="inner_container">
                        <h2 class="sub_title business_sub_title">Partner</h2>
                    </div>
                </div><!-- // .sub_title_area -->                
				<div class="layout_section_outer type04" data-js="anchor-target" style="padding: 0 0  100px;">
                    <div class="inner_container">
                        <div class="layout_head">
                            <p class="top_txt1">
                            	내담씨앤씨의 Partner를 소개합니다.
                            </p>
                        </div>
                        <div class="layout_body">
	                         <div class="partner-flow">
	                             <ol class="flow_list">
	                             	<c:forEach var="partner" items="${list}" varStatus="status" >
		                                <li class="partner_li" style="background-image: url(${pageContext.request.contextPath}/resources/user/images/partner/${partner.partnerImage});">
		                                </li>
		                            </c:forEach>
	                             </ol>
	                         </div>
                        </div>
                    </div>
                </div>     
            </div><!-- // #contents -->
        </section><!-- // #container -->  
  <jsp:include page="/WEB-INF/views/user/common/footer.jsp" />	
  </body>
</html>
