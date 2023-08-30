<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../../../resources/styles/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../../../resources/styles/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../../../resources/styles/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../../../resources/styles/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<link rel="stylesheet" href="../../../resources/styles/login.css">
<link rel="stylesheet" href="../../../resources/styles/util.css">
<!--===============================================================================================-->
<script src="../../../resources/styles/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="../../../resources/styles/vendor/bootstrap/js/popper.js"></script>
<script src="../../../resources/styles/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="../../../resources/styles/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<link rel="stylesheet" href="/resources/styles/font.css">
<title>로그인</title>
</head>
<script>
	window.onload = function() {
		document.getElementById('Submit').onclick = enter;
		document.getElementById('Submit').onclick = check;
	}

	function enter() {
		if (window.event.keyCode == 13) {
			check();
		}
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
		document.form.submit(); //전송
	}
</script>
<div class="limiter">
	<div class="container-login100">
		<div class="wrap-login100">
			<div class="login100-pic js-tilt" data-tilt>
				<img src="../../../resources/imgs/login.jpg" alt="IMG" onclick="location.href='../member/main.do'">
			</div>
			<form class="login100-form validate-form" name="form" action="loginSave.do" method="post" name="userinput">
				<span class="login100-form-title"> 환영합니다! </span>

				<div class="wrap-input100 validate-input" data-validate="아이디를 입력하세요">
					<input class="input100" type="text" name="id" placeholder="아이디를 입력하세요.">
					<span class="focus-input100"></span>
					<span class="symbol-input100">
						<i class="fa fa-envelope" aria-hidden="true"></i>
					</span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="비밀번호를 입력하세요." onkeyup="enter()">
					<input class="input100" type="password" name="password" placeholder="비밀번호를 입력하세요." onkeyup="enter()">
					<span class="focus-input100"></span>
					<span class="symbol-input100">
						<i class="fa fa-lock" aria-hidden="true"></i>
					</span>
				</div>

				<div class="container-login100-form-btn">
					<button class="login100-form-btn" id="Submit">로그인</button>
				</div>

				<div class="text-center p-t-12">
					<a class="txt2" href="../member/searchID.do"> 아이디 찾기 </a> <a>&nbsp&nbsp|&nbsp&nbsp</a>
					<a class="txt2" href="../member/searchPass.do"> 비밀번호 찾기 </a>
				</div>

				<div class="text-center p-t-70">
					<a class="txt2" href="../member/signup.do"> 아직 멤버가 아니신가요?
						<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
					</a>
				</div>
			</form>
		</div>
	</div>
</div>
<body>

</body>
</html>