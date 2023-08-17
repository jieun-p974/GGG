<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/dogamWrite.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<script type="text/javascript">
	$(function(){
		$("#write").click(function(){
			var form = document.getElementById("dogamInput");
					
			if($("#do_title").val().length()==0 || $("#do_content").val().length()==0){
				alert("입력이 완료되지 않았습니다.");
				return false;
			}
		});
	});
</script>
<title>도감 추가</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/adminHeader.jsp"%>
		<div class="dogamWriting">
			<div class="title">관리자 도감 추가 페이지</div>
			<div class="writing">
				<form action="saveDogam.do" method="post" id="dogamInput">			
					<label for="title">동물이름</label> 
					<input type="text" name="do_title" id="do_title" >
					<label for="title">요약정보</label> 
					<input type="text" name="do_yoyak" id="do_yoyak" style="width:1000px;">
					<textarea name="do_content" id="do_content" placeholder="설명을 입력해 주세요."
						style="margin-top: 1%"></textarea>
					<div class="buttons" style="margin-top:2%">
						<button type="reset">취소</button>
						<button id="write" type="submit">등록</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>