<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="/WEB-INF/views/admin/common/header.jsp">
	<jsp:param value="1:1문의" name="title"/>
</jsp:include>

<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="nowDate"/>  
<head>
<meta charset="utf-8">
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<!-- Bootstrap 3.3.7 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
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
	<!-- <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script> -->
	<script src="${pageContext.request.contextPath}/resources/plupload/js/jquery.ui.plupload/jquery.ui.plupload.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plupload/js/i18n/ko.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plupload/js/jquery.ui.plupload/css/jquery.ui.plupload.css">
<!-- Google Font -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
<style>
.cke{
	visibility:hidden;
}
</style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ckeditor4.7.2/config.js"></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/ckeditor4.7.2/skins/editor.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ckeditor4.7.2/lang/ko.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ckeditor4.7.2/styles.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/ckeditor4.7.2/plugins/tableresize/plugin.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/ckeditor4.7.2/plugins/scayt/dialog.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/ckeditor4.7.2/plugins/tableselection/tableselection.css">

	<script type="text/javascript">
		$(function(){
			//post 선택삭제 시작
			$("#deleteChoicePost").on("click", function(){
				
				var postArr = new Array();
				var mode = "delete";
				var boardNo = $("input[name='boardNo']").val();
							
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
		  			 	 url : "/admin/board/json/postProcess?${_csrf.parameterName}=${_csrf.token}",
			  		  	 type : "POST",
		  		  	 	 data : { postArr : postArr,
		  		  	 		 	  mode
		  		  	 		  	},
		    		 	 success : function(result){
		   			  		alert("게시글이 삭제 되었습니다.")
		   			  		location.href = "/admin/board/postList?boardNo="+boardNo;
		  		  	 	 }
			  		});		
				}
			})	
		})
		
		function fncPost(){
			var secNo = $("input[name='secNo']").val();
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
		
		const paging = (cPage) => {
			$("input[name='cPage']").val(cPage)
			$("form[name='searchForm']").attr("method" , "POST").attr("action" , "/admin/board/postList?${_csrf.parameterName}=${_csrf.token}").submit();
		}
		
		function fncUp(){
			var boardAsc = $("input:radio[name='order_code']:checked").val();
			var boardIndex = $("input:radio[name='order_code']:checked").parent().parent().index()+1;
			var boardUpAsc = $("tr").eq(boardIndex-1).children().find("input:radio").val();
			var postNo = $("input:radio[name='order_code']:checked").parent().parent().find("input[name='originNo']").val();
			var boardNo = $("input[name='boardNo']").val();
			if(boardIndex == 0){
				alert("1개의 항목을 선택하여야 합니다.")
				return;
			}
			if(boardAsc == boardUpAsc){
				boardIndex--;
				boardUpAsc = $("tr").eq(boardIndex-1).children().find("input:radio").val();
				var upPostNo = $("tr").eq(boardIndex-1).children().find("input[name='originNo']").val();
			}else{
				var upPostNo = $("tr").eq(boardIndex-1).children().find("input[name='originNo']").val();
			}
			if(boardIndex == 1){
				alert("더이상 상위로의 위치 변경은 불가능합니다.");
				return;
			}else{
		  		$.ajax({
				 	 url : "/admin/board/json/updateUpAsc?${_csrf.parameterName}=${_csrf.token}",
		 		  	 type : "POST",
			  	 	 data : { 
			  	 		boardAsc,
			  	 		boardUpAsc,
			  	 		postNo,
			  	 		upPostNo
			  	 	 },
				 	 success : function(result){
				 		if(result == true){
				 			location.reload();
				 		}
				  	 }
		 		});	
			}
		}		
		
		function fncDown(){
			var boardAsc = $("input:radio[name='order_code']:checked").val();
			var boardIndex = $("input:radio[name='order_code']:checked").parent().parent().index()+1;
			var boardDownAsc = $("tr").eq(boardIndex+1).children().find("input:radio").val();
			var postNo = $("input:radio[name='order_code']:checked").parent().parent().find("input[name='originNo']").val();
			var boardNo = $("input[name='boardNo']").val();
			if(boardIndex == 0){
				alert("1개의 항목을 선택하여야 합니다.")
				return;
			}
			if(boardAsc == boardDownAsc){
				boardIndex++;
				boardDownAsc = $("tr").eq(boardIndex+1).children().find("input:radio").val();
				var downPostNo = $("tr").eq(boardIndex+1).children().find("input[name='originNo']").val();
			}else{
				var downPostNo = $("tr").eq(boardIndex+1).children().find("input[name='originNo']").val();
			}
			if(boardIndex == 5){
				alert("더이상 하위로의 위치 변경은 불가능합니다.")
				return;
			}else{
		  		$.ajax({
				 	 url : "/admin/board/json/updateDownAsc?${_csrf.parameterName}=${_csrf.token}",
		 		  	 type : "POST",
			  	 	 data : { 
			  	 		boardAsc,
			  	 		boardDownAsc,
			  	 		postNo,
			  	 		downPostNo
			  	 	 },
				 	 success : function(result){
				 		if(result == true){
				 			location.reload();
				 		}
				  	 }
		 		});				
			}
		}
	</script>
<script src="${pageContext.request.contextPath}/resources/ckeditor_4.18.0_0efc8d0dbe1a/ckeditor/ckeditor.js"></script>
</head>

<body class="skin-red sidebar-mini modal-open" style="height: auto; min-height: 100%;">
<iframe name="iframe_process" width="0" height="0" frameborder="0" style="display:none;"></iframe>

<div class="wrapper" style="height: auto; min-height: 100%;">
<!-- content-wrapper -->
<div class="content-wrapper" style="min-height: 1060px;">

	<section class="content-header">
	    <h1>
	    ${board2.boardTitle} 관리
	    <small>${board2.boardTitle} list</small>
	    </h1>
	
	    <ol class="breadcrumb">
	        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
	        <li class="active">${board2.boardTitle} 관리</li>
	    </ol>
	</section>

	<section class="content">
	    <div class="row">
	        <div class="col-xs-12">
	            <div class="box">
	                <div class="box-body">
	                    <label style="margin-top:5px;">총 ${pageCount} 건</label>
	                    <form name="searchForm" method="post" action="/admin/board/postList?${_csrf.parameterName}=${_csrf.token}">
		                    <div class="box-tools pull-right" style="margin-bottom:5px;">
		                    	<input type="hidden" name="boardNo" value="${boardNo}">
		                    	<input type="hidden" name="cPage">
		                        <div class="has-feedback">
			                        <span>
			                      	  <input type="text" name="searchKeyword" id="searchKeyword" class="form-control input-sm" placeholder="검색" value="${search.searchKeyword}"/>
			                      	  <span class="glyphicon glyphicon-search form-control-feedback"></span>
			                        </span>
		                        </div>
		                    </div>
		                    <div class="box-tools pull-right" style="margin-bottom:5px;">
		                        <div class="has-feedback">
			                        <select name="searchType" class="form-control input-sm" style="float:left; width:130px;">
			      						<option value="1">제목</option>      
			      						<option value="2">작성자</option>                        
			      					</select>
		                        </div>
		                    </div>
	                    </form>
	                    <table class="table table-bordered table-hover">
		                    <form name="form_list" method="post">
			                    <thead>
				                    <tr>
				                        <td style="width:30px;">
				                      		<div class="allCheck">
												<input type="checkbox" name="allCheck" id="allCheck" /><label for="allCheck"></label>
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
				                        <td style="width:100px;">작성자</td>
				                        <td style="width:140px;">등록일</td>
				                        <td style="width:80px;">조회수</td>
				                        <c:if test="${board2.option.optionOrder eq 'y'}">
					                        <td style="width:60px;">
					                            <i onclick="fncDown();" name="up" class="fa fa-fw fa-arrow-circle-down cp" style="cursor:pointer;"></i>
					                            <i onclick="fncUp();" class="fa fa-fw fa-arrow-circle-up cp" style="cursor:pointer;"></i>
					                        </td>
				                        </c:if>
				                        <td style="width:100px;">다운로드수</td>
				                        <td style="width:80px;">명령</td>
				                    </tr>
			                    </thead>
			                    <tbody>
				                    <c:forEach var="post" items="${list}">
					                    <c:if test="${post.post_notice eq '1'}">
						                    <tr>
						                        <td></td>
						                        <td>공지</td>          
						                   		<td align="left">
						                   			<c:if test="${nowDate eq post.post_date}">
						                   				<img src="${pageContext.request.contextPath}/resources/imgs/imageBoard/new.png" width="15">
						                   			</c:if>           
							                		<c:if test="${post.post_layer > 0}">
							                			&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/resources/imgs/imageBoard/right.png" width="15">
							                			&nbsp;&nbsp;
							                		</c:if>                   				     				
						                   			${post.post_title}
						                   			<c:if test="${post.post_thombnail != null && post.post_thombnail != ''}">
						                   				<img src="${pageContext.request.contextPath}/resources/imgs/imageBoard/disk.png" width="15">
						                   			</c:if>
						                   		</td>        
						                        <td>${post.member_name}</td>            
						                        <td>${post.post_date}</td>                        
						                        <td>${post.post_viewcount}</td>
						               			<c:if test="${board2.option.optionOrder eq 'y'}">
						               				<td>
						               					<input type="radio" name="order_code" value="${post.post_asc}" chack="">
						               					<input type="hidden" name="originNo" value="${post.post_origin_no}">
						               				</td>
						               			</c:if>                        
						                        <td>${post.post_downloadcount}</td>
						                        <td>
						                			<button type="button" name="getPostBotton" data-toggle="modal" data-target="#modalContent4" class="btn btn-primary btn-xs" value="${post.post_no}">상세보기
						                			<input type="hidden" value="${post.member_no}"></button>
						                   		</td>
						                    </tr>
					                    </c:if>
				                    </c:forEach>
				                    <c:if test="${empty list}">
					                    <tr>
					                   		<td colspan="10"><br>등록된 자료가 없습니다.<br><br></td>
					                   	</tr>
				                    </c:if>
				                   	<c:forEach var="post" items="${list}">
					                	<c:if test="${post.post_notice eq '0'}">
					                   		<c:set var="i" value="${ i+1 }" />
					                   		<tr>
					                        	<td>
							                        <div>
							                        	<input type="checkbox" class="postNo" name="postNo"  value="${post.post_no}" />
							                        	<script>
															$(".postNo").click(function() {
																$("#allCheck").prop("checked", false);
															});
														</script>
													</div>
					                        	</td>
					                   			<td>
					                   				<fmt:formatNumber type="number" maxFractionDigits="0" value="${post.row_no}" />
					                   			</td>
					                   			<td align="left">
					                   				<c:if test="${nowDate eq post.post_date}">
					                   					<img src="${pageContext.request.contextPath}/resources/imgs/imageBoard/new.png" width="15">
					                   				</c:if>           
						                			<c:if test="${post.post_layer > 0}">
						                				&nbsp;&nbsp;<img src="${pageContext.request.contextPath}/resources/imgs/imageBoard/right.png" width="15">
						                				&nbsp;&nbsp;
						                			</c:if>                   				     				
					                   				${post.post_title}
					                   				<c:if test="${post.post_thombnail != null && post.post_thombnail != ''}">
					                   					<img src="${pageContext.request.contextPath}/resources/imgs/imageBoard/disk.png" width="15">
					                   				</c:if>
					                   			</td>
					                   			<td>${post.member_name}</td>
					                   			<td>
						                        	${post.post_date}
						                        </td>
					                   			<td>${post.post_viewcount}</td>
					                   			<c:if test="${board2.option.optionOrder eq 'y'}">
						                   			<td>
						                   				<input type="radio" name="order_code" value="${post.post_asc}" chack="">
						                   				<input type="hidden" name="originNo" value="${post.post_origin_no}">
						                   			</td>
					                   			</c:if>
					                   			<td>${post.post_downloadcount}</td>
					                   			<td>
						                   			<button type="button" name="getPostBotton" data-toggle="modal" data-target="#modalContent4" class="btn btn-primary btn-xs" value="${post.post_no}">상세보기
						                   			</button>
					                   			</td>
					                   		</tr>
					                      </c:if>
				                   	 </c:forEach>                  	                   
			      				</tbody>
		      				</form>
	                    </table>
	                    <br>
	                    <button type="button" id="deleteChoicePost" class="btn btn-danger btn-sm"><i class="fa fa-minus-square"></i> 선택삭제</button>
	                    <button type="button" onclick="fncPost()" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modalContent"><i class="fa fa-plus-square"></i> 글 등록</button>
	                    <button type="button" onclick="fncBoardTitle2()" class="btn btn-warning btn-sm"><i class="fa fa-random"></i> 게시물 복사</button>
	                    <button type="button" onclick="fncBoardTitle()" class="btn btn-warning btn-sm"><i class="fa fa-random"></i> 게시물 이전</button>
						<div style="text-align: right;">
							${pagebar}
						</div>
	                </div><!-- /.box-body -->
	            </div><!-- /.box -->
	        </div><!-- /.col-xs-12 -->
	    </div><!-- /.row -->
	</section><!-- /.content -->
<script>
	$(function() {
		var result = {
				"success" : 0,
				"fail" : 0
		}
		var boardNo = $("input[name='boardNo']").val();
	    var uploader = $("#uploader").plupload({
	    	
	        // General settings
	        runtimes : 'html5,flash,silverlight,html4',
	        multiple_queues: true,
	        multipart: true,
	        url : "/admin/board/json/plupload?${_csrf.parameterName}=${_csrf.token}",
	        
			//파일 형식 필터 집합
	        filters : {
	            // Maximum file size
	            max_file_size : '1000mb',
	            // Specify what files to browse for
	        },
            init : {
            	FileUploaded: function(up, file, result) {
                   console.log(file.name)
                   var fileName = '<input type="hidden" name="postName" id="postName" value="'+file.name+'" class="form-control input-sm" style="width:100%; display:inline; margin-bottom:10px;">'
                   $("#file_list").append(fileName);
                   up.start();
                }
            },
        
	        //대기열에 있는 파일 이름 변환
	        rename: true,
			
	        //업로드 우선 순위 변경 파일 정렬
	        sortable: true,
	
	        //드래그 앤 드롭 하여 파일 삽입 가능
	        dragdrop: true,
	
	        // Views to activate
	        views: {
	            list: true,
	            thumbs: true, // Show thumbs
	            active: 'thumbs'
	        },

	        // Flash swf의 url
	        flash_swf_url : '../../js/Moxie.swf',
	
	        // Silverlight xap의 URL
	        silverlight_xap_url : '../../js/Moxie.xap'
	    });
		
	    $('#form').submit(function(e) {
	        // Files in queue upload them first
	        if ($('#uploader').plupload('getFiles').length > 0) {
	
	            // When all files are uploaded submit form
	            $('#uploader').on('complete', function() {
	                $('#form')[0].submit();
	            });
	
	            $('#uploader').plupload('start');
	        } else {
	            alert('You must have at least one file in the queue.');
	        }
	        return false; // Keep the form from submitting
	    });
	});

	function fncAddPost(){
		if("${board2.option.optionMass}" != "y"){
			var postFile = $("input[id='postName']").length;
			var postTitle = $("input[id='postTitle']").val();
			var postContents = CKEDITOR.instances.editor.getData();
			var postName = new Array(postFile);
			if(postTitle == null || postTitle == ''){
				alert("제목을 입력하셔야 합니다.");
				return;
			}else if(postContents == null || postContents == ''){
				alert("내용을 입력하셔야 합니다.");
				return;
			}
			
			for(var i = 0; i < postFile; i++){
				postName[i] = $("input[id='postName']")[i].value;
				//alert(postName[i])
			}	
			alert("게시글이 등록 되었습니다.")
			$("form[name='addPostForm']").attr("method", "POST").attr("action", "/admin/board/postProcess?${_csrf.parameterName}=${_csrf.token}").submit();
		}else if("${board2.option.optionMass}" == "y"){
			var postFile = $("input[id='postName']").length;
			var postTitle = $("input[id='postTitle']").val();
			var postContents = CKEDITOR.instances.editor.getData();
			var postName = new Array(postFile);
			if(postTitle == null || postTitle == ''){
				alert("제목을 입력하셔야 합니다.");
				return;
			}else if(postContents == null || postContents == ''){
				alert("내용을 입력하셔야 합니다.");
				return;
			}
			
			for(var i = 0; i < postFile; i++){
				postName[i] = $("input[id='postName']")[i].value;
				//alert(postName[i])
			}	
			
			alert("게시글이 등록 되었습니다.")
			$("form[name='addPostForm']").attr("method", "POST").attr("action", "/admin/board/postProcess?${_csrf.parameterName}=${_csrf.token}").submit();	
		}
	}
	
	function fucAddFile(){
		$("div[name='listFile']").append('<input type="file" name="postName" id="postName" class="form-control input-sm" style="width:100%; display:inline; margin-bottom:10px;">');
	}
</script>

<div class="modal fade" id="modalContent" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog">
        <div class="modal-content">
            <form name="addPostForm" method="post" enctype="multipart/form-data">
	            <input type="hidden" name="mode" id="mode" value="insert">
	            <input type="hidden" name="secNo" value="<sec:authentication property='principal.memberNo'/>">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	                <h4 class="modal-title" id="myModalLabelPortfolio">게시물 관리</h4>
	            </div>
	            <div class="modal-body">
		            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 글 <span id="board_sub_title">등록</span></p></h4>
			        <table class="table table-bordered">
			            <tbody>
				            <tr>
				                <td class="menu">작성자</td>
				                <td align="left"><input type="text" name="name" id="name" class="form-control input-sm"></td>
				            </tr>
				            <c:if test="${board2.option.optionAddinfo eq 'y'}">
					            <tr>
					                <td class="menu">휴대전화</td>
					                <td align="left"><input type="text" name="phone" id="phone" class="form-control input-sm" style="width:50%;"></td>
					            </tr>
					            <tr>
					                <td class="menu">이메일</td>
					                <td align="left"><input type="text" name="email" id="email" class="form-control input-sm" style="width:50%;"></td>
					            </tr>
				            </c:if>
				            <tr>
				                <td class="menu">제목</td>
				                <td align="left">
					                <span style="float:left;width:80%;"><input type="text" name="postTitle" id="postTitle" class="form-control input-sm"></span>
					                <c:if test="${board2.option.optionNotice eq 'y'}">
						                <span>&nbsp;&nbsp;
						                	<input type="checkbox" name="titleNotice" value="y">공지사항
						                </span>
						            </c:if>
				                </td>
				            </tr>
							<tr>
				                 <td class="menu">내용</td>
				                 <td align="left">
				                 	<textarea name="postContents" id="content" rows="10" cols="80" style="visibility: hidden; display: none;"></textarea>
				                 	<script type="text/javascript">
									 CKEDITOR.replace('editor'
									                , {filebrowserUploadUrl:'/admin/board/imageUpload?${_csrf.parameterName}=${_csrf.token}'}
									 );
									</script>
				                 </td>
				            </tr>
					            <c:if test="${board2.option.optionSecret eq 'y'}">
						            <td class="menu">비밀글</td>
						            <td align="left">
						                <span>&nbsp;&nbsp;
						                	<input type="checkbox" name="is_secret" value="y"></span>
						                </td>
						            <tr>
					            </c:if>
				                <td class="menu">썸네일 파일</td>
				                <td align="left">
					                <input type="file" name="ThombnailName" id="ThombnailName" class="form-control input-sm" style="width:80%; display:inline;">
					                <span id="display_thumbnail" style="display:none;">
					                	<button type="button" onclick="winOpen('?tpf=common/image_view&amp;file_name=product/'+$('#code').val()+'_1');" class="btn btn-success btn-xs">보기</button>
					                	<button type="button" onclick="confirmIframeDelete('?tpf=common/image_delete&amp;file_name=product/'+$('#code').val()+'_1&amp;table=product&amp;code='+$('#code').val());" class="btn btn-danger btn-xs">삭제</button>
					                </span>
				                </td>
				            </tr>
				            <tr>
				                <td class="menu">파일</td>
				                <td align="left">
					                <c:if test="${board2.option.optionMass eq null}">
						                <p>
						                    <span id="file_list"></span>            
						                </p>
										
						                <p style="padding-top:10px; float:left; width:100%;">
						                    <button type="button" class="btn btn-primary btn-xs" onclick="fucAddFile();"><span class="glyphicon glyphicon-plus"></span> 파일추가</button><br>
						                </p>
					                    <div id="list_file" name="listFile"></div>
					                </c:if>
					                <c:if test="${board2.option.optionMass eq 'y'}">
						                <p id="diplay-plupload">
						                    <span id="file_list"></span>            
						                </p>  
										<div id="uploader"></div>                              
					                </c:if> 
				                </td>
				            </tr>
			            </tbody>
		            </table>
		            <c:if test="${board2.option.optionComment eq 'y'}">
						<div id="displayMemo" style="">
			            	<h4>
			            		<p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 댓글 관리</p>
			            	</h4>
			            </div>
		            </c:if>
	            </div><!-- /.modal-body -->
	            <div class="modal-footer">
	            	<button type="button" onclick="fncAddPost()" class="btn btn-primary">확인</button>&nbsp;&nbsp;&nbsp;
	            </div>
	            <input type="hidden" value="${boardNo}" name="boardNo">
	        </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal fade -->

<div class="modal fade" id="modalContent2" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog" style="width:400px;">
        <div class="modal-content">
            <form name="form_copy_data" method="post" action="?tpf=admin/board/process">
            <input type="hidden" name="mode" id="mode">
            <input type="hidden" name="code" id="code">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabelPortfolio">게시물 관리</h4>
            </div>
            <div class="modal-body">

            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 게시물 <span id="board_sub_title2"></span></p></h4>
            <table class="table table-bordered">
            <tbody><tr>
                <td class="menu">게시판 제목</td>
                <td align="left">
                <select name="board_code" id="board_code" class="form-control input-sm">
                <option value="">선택</option>
  <option value="1">공지사항</option>  <option value="2">자주하는 질문</option>  <option value="3">1:1 문의</option>                </select>
                </td>
            </tr>
            </tbody></table>
            </div>

            <div class="modal-footer">
            <button type="button" onclick="registerCopyData()" class="btn btn-primary">확인</button>&nbsp;&nbsp;&nbsp;
            </div>
            </form>
        </div>
    </div>
</div>

<div id="list_file_tag" class="sr-only">
    <input type="file" name="file[]" class="form-control input-sm" style="width:100%; display:inline; margin-bottom:10px;">
</div>

<script src="${pageContext.request.contextPath}/resources/ckeditor4.7.2/ckeditor.js"></script>
</div><!-- /.content-wrapper -->

<footer class="main-footer">
	<div class="pull-right hidden-xs">
	    <b>Version</b> 2.7.4
	</div>
	<strong>NDC&C<a href="/admin">  Since:2017  </a> Phone 031-712-8315 | Fax 031-789-3545</strong>
</footer>
</div>

<script>
        var objEditor = CKEDITOR.replace('content', {
			height: 300,
            extraPlugins : 'tableresize',
            filebrowserUploadUrl: '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
            filebrowserImageUploadUrl: '/daemon/ckeditor_upload.php?command=QuickUpload&type=Images',
            fillEmptyBlocks : true
		});
        CKEDITOR.on('dialogDefinition', function (ev) {
            var dialogName = ev.data.name;
            var dialog = ev.data.definition.dialog;
            var dialogDefinition = ev.data.definition;

            if (dialogName == 'image') {
                dialog.on('show', function (obj) {
                    this.selectPage('Upload'); //업로드텝으로 시작
                });
                dialogDefinition.removeContents('advanced'); // 자세히탭 제거
                dialogDefinition.removeContents('Link'); // 링크탭 제거
            }
		});
        $.fn.modal.Constructor.prototype.enforceFocus = function () {
            modal_this = this
            $(document).on('focusin.modal', function (e) {
                if (modal_this.$element[0] !== e.target && !modal_this.$element.has(e.target).length && !$(e.target.parentNode).hasClass('cke_dialog_ui_input_select') && !$(e.target.parentNode).hasClass('cke_dialog_ui_input_text')) {
                    modal_this.$element.focus()
                }
            })
        }
</script>

<!-- <div class="modal-backdrop fade in"></div> -->
</body>
</html>