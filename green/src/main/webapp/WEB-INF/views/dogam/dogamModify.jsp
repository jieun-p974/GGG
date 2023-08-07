<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/newsWrite.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<script type="text/javascript">
/* $(function(){
	var checkLv = "${dogam.do_lev}";
	$("#do_lev").val(checkLv);
}); */

$('#do_lev').change(function() {
	var value = document.getElementById('do_lev');
	alert(value.val());
});
</script>
<title>도감 수정</title>
</head>
<body>
	<div class="container">
		<%@include file="../layouts/adminHeader.jsp"%>
		<div class="newsWriting">
            <div class="title">관리자 도감 사진 첨부 페이지</div>
			<div class="writing">
				<form action="modiDogam.do" method="post">
				<input name="do_no" type="hidden" value="${dogam.do_no}" />
			
				<label for="do_name">동물 이름</label> 
					<input type="text" id="do_title" name="do_title" value="${dogam.do_title}" readonly/>
						
				<label for="do_lev">레벨</label> 
				<select name="do_lev" id="do_lev">
				<option value=1> 1 </option>
				<option value=2> 2 </option>
				<option value=3> 3 </option>
				</select>	
					<input type="file" id="file" name="file">
					<div class="buttons" style="margin-top:2%">
						<button>취소</button>
						<button type="submit">수정하기</button>
					</div>
				</form>
            </div>
        </div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>