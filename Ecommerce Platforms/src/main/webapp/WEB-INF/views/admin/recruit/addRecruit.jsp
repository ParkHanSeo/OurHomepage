<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="modal fade" id="modalContent" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog">
			<div class="modal-content">
				<form name="addPostForm" method="post" enctype="multipart/form-data">
					<input type="hidden" name="mode" id="mode" value="insert">
					<input type="hidden" name="secNo"
						value="<sec:authentication property='principal.memberNo'/>">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabelPortfolio">게시물 관리</h4>
					</div>
					<div class="modal-body">
						<h4>
							<p class="text-light-blue">
								<i class="fa fa-fw fa-info-circle"></i> 채용 글 <span
									id="board_sub_title">등록</span>
							</p>
						</h4>
						<table class="table table-bordered">
							<tbody>
								<tr>
									<td class="menu">제목<span style="color: red;">*</span></td>
									<td align="left"><input type="text" name="title"
										id="title" class="form-control input-sm"></td>
								</tr>
								<tr>
									<td class="menu">채용 시작일<span style="color: red;">*</span></td>
									<td align="left"><input type="date" name="startDay"
										id="startDay" class="form-control input-sm"
										style="width: 50%;"></td>
								</tr>
								<tr>
									<td class="menu">채용 마감일<span style="color: red;">*</span></td>
									<td align="left"><input type="date" name="endDay"
										id="endDay" class="form-control input-sm" style="width: 50%;"></td>
								</tr>
								<tr>
									<td class="menu">경력</td>
									<td align="left"><select name="career" id="career"
										class="form-control input-sm" style="width: 50%;">
											<option value="경력무관" selected="selected">경력무관</option>
											<option value="신입">신입</option>
											<option value="경력">경력</option>
									</select></td>
								</tr>
								<tr>
									<td class="menu">소제목</td>
									<td align="left"><input type="text" name="subTitle"
										id="subTitle" class="form-control input-sm"
										style="width: 50%;" placeholder="소제목을 입력해 주세요."></td>
								</tr>
								<tr>
									<td class="menu">내용</td>
									<td align="left">
										<textarea name="contents" id="contents"
												rows="10" cols="80" placeholder="내용을 입력해 주세요."></textarea>
									</td>
								</tr>
								<tr>
									<td class="menu">이미지 파일</td>
									<td align="left"><input type="file" name="ThombnailName"
										id="ThombnailName" class="form-control input-sm"
										style="width: 80%; display: inline;"> <span
										id="display_thumbnail" style="display: none;">
											<button type="button"
												onclick="winOpen('?tpf=common/image_view&amp;file_name=product/'+$('#code').val()+'_1');"
												class="btn btn-success btn-xs">보기</button>
											<button type="button"
												onclick="confirmIframeDelete('?tpf=common/image_delete&amp;file_name=product/'+$('#code').val()+'_1&amp;table=product&amp;code='+$('#code').val());"
												class="btn btn-danger btn-xs">삭제</button>
									</span></td>
								</tr>
							</tbody>
							<tbody id="addContents">
							</tbody>
						</table>
						<div>
							<span style="color: red;">*</span>는 필수 항목입니다.
						</div>
					</div>
					<!-- /.modal-body -->
					<div class="modal-footer">
						<button type="button" onclick="addContents()"
							class="btn btn-primary"
							style="background: rgb(118, 118, 118); border-color: rgb(118, 118, 118);">내용추가</button>
						<button type="button" onclick="addRecruit()" class="btn btn-primary">확인</button>
						&nbsp;&nbsp;&nbsp;
					</div>
				</form>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal fade -->
	<script type="text/javascript">
	
	function addContents(){
		$("#addContents").append(
				`<tr>
					<td class="menu">소제목</td>
					<td align="left"><input type="text" name="subTitle"
					id="subTitle" class="form-control input-sm"
					style="width: 50%;" placeholder="소제목을 입력해 주세요."></td>
				</tr>
				<tr>
					<td class="menu">내용</td>
					<td align="left">
						<textarea name="contents" id="contents"
							rows="10" cols="80" placeholder="내용을 입력해 주세요."></textarea>
					</td>
				</tr>
			<tr>
				<td class="menu">썸네일 파일</td>
				<td align="left">
					<input type="file" name="ThombnailName" id="ThombnailName" class="form-control input-sm" style="width: 80%; display: inline;"> 
					<span id="display_thumbnail" style="display: none;">
							<button type="button" onclick="winOpen('?tpf=common/image_view&amp;file_name=product/'+$('#code').val()+'_1');"
								class="btn btn-success btn-xs">보기</button>
							<button type="button" onclick="confirmIframeDelete('?tpf=common/image_delete&amp;file_name=product/'+$('#code').val()+'_1&amp;table=product&amp;code='+$('#code').val());"
								class="btn btn-danger btn-xs">삭제</button>
					</span>
				</td>
			</tr>`);
	}
	
	function addRecruit(){

			if($("#title").val().length == 0){
				alert("제목은 필수 항목입니다.");
				return;
			}
			if($("#startDay").val() == null || $("#startDay").val() == ''){
				alert("시작일은 필수 항목입니다.");
				return;
			}
			if($("#endDay").val() == null || $("#endDay").val() == ''){
				alert("마감일은 필수 항목입니다.");
				return;
			}
			if($("#startDay").val() > $("#endDay").val()){
				alert("시작일은 마감일보다 뒤일 수 없습니다.");
				return;
			}
			
			//반복작업 필요한 내용
			var subTitle = new Array();
			$("input[name='subTitle']").each(function(){
				subTitle.push($(this).val());
			})
			var contents = new Array();
			$("textarea[name='contents']").each(function(){
				contents.push($(this).val());
			})
			
			console.log("subTitle >>" + subTitle);
			console.log("contents >>" + contents);
			
			//FormData 새로운 객체 생성 
			var formData = new FormData();
			
			console.log("start>>>>>>>>>>>>>", $("#startDay").val());
			
			//넘길 데이터
			var data = {
					"recruitTitle": $("#title").val(),
					"recruitStart": $("#startDay").val(),
					"recruitEnd": $("#endDay").val(),
					"career": $("#career").val(),
					"subTitle": subTitle,
					"contents": contents		
			}
			
			
			var fileinput = $("input[name='ThombnailName']");
			console.log("fileinput >>>" + fileinput);
			
			for(var i = 0; i < fileinput.length; i++){
				if(fileinput[i].files.length > 0){
					for(var j = 0; j < fileinput[i].files.length; j++){
						console.log(" fileInput[i].files[j] :::"+ fileinput[i].files[j]);
						
						// formData에 'file'이라는 키값으로 fileInput 값을 append 시킨다.  
						formData.append('file', $("input[name='ThombnailName']")[i].files[j]);
					}
				}
			}
			
			// 'key'라는 이름으로 위에서 담은 data를 formData에 append한다. type은 json 
			formData.append('key', new Blob([ JSON.stringify(data) ], {type : "application/json"}));
			

			if(!confirm("채용 게시글을 등록하시겠습니까?")){
				alert("취소 되었습니다.");
				return;
			}else{

		  		$.ajax({
	  			 	 url : "/admin/insertRecruit?${_csrf.parameterName}=${_csrf.token}",
		  		  	 type : "POST",
	  		  	 	 data : formData,
	  		  	     processData: false,
	  		  	     contentType: false,
	  		  	     enctype: 'multipart/form-data',
	    		 	 success : function(result){
	    		 		console.log("result >> ", result);
	    		 		alert(result);
	   			  		location.href = "/admin/recruitList";
	  		  	 	 }
		  		});		
			}
		}
	
	</script>
</body>
</html>