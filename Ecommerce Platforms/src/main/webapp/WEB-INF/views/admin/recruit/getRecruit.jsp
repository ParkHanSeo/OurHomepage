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
			
			//반복되는 상세내용
			let contents = result.contents;
			console.log("contents.length >>>>", contents.length);
			
			let addContents_u =""
			if(contents.length > 0){
				for(let i = 0; i < contents.length; i++){
					$("#addContents_u").append(
							`<tr>
								<td class="menu">소제목</td>
								<td align="left"><input type="text" name="subTitle_u` + i + `"
								id="subTitle_u" class="form-control input-sm"
								style="width: 50%;" placeholder="소제목을 입력해 주세요."></td>
							</tr>
							<tr>
								<td class="menu">내용</td>
								<td align="left">
									<textarea name="contents_u` + i + `" id="contents_u"
										rows="10" cols="80" placeholder="내용을 입력해 주세요."></textarea>
								</td>
							</tr>
						<tr>
							<td class="menu">썸네일 파일</td>
							<td align="left">
								<input type="file" name="ThombnailName_u` + i + `" id="ThombnailName_u" class="form-control input-sm" style="width: 80%; display: inline;"> 
								<span id="display_thumbnail" style="display: none;">
										<button type="button" onclick="confirmIframeDelete('?tpf=common/image_delete&amp;file_name=product/'+$('#code').val()+'_1&amp;table=product&amp;code='+$('#code').val());"
											class="btn btn-danger btn-xs">삭제</button>
								</span>
							</td>
						</tr>`);
					
					$("input[name='subTitle_u"+ i +"']").val(contents[i].recruitSubTitle);
					$("textarea[name='contents_u"+ i +"']").val(contents[i].recruitContents);
					$("input[name='ThombnailName_u"+ i +"']").val(contents[i].fileName);
					console.log(">>>>>>" , $("input[name='ThombnailName_u"+ i +"']").val(contents[i].fileName))
					
				}
				
				}
			},
		error: function(result){
			alert("실패~~~ㅠ_ㅠ" + result);
		}
	})
})

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
					<button type="button" onclick="addContents()"
						class="btn btn-primary"
						style="background: rgb(118, 118, 118); border-color: rgb(118, 118, 118);">내용추가</button>
					<button type="button" onclick="addRecruit()"
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