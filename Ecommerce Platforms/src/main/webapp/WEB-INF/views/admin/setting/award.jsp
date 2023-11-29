<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<jsp:include page="/WEB-INF/views/admin/common/header.jsp">
	<jsp:param value="수상 관리" name="title" />
</jsp:include>
<c:set var="now" value="<%=new java.util.Date()%>" />
<c:set var="nowYear">
	<fmt:formatDate value="${now}" pattern="yyyy" />
</c:set>

<div class="content-wrapper">
	<section class="content-header">
		<h1>
			수상관리 
			<small>Award</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li>Setting</li>
			<li class="active">수상관리</li>
		</ol>
	</section>

	<section class="content" style="padding:15px 15px 0 15px">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<div class="box-body">
						<label style="margin-top: 5px;">총 ${awardList.size() } 건</label>
						<div class="box-tools pull-right" style="margin-bottom: 5px;"></div>
						<form name="form_list" method="post" action="${pageContext.request.contextPath }/admin/award/award_process?${_csrf.parameterName}=${_csrf.token}">
							<input type="hidden" name="mode" id="mode">
							<input type="hidden" name="locale" id="locale" value="${locale}">
							<table class="table table-bordered table-hover">
								<thead>
									<tr>
										<td style="width: 30px;"><input type="checkbox" name="select_all" onclick="selectAllCheckBox( 'form_list');" /></td>
										<td style="width: 60px;">NO</td>
										<td style="width: 100px;">년도</td>
										<td style="width: 100px;">월</td>
										<td style="width: 100px;">일</td>
										<td style="">주최</td>
										<td style="">내용</td>
										<td style="width: 80px;">명령</td>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="award" items="${awardList }">
										<tr>
											<td><input type="checkbox" name="list[]" value="${award.awardNo }" /></td>
											<td>${award.ROWNUM }</td>
											<td><fmt:formatDate value="${award.awardDate }" pattern="yyyy"/></td>
											<td><fmt:formatDate value="${award.awardDate }" pattern="MM"/></td>
											<td><fmt:formatDate value="${award.awardDate }" pattern="dd"/></td>
											<td style="text-align: left;">${award.host }</td>
											<td style="text-align: left;">${award.content }</td>
											<td><button type="button" onclick="onclickUpdate(${award.awardNo});" class="btn btn-primary btn-xs">상세보기</button></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</form>
						<br>
						<button type="button" onclick="selectDelete();" class="btn btn-danger btn-sm">
							<i class="fa fa-minus-square"></i> 선택삭제
						</button>
						<button type="button" onclick="onclickInsert()" class="btn btn-primary btn-sm">
							<i class="fa fa-plus-square"></i> 수상 등록
						</button>
						<!-- <button type="button" onclick="onclickCopyContent();" class="btn btn-warning btn-sm" style="margin-left: 20px;">
							<i class="fa fa-copy"></i> 연혁 복사
						</button> -->
						<div style="text-align: right;">
							<ul class="pagination" style="margin: 0;">
								<li class="active"><a href="?tpf=admin/setting/award&locale=ko&page=1">1</a></li>
							</ul>
						</div>
					</div><!-- /.box-body -->
				</div><!-- /.box -->
			</div><!-- /.col-xs-12 -->
		</div><!-- /.row --> 
	</section><!-- /.content -->

	<div class="modal fade" id="modalContent" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
		<div class="modal-dialog" style="width: 650px;">
			<div class="modal-content">
				<form name="form_register" method="post" action="${pageContext.request.contextPath }/admin/award/award_process?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data">
					<input type="hidden" name="mode" id="mode" value="insert"> 
					<input type="hidden" name="awardNo" id="awardNo" value="0"> 
					<input type="hidden" name="locale" id="locale" value="${locale}">
					<input type="hidden" name="fullDate" value="" />
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabelPortfolio">수상 관리</h4>
					</div>
					<div class="modal-body">
						<h4>
							<p class="text-light-blue">
								<i class="fa fa-fw fa-info-circle"></i> 연혁 <span id="board_sub_title">등록</span>
							</p>
						</h4>
						<table class="table table-bordered">
							<tr>
								<td class="menu">년도</td>
								<td align="left">
									<select name="year" class="form-control input-sm" style="width: 120px;">
										<option value="">선택</option>
										<c:forEach begin="0" end="${nowYear - 1980}" var="result" step="1">
											<option value="<c:out value="${nowYear-result}"/>">
											<c:out value="${nowYear-result}" /></option>
										</c:forEach>	
									</select>
								</td>
							</tr>
							<tr>
								<td class="menu">월</td>
								<td align="left">
									<select name="month" class="form-control input-sm" style="width: 120px;">
										<option value=""></option>
										<c:forEach begin="1" end="12" var="month" step="1">
											<option value="${month }">${month }</option>
										</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td class="menu">일</td>
								<td align="left">
								<select name="date" class="form-control input-sm" style="width: 120px;">
									<option value=""></option>
									<c:forEach begin="1" end="31" var="day" step="1">
										<option value="${day }">${day }</option>
									</c:forEach>
								</select>
							</tr>
							<tr>
								<td class="menu">주최</td>
								<td align="left"><input type="text" name="host" class="form-control input-sm" placeholder=" 예) 환경부 주최 " style="width: 26%;" /></td>
							</tr>
							<tr>
								<td class="menu">내용</td>
								<td align="left"><textarea name="content" rows="4" style="width: 100%"></textarea></td>
							</tr>
							<tr>
								<td class="menu">파일 <span class="text-light-blue"><i class="fa fa-check"></i></span></td>
								<td align="left">
									<div class="awardFileTd" id="cImg"></div>
									<input type="file" name="awardImage" class="form-control input-sm" style="width: 70%; display: inline;" accept="image/*"> 
								</td>
							</tr>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" onclick="register()" class="btn btn-primary">확인</button>
						&nbsp;&nbsp;&nbsp;
					</div>
				</form>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal-dialog -->
	</div><!-- /.modal fade -->

	<div class="modal fade" id="modalCopyList" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
		<div class="modal-dialog" style="width: 400px;">
			<div class="modal-content">
				<form name="awardCopyContent" method="post" action="${pageContext.request.contextPath }/admin/setting/award_process?${_csrf.parameterName}=${_csrf.token}">
					<input type="hidden" name="mode" id="mode" value="copyContent"> <input type="hidden" name="locale" value="${locale}"> <input type="hidden" name="code" id="code">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
						<h4 class="modal-title" id="myModalLabelPortfolio">연혁 복사</h4>
					</div>
					<div class="modal-body">
						<h4>
							<p class="text-light-blue">
								<i class="fa fa-fw fa-info-circle"></i> 연혁 <span id="board_sub_title">복사</span>
							</p>
						</h4>
						<table class="table table-bordered">
							<tbody>
								<tr>
									<td class="menu">폼메일 선택</td>
									<td align="left">
										<select name="to_locale" class="form-control input-sm">
											<option value="">선택</option>
											<option value="en">ENG</option>
											<option value="zh">中国</option>
											<option value="vn">Tiếng việt</option>
										</select>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" onclick="registerCopyContent()" class="btn btn-primary">확인</button>
					</div>
				</form>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal-dialog -->
	</div><!-- /.modal fade -->
</div><!-- /.content-wrapper -->

<script>
	function register() {
	    if(form_register.year.value == '') { alert('년도가 선택되지 않았습니다.'); form_register.year.focus(); return false;}
	    if(form_register.month.value == '') { alert('월이 선택되지 않았습니다.'); form_register.month.focus(); return false;}
	    if(form_register.date.value == '') { alert('일이 선택되지 않았습니다.'); form_register.date.focus(); return false;}
	    if(form_register.content.value == '') { alert('내용이 입력되지 않았습니다.'); form_register.content.focus(); return false;}
	    if($('form[name="form_register"] #mode').val() != 'update'){
	    	if(form_register.awardImage.value == '') { alert('이미지는 필수 사항입니다.'); form_register.content.focus(); return false;}
	    }
	    var zero = num => num < 10 && num >= 0 ? "0" + num : num;
	    var year =$("[name=year]").val();
	    var month =$("[name=month]").val();
	    var date =$("[name=date]").val();
	    var fullDate ="";
	    fullDate = zero(year)+zero(month)+zero(date);
	    $("input[name=fullDate]").attr('value',fullDate);

	    if(!confirm("수상 정보를 등록하시겠습니까?")){
			alert("취소 되었습니다.");
			return;
		}else{
			form_register.target = 'iframe_process';
		    form_register.submit();
		    setTimeout("location.reload()", 500);
			$('#modalContent').modal('hide');
		}
	}
	
	function setData(code) {
	    $.ajax({
			url:'${pageContext.request.contextPath}/admin/award/getAward',
			type:'post',
			dataType:'json',
			headers: {
	            "${_csrf.headerName}" : "${_csrf.token}"
	        },
			data:{
				awardNo : code
			},
			success(data){
	            var date = new Date(data.awardDate);
	            $('form[name="form_register"] #mode').val('update');
	            $('[name=awardNo]').val(data.awardNo);
	            $('[name=year]').val(date.getFullYear());
	            $('[name=month]').val(date.getMonth() + 1);
	            $('[name=date]').val(date.getDate());
	            $('[name=fullDate]').val();
	            $('[name=content]').val(data.content);
	            $('[name=host]').val(data.host);
	            if(data.imgUrl != null){
	            	$("#display_awardImage").remove();
	            	$(".awardFileTd").html('');
					 var image = "'${pageContext.request.contextPath}/resources/user/images/company/award/"+data.imgUrl+"'"
					 if(data.imgUrl != null && data.imgUrl != ''){
						 var display = data.imgUrl + '&nbsp;&nbsp;&nbsp;<span id="display_awardImage" name="awardImageSpan">'
										+ '<button type="button" onclick="window.open('+image+')" class="btn btn-success btn-xs">보기</button>'
										+ '</span>';
					 $(".awardFileTd").append(display);
					 }else{
						 var display = '<span id="display_awardImage" name="awardImageSpan">'
									  + '</span>';	
					 }
				 }
			},
		});
	}
	
	function onclickInsert() {
	    $('#modalContent').modal('show');
	    form_register.reset();
	    $('form[name="form_register"] #mode').val('insert');
	    $('#display_file').css('display','none')
	}
	
	function onclickUpdate(code) {
	    $('#modalContent').modal({backdrop:'static', show:true});
	    setData(code);
	}
	
	// 복사 체크버튼 및 모달창
	function onclickCopyContent() {
	    var count = $(":input[name = 'list[]']").length;
	    if(count > 0) {
	        if(isCheckedBox('form_list')) {
	            var f = eval('form_list');
	            var chkBox = document.getElementsByName('list[]');
	            var chkLen = chkBox.length;
	            var code = '';
	
	            for(i=0;i<chkLen;i++) {
	                if(chkBox[i].checked) {
	                    code += chkBox[i].value+',';
	                }
	            }
	            $('#modalCopyList').modal({backdrop:'static', show:true});
	            awardCopyContent.code.value = code.substr(0, code.lastIndexOf(','));
	        }
	        else {
	            alert('항목을 선택하여야 합니다.');
	            return false;
	        }
	    }
	    else {
	        alert('항목이 없습니다.');
	        return false;
	    }
	}
	
	// 복사 확인버튼
	function registerCopyContent() {
	    if(awardCopyContent.to_locale.value == '') { alert('복사할 연혁이 선택되지 않았습니다.'); awardContent.to_locale.focus(); return false;}
	    awardCopyContent.target = 'iframe_process';
	    awardCopyContent.to_locale.value = $('select[name=to_locale]').val();
	    awardCopyContent.submit();
	}
	
	// 파일 업로드
	$("input[type=file]").change(function(e){
	   // 이미지 업로드
	   var file = e.target;
	   //var imgPreview = document.getElementById("imgPreview");
	   var form = new FormData();
	   form.append("image", file.files[0]);
	
	   var settings = {
	     "url": "https://api.imgbb.com/1/upload?key=f84bfb11eb3ee5eedb859de8b49fdff1",
	     "method": "POST",
	     "timeout": 0,
	     "processData": false,
	     "mimeType": "multipart/form-data",
	     "contentType": false,
	     "data": form
	   };
	   
	   // 이미지 업로드 -> 확인
	   $.ajax(settings).done(function (response) {
	     var imgbb = JSON.parse(response);
	     
	     // 이미지 조회 및 다운로드
	     var url = imgbb.data.thumb.url;
	     $('[name=imgUrl]').val(url);
	   });
	});
</script>
<jsp:include page="/WEB-INF/views/admin/common/footer.jsp"></jsp:include>