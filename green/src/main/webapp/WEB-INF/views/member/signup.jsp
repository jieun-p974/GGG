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
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">		
	$(document).ready(function(){
		
			$("#submit").on("click", function(){
				if($("#userId").val()==""){
					alert("아이디를 입력해주세요.");
					$("#userId").focus();
					return false;
				}
				if($("#userPass").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#userPass").focus();
					return false;
				}
				if($("#userName").val()==""){
					alert("성명을 입력해주세요.");
					$("#userName").focus();
					return false;
				}
			});
		})

	function hello() {
		alert('가입을 축하합니다!');
		window.close();
	}

</script>

<body>
	<div class="container ">
	<form action="/member/signup" method="post">
		<%@include file="../layouts/header.jsp"%>
			<div class="sign-up">
				<div class="title">회원가입</div>
				<div class="info">
					<p class="label">이름</p>
					<input class="insert" type="text" name="userName" id="userName"/>
				</div>
				<div class="info">
					<p class="label">아이디</p>
					<input class="insert" type="text" name="userID" id="userID"/>
				</div>
				<div class="info">
					<p class="label">비밀번호</p>
					<input class="insert" type="password" name="userPass" id="userPass"/>
				</div>
				<div class="info">
					<p class="label">비밀번호 확인</p>
					<input class="insert" type="password" name="passCheck" id="passCheck"/>
				</div>
				
				<div class="info">
					<p class="label">전화번호</p>
					<input class="insert" type="text" name="userTel" id="userTel"/>
				</div>
				
				<div class="info">
					<p class="label">이메일</p>
					<input class="insert" type="text" name="userEmail" id="userEmail"/>
				</div>
				<div class="info">
					<p class="label">이메일 인증</p>
					<div class="e-valid">
						<input type="text" name="emailCheck" id="emailCheck"/>
						<button class="idenBtn">인증</button>
					</div>
				</div>
	
				<div class="btns">
					<button id="submit" type="submit" class="signupBtn">회원가입</button>
				</div>
			</div>
		</form>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>
