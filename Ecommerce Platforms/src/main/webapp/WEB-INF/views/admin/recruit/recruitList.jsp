<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="/WEB-INF/views/admin/common/header.jsp">
	<jsp:param value="채용" name="title"/>
</jsp:include>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<!-- Ionicons -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ionicons.min.css">
	<!-- jvectormap -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-jvectormap.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/AdminLTE.min.css">
	<!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/_all-skins.min.css">
	<link href="${pageContext.request.contextPath}/resources/css/admin.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/resources/css/jquery-ui.css" rel="stylesheet">
	
	<!-- jQuery 3 -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="${pageContext.request.contextPath}/resources/js/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="${pageContext.request.contextPath}/resources/js/adminlte.min.js"></script>
	<!-- Sparkline -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.sparkline.min.js"></script>
	<!-- jvectormap  -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-jvectormap-world-mill-en.js"></script>
	<!-- SlimScroll -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.slimscroll.min.js"></script>
	<!-- ChartJS -->
	<script src="${pageContext.request.contextPath}/resources/js/Chart.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/common.js" type="text/javascript" charset="utf-8"></script>
	
	<!-- plupload -->
	<script src="${pageContext.request.contextPath}/resources/plupload/js/plupload.full.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plupload/js/jquery.ui.plupload/jquery.ui.plupload.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plupload/js/i18n/ko.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plupload/js/jquery.ui.plupload/css/jquery.ui.plupload.css">
	
	<script type="text/javascript">
		$(function(){
			//post 선택삭제 시작
			$("#deleteChoicePost").on("click", function(){
				
				var postArr = new Array();
				/* var mode = "delete"; */
				/* var boardNo = $("input[name='boardNo']").val(); */
							
				$("input[class='postNo']:checked").each(function(){
					postArr.push($(this).val());
				});
				if(postArr.length == 0){
					alert("항목을 선택하셔야 합니다.");
					return;
				}
				if(!confirm("해당 자료를 정말 삭제 하시겠습니까?")){
					alert("취소 되었습니다.");
					return;
				}else{
			  		$.ajax({
		  			 	 /* url : "/admin/board/json/postProcess?${_csrf.parameterName}=${_csrf.token}", */
		  			 	 url : "/admin/deleteRecruit?${_csrf.parameterName}=${_csrf.token}",
			  		  	 type : "POST",
		  		  	 	 data : { postArr : postArr,
		  		  	 		  	},
		    		 	 success : function(result){
		    		 		alert(result.message)
		   			  		alert("게시글이 삭제 되었습니다.")
		   			  		location.href = "/admin/recruitList";
		  		  	 	 }
			  		});		
				}
			})	
		})
		
		function fncPost(){
			var secNo = $("input[name='secNo']").val();
			$("#addContents").html('');
			$.ajax({
				url : "/admin/board/json/getMemberData/"+secNo,
				method : "GET",
				dataType : "JSON",
				headers : {
					"Accept" : "application/json",
					"Content-Type" : "application/json"	 						
				} ,
				success : function(JSONData, status){
					$("#name").val(JSONData.lastName+JSONData.firstName);
					$("#phone").val(JSONData.phone);
					$("#email").val(JSONData.email);
					$("#name").val(JSONData.lastName+JSONData.firstName);
				}
			})
		}
		
		/* const paging = (cPage) => {
			$("input[name='cPage']").val(cPage)
			$("form[name='searchForm']").attr("method" , "POST").attr("action" , "/admin/board/recruitList").submit();
		} */
	</script>
	
	<script src="${pageContext.request.contextPath}/resources/ckeditor_4.18.0_0efc8d0dbe1a/ckeditor/ckeditor.js"></script>
</head>
<style>
/* recruit css */

#searchBox {
	width: 210px;
	height: 30px;
    border: 1px solid #3c8dbc;
    background: fffff;
}

#searchKeyword {
	font-size: 12px;
	width: 150px;
	padding: 5px 10px;
	border: 0px;
	outline: none;
    float: left;
}

#searchBtn {
	width: 50px;
	height: 100%;
	border: 0px;
	background: #3c8dbc;
	outline: none;
	float: right;
	color: #ffffff;
}

</style>
<div class="content-wrapper">
	<section class="content-header">
	    <h1>
	    채용 관리
	    <small>채용 list</small>
	    </h1>
	
	    <ol class="breadcrumb">
	        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
	        <li class="active">채용 관리</li>
	    </ol>
	</section>
	
	<section class="content">
	    <div class="row">
	        <div class="col-xs-12">
	            <div class="box">
	                <div class="box-body">
	                    <label style="margin-top:5px;">총 ${pageCount} 건</label>
	                    <form name="searchForm" method="post" action="/admin/board/recruitList?${_csrf.parameterName}=${_csrf.token}">
		                    <div class="box-tools pull-right" style="margin-bottom:5px;">
		                    	<%-- <input type="hidden" name="boardNo" value="${boardNo}"> --%>
		                    	<input type="hidden" name="cPage">
		                        <div id="searchBox">
			                      	  <input type="text" name="searchKeyword" id="searchKeyword" placeholder="제목으로 검색">
			                      	  <button type="submit" id="searchBtn" >검색</button>
		                        </div>
		                    </div>
	                    </form>
	                    <table class="table table-bordered table-hover">
		                    <form name="form_list" method="post">
			                    <thead>
				                    <tr>
				                        <td style="width:30px;">
				                      		<div class="allCheck">
												<input type="checkbox" name="allCheck" id="allCheck" />
												<!-- <label for="allCheck"></label> -->
												<script>
													$("#allCheck").click(function() {
														var chk = $("#allCheck").prop("checked");
														if (chk) {
															$('.postNo').prop("checked", true);
														} else {
															$('.postNo').prop("checked", false);
														}
													});
												</script>
											</div>
				                        </td>
				                        <td style="width:60px;">NO</td>
				                        <td>제목</td>
				                        <td style="width:100px;">경력</td>
				                        <td style="width:140px;">시작일</td>
				                        <td style="width:140px;">마감일</td>
				                        <td style="width:140px;">등록일</td>
				                        <td style="width:80px;">조회수</td>
				                        <td style="width:80px;">명령</td>
				                    </tr>
			                    </thead>
			                    <tbody>
				                    <c:forEach var="post" items="${list}">
						                    <tr>
						                        <td>
						                        	<div>
						                        		<input type="checkbox" class="postNo" name="postNo" value="${post.recruitNo}">
						                        	</div>
						                        </td><!-- 체크박스 -->
						                        <td>${post.rownum}</td>   <!-- 번호 -->       
						                   		<td align="left">${post.recruitTitle}</td>        
						                        <td>${post.career}</td>            
						                        <td >${post.recruitStart}</td>                        
						                        <td>${post.recruitEnd}</td>
						               			<td>${post.recruitDate}</td>        
						               			<td>${post.recruitViewcount}</td>             
						                        <td>
						                			<button type="button" name="getPostBotton" data-toggle="modal" data-target="#modalContent4" class="btn btn-primary btn-xs" value="${post.recruitNo}">상세보기</button>
						                			<%-- <input type="hidden" value="${post.postMember.memberNo}"></button> --%>
						                   		</td>
						                    </tr>
				                    </c:forEach>
				                    <c:if test="${empty list}">
					                    <tr>
					                   		<td colspan="10"><br>등록된 자료가 없습니다.<br><br></td>
					                   	</tr>
				                    </c:if>            
			      				</tbody>
		      				</form>
	                    </table>
	                    <br>
	                    <button type="button" id="deleteChoicePost" class="btn btn-danger btn-sm"><i class="fa fa-minus-square"></i> 선택삭제</button>
	                    <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modalContent"><i class="fa fa-plus-square"></i> 글 등록</button>
	                    <div style="text-align: right;">
							${pagebar}
						</div>
	                </div><!-- /.box-body -->
	            </div><!-- /.box -->
	        </div><!-- /.col-xs-12 -->
	    </div><!-- /.row -->
	</section><!-- /.content -->
	
	<div id="list_file_tag" class="sr-only">
	    <input type="file" name="file[]" class="form-control input-sm" style="width:100%; display:inline; margin-bottom:10px;">
	</div>
	
<jsp:include page="/WEB-INF/views/admin/recruit/addRecruit.jsp"/>
<jsp:include page="/WEB-INF/views/admin/recruit/getRecruit.jsp"/>
</div><!-- /.content-wrapper -->

<footer class="main-footer">
	<div class="pull-right hidden-xs">
	    <b>Version</b> 2.7.4
	</div>
	<strong>NDC&C<a href="/admin">  Since:2017  </a> Phone 031-712-8315 | Fax 031-789-3545</strong>
</footer>