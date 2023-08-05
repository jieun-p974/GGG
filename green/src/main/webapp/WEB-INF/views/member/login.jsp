<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/login.css">
<title>로그인</title>
</head>
<script>
	window.onload = function() {
		document.getElementById('Submit').onclick = check;
	}

	function check() {
		if (document.form.id.value == "") {
			alert("ID를 입력하세요.")
			document.form.id.focus();
			return false;
		}
		if (document.form.password.value == "") {
			alert("패스워드를 입력하세요.")
			document.form.password.focus();
			return false;
		}
		
		document.form.submit();	//전송

	}

</script>

<body>
	<div class="container">
		<form name="form" action="loginSave.do" method="post" name="userinput">
			<div class="login">
				<img class="logo" src="../../../resources/imgs/logo.png" alt="로고" onclick="location.href='../../index.jsp'">
				<div class="info">
					<p class="label">아이디&nbsp&nbsp</p>
					<input class="insert" type="text" name="id" id="id">
				</div>

				<div class="info">
					<p class="label">비밀번호&nbsp&nbsp</p>
					<input class="insert" type="password" name="password" id="password">
				</div>

				<div class="menu">
					<ul class="menu_list">
						<li><a href="../member/searchID.do">아이디 찾기&nbsp&nbsp&nbsp</a>|</li>
						<li><a href="../member/searchPass.do">비밀번호 찾기&nbsp&nbsp&nbsp</a>|</li>
						<li><a href="../member/signup.do">회원가입</a></li>
					</ul>
					<input type="button" class="adminBtn" value="관리자로그인" onclick="location.href='../member/adminLogin.do'">
				</div>
				<input type="button" class="loginBtn" value="로그인" name="Submit" id="Submit">
			</div>
		</form>
	</div>
</body>
</html>

