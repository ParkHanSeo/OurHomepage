<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>  

<jsp:include page="/WEB-INF/views/admin/common/header.jsp">
	<jsp:param value="기본 설정" name="title" />
</jsp:include>

<div class="content-wrapper">
	<section class="content-header">
		<h1>
			기본 설정 
			<small>setting</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li>기본 설정</li>
			<li class="active">기본정보 관리</li>
		</ol>
	</section>

	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<div class="box-body">
						<form name="form_register" method="post" action="${pageContext.request.contextPath}/admin/setting/process.do?${_csrf.parameterName}=${_csrf.token}" enctype="multipart/form-data">
							<div class="col-md-6">
								<input type="hidden" name="mode" value="info">
								<table class="table table-bordered">
									<tr>
										<td class="menu">관리자 메뉴<br>표출 설정</td>
										<td align="left">
											<c:forEach var="menu" items="${adminMenuList }">
												<input type="checkbox" name="admin_menu_list[]" value="${menu.menuNo }" ${menu.status == 'Y' ? 'checked' : '' } /> ${menu.menuName }<br> 
											</c:forEach>
										</td>
									</tr>
								</table>
							</div>
							<div align="center" class="col-md-12">
								<button type="button" onclick="register();" class="btn btn-primary btn-sm">
									<i class="fa fa-plus-square"></i> 확인
								</button>
							</div>
						</form>
					</div><!-- /.box-body -->
				</div><!-- /.box -->
			</div><!-- /.col-xs-12 -->
		</div><!-- /.row -->
	</section><!-- /.content -->

	<div class="modal fade" id="modalContent" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
		<div class="modal-dialog" style="width: 650px;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">연혁 관리</h4>
				</div>
				<div class="modal-body">
					<h4>
						<p class="text-light-blue">
							<i class="fa fa-fw fa-info-circle"></i> 연혁 설정 프리뷰 이미지
						</p>
					</h4>
					<table class="table table-bordered">
						<tr>
							<div id="myModalLabelPortfolioSkinPreviewImage">
								<img style="display: block; margin: 0px auto" />
							</div>
						</tr>
					</table>
				</div><!-- /.modal-body -->
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal-dialog -->
	</div><!-- /.modal fade -->

	<!-- 교환/반품/배송안내  -->
	<div class="modal fade" id="modalGuide" tabindex="-2" role="dialog" aria-labelledby="myModal" aria-hidden="true">
		<div class="modal-dialog" style="width: 70%;">
			<div class="modal-content">
				<form name="form_register2" method="post" onsubmit="return false;" action="${pageContext.request.contextPath}/admin/setting/process.do?${_csrf.parameterName}=${_csrf.token}">
					<input type="hidden" name="mode" value="updateGuide"> <input type="hidden" name="locale" value="ko">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title">교환/반품/배송안내 등록</h4>
					</div>
					<div class="modal-body">
						<div class="row" style="margin: 0">
							<div class="col-xs-4">
								<span style="float: left;"><h4>
										<p class="text-light-blue">
											<i class="fa fa-fw fa-info-circle"></i> 교환/반품/배송안내 등록
										</p>
									</h4>
								</span>
							</div>
							<div class="col-xs-8" style="padding: 0">
								<div class="btn-group pull-right">
									<button type="button" id="locale_ko" onclick="setLocale('ko')" class="btn btn-primary">
										<i class="fa fa-globe" aria-hidden="true"></i> 한국어
									</button>
									<button type="button" id="locale_en" onclick="setLocale('en')" class="btn btn-default">
										<i class="fa fa-globe" aria-hidden="true"></i> ENG
									</button>
									<button type="button" id="locale_zh" onclick="setLocale('zh')" class="btn btn-default">
										<i class="fa fa-globe" aria-hidden="true"></i> 中国
									</button>
									<button type="button" id="locale_vn" onclick="setLocale('vn')" class="btn btn-default">
										<i class="fa fa-globe" aria-hidden="true"></i> Tiếng việt
									</button>
								</div>
							</div>
						</div>
						<table class="table table-bordered">
							<tr>
								<td align="left" colspan="30" style="padding: 0">
									<textarea name="content" id="content" onfocus="javascript:this.value=''" rows="30" cols="80"></textarea>
								</td>
							</tr>
						</table>
					</div><!-- /.modal-body -->
					<div class="modal-footer">
						<button type="button" id="displayButton" onclick="register2();" class="btn btn-primary">저장하기</button>
					</div>
				</form>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal-dialog -->
	</div><!-- /.modal fade -->
<script src="//mir9.co.kr/resource/js/ckeditor4.7.2/ckeditor.js"></script>
</div><!-- /.content-wrapper -->

<script>
	function register() {
	    form_register.target = 'iframe_process';
	    if(form_register.email.value != '') {
	        if(!checkEmail(form_register.email.value)) { form_register.email.focus(); return false;}
	    }
	    if(form_register.mobile1.value != '') {
	        if(!checkMobile(form_register.mobile1.value+form_register.mobile2.value+form_register.mobile3.value)) { form_register.mobile.focus(); return false;}
	    }
	    form_register.submit();
	    setTimeout(function() {
	    	 location.reload();
	    	}, 700);
	}
	
	function viewSkinPreview(parameter) {
	    var previewImage = $(parameter).attr('src');
	    $('#modalContent').modal('show');
	    $('#myModalLabelPortfolioSkinPreviewImage').find('img').attr('src', previewImage);
	}
	
	if (window.CKEDITOR) {  // CKEDITOR loading 여부 체크 (Web 버젼에서만 사용)
	    var objEditor = CKEDITOR.replace('content', {
	        height: 500,
	        extraPlugins : 'tableresize',
	        filebrowserUploadUrl: '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
	        filebrowserImageUploadUrl: '/daemon/ckeditor_upload.php?command=QuickUpload&type=Images'
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
	}
	
	function onclickInsert() {
	    $('#modalGuide').modal({backdrop:'static', show:true});
	    form_register2.reset();
	    objEditor.setData('');
	    form_register.mode.value = 'insertGuide';
	    $('#displayButton').html('저장하기');
	    setData();
	}
	
	function setLocale(locale) {
	    $('button[id^=locale_]').attr('class', 'btn btn-default');
	    $('#locale_'+locale).attr('class', 'btn btn-primary');
	    $('[name=locale]').val(locale);
	}
	
	function register2() {
	    form_register2.target = 'iframe_process';
	    var tm_ckeditor = CKEDITOR.instances.content.getData();
	    if(tm_ckeditor == '') {
	        alert('내용이 입력되지 않았습니다.'); form_register2.content.focus(); return false;
	    }
	    form_register2.submit();
	}
	
	function setData() {
	    // 정보
	    $.ajax({
	        url:'${pageContext.request.contextPath}/admin/setting/getDeliveryNotice.do',
	        type:'post',
	        dataType:'json',
	        headers: {
	            "${_csrf.headerName}" : "${_csrf.token}"
	        },
	        data:{
	            locale : $('[name=locale]').val()
	        },
	        success:function(data, textStatus, jqXHR){
	            if (data.content == null) data.content = '';
	            //alert(json_data.content);
	            objEditor.setData(data.content);
	
	        },
	        error:function(jqXHR, textStatus, errorThrown){
	            // $('#content').val(errorThrown);
	        }
	    });
	}
	
	//이미지 업로드
	$("input[type=file]").change(function(e){
	   var file = e.target;
	   var form = new FormData();
	   var $target = $(e.target).parent().children(".img_url");
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
	     var url = imgbb.data.thumb.url;
	     $target.val(url);
	   });
	});
</script>

<jsp:include page="/WEB-INF/views/admin/common/footer.jsp"></jsp:include>