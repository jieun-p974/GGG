<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../../../resources/styles/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../../../resources/styles/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../../../resources/styles/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../../../resources/styles/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<link rel="stylesheet" href="../../../resources/styles/signup.css">
<link rel="stylesheet" href="../../../resources/styles/util.css">
<!--===============================================================================================-->
<script
	src="../../../resources/styles/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="../../../resources/styles/vendor/bootstrap/js/popper.js"></script>
<script
	src="../../../resources/styles/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="../../../resources/styles/vendor/select2/select2.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!--===============================================================================================-->

<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>회원가입</title>
</head>

<body>
	<div class="limiter">
		<%-- <%@include file="../layouts/header.jsp"%> --%>
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form mt-5" name="form" action="signupSave.do" method="post" enctype="multipart/form-data">
					<span class="login100-form-title mt-5"> 회원가입 </span>
					<p class=input_title>아이디</p>
					<div class="d-flex">
					<div class="wrap-input100 validate-input col-9"
						data-validate="아이디를 입력하세요">
						 <input class="input100 mt-2 mb-3" type="text" name="id"
							id="id" placeholder="아이디를 입력하세요."/> 
							<span class="focus-input100"></span>
					</div>
							<!-- 아이디 중복체크 -->
							<span id="idCheckResult" style="font-size: 0.9rem; width: 200px; color: red; margin-top:25px;"></span>
					</div>
					
					<p class=input_title>비밀번호</p>
					<div class="wrap-input100 validate-input"
						data-validate="비밀번호를 입력하세요." onkeyup="enter()">
						 <input class="input100 mt-2 mb-3" type="password"
							name="password" id="password" placeholder="비밀번호를 입력하세요."
							onkeyup="enter()"> <span class="focus-input100"></span>
					</div>
					
					<p class=input_title> 비밀번호 확인 </p>
					<div class="wrap-input100 validate-input"
						data-validate="비밀번호를 입력하세요." onkeyup="enter()">
						 <input class="input100 mt-2 mb-3" type="password"
							 id="passCheck" placeholder="비밀번호를 입력하세요."
							onkeyup="enter()"> <span class="focus-input100"></span>
					</div>
					
					<p class=input_title> 이름	</p>
					<div class="wrap-input100 validate-input">
						 <input class="input100 mt-2 mb-3" type="text" name="name"
							id="name" placeholder="이름을 입력하세요." onkeyup="enter()"> <span
							class="focus-input100"></span>
					</div>
					
					<p class=input_title> 전화번호</p>
					<div class="wrap-input100 validate-input">
						 <input class="input100 mt-2 mb-3" type="text" name="tel"
							id="tel" placeholder="전화번호를 입력하세요." onkeyup="enter()"> <span
							class="focus-input100"></span>
					</div>
					
					<p class=input_title> 이메일주소</p>
					<div class="wrap-input100 validate-input">
						 <input class="input100 mt-2 mb-3" type="email" name="email"
							id="email" placeholder="이메일주소를 입력하세요." onkeyup="enter()"> <span
							class="focus-input100"></span>
					</div>

					<p class=input_title> 이메일 인증</p>
					<div class="wrap-input100 validate-input">
						
						<div class="d-flex col-12 p-0">
							<input class="input100 mt-2 mb-3" type="text" 
								id="emailCheck" placeholder="인증번호를 입력하세요." onkeyup="enter()">
							<button class="login100-form-btn mt-2 mb-3 ms-2" style="width:30%;"  
								>발송</button>
							<span class="focus-input100"></span>
						</div>
					</div>
					
					<p class=input_title> 프로필사진(선택)</p>
					<div class="wrap-input100 validate-input">
						 <input class="input100 mt-2 mb-3" type="file" name="file" id="file"
						onkeyup="enter()" />
						<span class="focus-input100"></span>
					</div>


					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="button" id="confirm">회원가입</button>
					</div>



					<div class="text-center p-t-12 mt-3">
						<a class="txt2" href="../member/searchID.do"> 아이디 찾기 </a> <a>&nbsp&nbsp|&nbsp&nbsp</a>
						<a class="txt2" href="../member/searchPass.do"> 비밀번호 찾기 </a>
					</div>
					
					<div class="text-center p-t-70">
						<a class="txt2" href="../member/login.do">
							이미 멤버이신가요?
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript">
	window.onload = function() {
		document.getElementById('confirm').onclick = check;
	}
	function check() {
		if ($("#id").val() == "") {
			alert("아이디를 입력해주세요.");
			$("#id").focus();
			return false;
		}
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
		if ($("#passCheck").val() != $("#password").val()) {
			alert("비밀번호가 일치하지 않습니다.");
			$("#passCheck").focus();
			return false;
		}
		if ($("#name").val() == "") {
			alert("이름을 입력해주세요.");
			$("#name").focus();
			return false;
		}
		if ($("#tel").val() == "") {
			alert("전화번호를 입력해주세요.");
			$("#tel").focus();
			return false;
		}
		if ($("#email").val() == "") {
			alert("이메일주소를 입력해주세요.");
			$("#email").focus();
			return false;
		}
		if ($("#emailCheck").val() == "") {
			alert("인증번호를 입력해주세요.");
			$("#emailCheck").focus();
			return false;
		}

		document.form.submit();
	}

	// 아이디 중복체크
	$('#id').keyup(function() {
		// 로그인 프로세스 호출
		$.ajax({
			type : 'post', // 전송방식
			async : true, // 비동신통신
			url : 'idCheck.do', // **** 요청
			contentType : 'application/x-www-form-urlencoded;charset=UTF-8', // 한글
			data : "id=" + $("#id").val(), // 클라이언트에서 보내는 데이타
			success : function(resultData) { // 성공하면 함수연결
				// alert("resultData = "+resultData)
				$('#idCheckResult').html(resultData);
			}
		});
	});
</script>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>