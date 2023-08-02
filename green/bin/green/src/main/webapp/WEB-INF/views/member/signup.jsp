<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/signup.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>회원가입</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="sign-up">
			<div class="title">회원가입</div>
			<div class="info">
				<p class="label">이름</p>
				<input class="insert" type="text" name="name" id="name">
			</div>
			<div class="info">
				<p class="label">아이디</p>
				<input class="insert" type="text" name="id" id="id">
			</div>
			<div class="info">
				<p class="label">비밀번호</p>
				<input class="insert" type="password" name="pass" id="pass">
			</div>
			<div class="info">
				<p class="label">비밀번호 확인</p>
				<input class="insert" type="password" name="passCheck"
					id="passCheck">
			</div>
			<div class="info">
				<p class="label">이메일</p>
				<input class="insert" name="email" id="email">
			</div>
			<div class="info">
				<p class="label">이메일 인증</p>
				<div class="e-valid">
					<input type="text" name="emailCheck" id="emailCheck">
					<button class="idenBtn">인증</button>
				</div>
			</div>

			<div class="btns">
				<button class="signupBtn" onclick="hello()">회원가입</button>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>
<script type="text/javascript">
	function hello() {
		alert('가입을 축하합니다!');
		window.location.href = "../../index.jsp"
	}
</script>