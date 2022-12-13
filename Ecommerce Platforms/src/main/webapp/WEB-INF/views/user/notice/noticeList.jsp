<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<title>내담씨앤씨</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$('.test').on("mouseenter",function(){
    alert("1");
});

$(document).on("clmouseenterick", ".test3", function(){
	alert("5");
});
</script>
</head>
  <body>
<div id="pinContainer">
	<h1 class="test">asdasd</h1>
	<a class="test2">test</a>
</div>
<button class="test3">클릭</button>
  </body>
</html>
