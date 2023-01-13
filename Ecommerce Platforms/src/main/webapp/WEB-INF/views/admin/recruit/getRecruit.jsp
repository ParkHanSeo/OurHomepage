<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
p {
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
}

element.style {
	heigth: 150px;
	overflow-y: scroll;
}
</style>

<script>
$("button[name='getPostBotton']").on("click", function(){
	// 게시글 번호 받기
	let postNo = $(this).val();
	$("#file_u").html("");
	$("#addContents_u").html("");
	
	$.ajax({
		url: "/admin/getRecruitData?postNo="+postNo,
		type : "GET",
		success: function(result){

			//채용 게시글
			let recruitData = result.recruitData;
			//제목
			$("#title_u").val(recruitData.recruitTitle);
			//시작일(date)
			let startDay = $("#startDay_u").val(recruitData.recruitStart);
			console.log("startDay>>>>>" , startDay);
			//마감일(date)
			let endDay = $("#endDay_u").val(recruitData.recruitEnd);
			console.log("endDay>>>>>" , endDay);
			//경력(셀렉트)
			$("#career_u").val(recruitData.career).prop("selected",true);
			console.log("recruitData.fileName>>>", recruitData.fileName);
			//파일
			if(recruitData.fileName != null){
				//파일이 있을 때
				$("#file_u").append(`
						<!-- 파일값 하나 넣기 -->
						<td class="menu">파일1111</td>
						<td align="left">
							<span class="form-control input-sm">현재 파일 :` + recruitData.orgFileName + `</span> 
							<input type="hidden" id="orgFileName_u" name="orgFileName_u" class="form-control input-sm" value =`+ recruitData.orgFileName + `>
							<input type="file" id="fileName_u" name="fileName_u" class="form-control input-sm"> 
							<span id="display_thumbnail" style="display: none;">
								<button type="button" onclick="confirmIframeDelete('?tpf=common/image_delete&amp;file_name=product/'+$('#code').val()+'_1&amp;table=product&amp;code='+$('#code').val());" class="btn btn-danger btn-xs">삭제</button>
							</span>
						</td>`);
			}else {
				//파일이 없을 때
				$("#file_u").append(`
						<!-- 파일값 하나 넣기 2222222-->
						<td class="menu">파일2222</td>
						<td align="left">
						<span class="form-control input-sm">현재 파일 :</span> 
							<input type="hidden" id="orgFileName_u" name="orgFileName_u" class="form-control input-sm">
							<input type="file" id="fileName_u" name="fileName_u" class="form-control input-sm"> 
							<span id="display_thumbnail" style="display: none;">
								<button type="button" onclick="confirmIframeDelete('?tpf=common/image_delete&amp;file_name=product/'+$('#code').val()+'_1&amp;table=product&amp;code='+$('#code').val());" class="btn btn-danger btn-xs">삭제</button>
							</span>
						</td>`);
				
			}
			
			//반복되는 상세내용
			let contents = result.contents;

			if(contents.length > 0){
				for(let i = 0; i < contents.length; i++){
					$("#addContents_u").append(
							`<tr>
								<td class="menu">소제목</td>
								<td align="left"><input type="text" name="subTitle_u"
								id="subTitle_u`+ i +`" class="form-control input-sm"
								style="width: 50%;" placeholder="소제목을 입력해 주세요."></td>
							</tr>
							<tr>
								<td class="menu">내용</td>
								<td align="left">
									<textarea name="contents_u" id="contents_u`+ i +`"
										rows="10" cols="80" placeholder="내용을 입력해 주세요."></textarea>
								</td>
							</tr>
						<tr>`);
					
					$('#subTitle_u' + i).val(contents[i].recruitSubTitle);
					$('#contents_u' + i).val(contents[i].recruitContents);
					}
				
				}
			},
		error: function(result){
			alert("실패~~~ㅠ_ㅠ" + result);
		}
	})
})


function updateRecruit(){
	
	if(!confirm("채용 게시글을 수정하시겠습니까?")){
		alert("취소 되었습니다.");
		return;
	}else{
		
		if($("#title_u").val().length == 0){
			alert("제목은 필수 항목입니다.");
			return;
		}
		if($("#startDay_u").val() == null || $("#startDay_u").val() == ''){
			alert("시작일은 필수 항목입니다.");
			return;
		}
		if($("#endDay_u").val() == null || $("#endDay_u").val() == ''){
			alert("마감일은 필수 항목입니다.");
			return;
		}
		if($("#startDay_u").val() > $("#endDay_u").val()){
			alert("시작일은 마감일보다 뒤일 수 없습니다.");
			return;
		}
		if(($("#subTitle_u").val() == null) && ($("#contents_u").val() != null)){
			alert("소제목과 내용을 모두 입력해주세요.");
			return;
		}
		if(($("#subTitle_u").val() != null) && ($("#contents_u").val() == null)){
			alert("소제목과 내용을 모두 입력해주세요.");
			return;
		}
		
		//반복작업 필요한 내용
		var subTitle = new Array();
		$("input[name='subTitle_u']").each(function(){
			subTitle.push($(this).val());
		})
		var contents = new Array();
		$("textarea[name='contents_u']").each(function(){
			contents.push($(this).val());
		})
		
		console.log("subTitle >>" + subTitle);
		console.log("contents >>" + contents);
		
		//FormData 새로운 객체 생성 
		var formData = new FormData();
		
		console.log("start>>>>>>>>>>>>>", $("#startDay_u").val());
		
		//넘길 데이터
		var data = {
				"recruitTitle": $("#title_u").val(),
				"recruitStart": $("#startDay_u").val(),
				"recruitEnd": $("#endDay_u").val(),
				"career": $("#career_u").val(),
				"subTitle": subTitle,
				"contents": contents		
		}
		
		
		var fileinput = $("input[name='fileName_u']");
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
	
function addUpdateContents(){
	$("#addContents").append(
			`<tr>
				<td class="menu">소제목</td>
				<td align="left"><input type="text" name="subTitle_u"
				id="subTitle_u" class="form-control input-sm"
				style="width: 50%;" placeholder="소제목을 입력해 주세요."></td>
			</tr>
			<tr>
				<td class="menu">내용</td>
				<td align="left">
					<textarea name="contents_u" id="contents_u"
						rows="10" cols="80" placeholder="내용을 입력해 주세요."></textarea>
				</td>
			</tr>`);
}

</script>
<div class="modal fade" id="modalContent4" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog">
		<div class="modal-content">
			<form name="addPostForm" method="post" enctype="multipart/form-data">
				<input type="hidden" name="mode" id="mode" value="insert"> <input
					type="hidden" name="secNo"
					value="<sec:authentication property='principal.memberNo'/>">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabelPortfolio">게시물 수정</h4>
				</div>
				<div class="modal-body">
					<h4>
						<p class="text-light-blue">
							<i class="fa fa-fw fa-info-circle"></i> 채용 글 <span
								id="board_sub_title">수정</span>
						</p>
					</h4>
					<table class="table table-bordered">
						<tbody>
							<tr>
								<td class="menu">제목<span style="color: red;">*</span></td>
								<td align="left"><input type="text" name="title_u"
									id="title_u" class="form-control input-sm"></td>
							</tr>
							<tr>
								<td class="menu">채용 시작일<span style="color: red;">*</span></td>
								<td align="left"><input type="date" name="startDay_u"
									id="startDay_u" class="form-control input-sm"
									style="width: 50%;"></td>
							</tr>
							<tr>
								<td class="menu">채용 마감일<span style="color: red;">*</span></td>
								<td align="left"><input type="date" name="endDay_u"
									id="endDay_u" class="form-control input-sm" style="width: 50%;"></td>
							</tr>
							<tr>
								<td class="menu">경력</td>
								<td align="left"><select name="career_u" id="career_u"
									class="form-control input-sm" style="width: 50%;">
										<option value="경력무관" selected="selected">경력무관</option>
										<option value="신입">신입</option>
										<option value="경력">경력</option>
								</select></td>
							</tr>
							<!-- 파일 -->
							<tr id="file_u">
							</tr>
						</tbody>
						<tbody id="addContents_u">
						</tbody>
					</table>
					<div>
						<span style="color: red;">*</span>는 필수 항목입니다.
					</div>
				</div>
				<!-- /.modal-body -->
				<div class="modal-footer">
					<button type="button" onclick="addUpdateContents()"
						class="btn btn-primary"
						style="background: rgb(118, 118, 118); border-color: rgb(118, 118, 118);">내용추가</button>
					<button type="button" onclick="updateRecruit()"
						class="btn btn-primary">확인</button>
					&nbsp;&nbsp;&nbsp;
				</div>
			</form>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal fade -->