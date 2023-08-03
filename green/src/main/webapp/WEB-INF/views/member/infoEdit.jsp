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
<body>
	<div class="container">
		<%@include file="../layouts/header.jsp"%>
		<div class="login_container">
			<p class="title">회원 정보</p>
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
				<input class="insert" type="password" name="pass" id="pass">
			</div>

			<div class="info">
				<p class="label">전화번호&nbsp&nbsp</p>
				<input class="insert" type="password" name="pass" id="pass">
			</div>

			<div class="info">
				<p class="label">이름&nbsp&nbsp</p>
				<input class="insert" type="password" name="pass" id="pass">
			</div>

			<div class="info">
				<p class="label">주소&nbsp&nbsp</p>
				<input class="insert" type="password" name="pass" id="pass">
			</div>

			<div class="btns">
				<button class="editBtn">수정하기</button>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>