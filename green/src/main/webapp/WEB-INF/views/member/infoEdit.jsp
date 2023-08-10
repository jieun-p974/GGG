<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/infoEdit.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>마이페이지 | 회원정보수정</title>
</head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">		
$(document).ready(function() {

	$("#editBtn").on("click", function() {
		
		if ($("#password").val() == "") {
			alert("비밀번호를 입력해주세요.");
			$("#password").focus();
			return false;
		}
		
		if ($("#passCheck").val() == "") {
			alert("비밀번호 확인란을 입력해주세요.");
			$("#passCheck").focus();
			return false;
		}
		
		if($("#password").val()!=$("#passCheck").val()){
			alert("비밀번호가 일치하지 않습니다.");
			$("#passCheck").focus();
			return false;
		}
		 		
		document.userinput.submit();//전송
		alert("회원정보가 수정되었습니다.");
		location.href = "../member/mypage.do"; 
		
	});
	
	
})

	
</script>

<body>
	<div class="container">
		<%@include file="../layouts/header.jsp"%>
		<div class="login_container">
			<p class="title">회원 정보</p>
			
			<div class="info">
				<p class="label">이름&nbsp&nbsp</p>
				<input class="insert" type="text" name="name" id="name" disabled>
			</div>
			
			<div class="info">
				<p class="label">아이디&nbsp&nbsp</p>
				<input class="insert" type="text" name="id" id="id" disabled>
			</div>

			<div class="info">
				<p class="label">비밀번호&nbsp&nbsp</p>
				<input class="insert" type="password" name="pass" id="pass">
			</div>

			<div class="info">
				<p class="label">비밀번호확인&nbsp&nbsp</p>
				<input class="insert" type="password" name="password" id="password">
			</div>

			<div class="info">
				<p class="label">전화번호&nbsp&nbsp</p>
				<input class="insert" type="text" name="tel" id="tel">
			</div>

			<div class="info">
				<p class="label">이메일주소</p>
				<input class="insert" type="text" name="email" id="email">
			</div>

			<div class="btns">
				<button class="editBtn">수정하기</button>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>