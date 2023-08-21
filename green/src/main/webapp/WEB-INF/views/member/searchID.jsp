<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>아이디 찾기</title>
<%
	String userEmail = (String) session.getAttribute("userEmail");
	String userID = (String) session.getAttribute("userID");
%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/login.css">
<script src="/resources/libs/OwlCarousel-2/dist/owl.carousel.min.js"></script>
<script src="/resources/js/jquery.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/custom.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/styles/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/styles/iconfont/tabler-icons.css">
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
<script src="${pageContext.request.contextPath}/resources/libs/OwlCarousel-2/dist/owl.carousel.min.js"></script>
<link rel="stylesheet" href="/resources/styles/font.css">
<title>아이디 찾기</title>
</head>
<script>
	window.onload = function() {
		document.getElementById('Submit').onclick = check;
	}

	function check() {
		if (document.form.email.value == "") {
			alert("이메일주소를 입력하세요.")
			document.form.email.focus();
			return false;
		}
		document.form.submit(); //전송		
	}
</script>
<body>
	<div class="container-login100">
		<div class="wrap-login100" style="width: 500px; height: 550px; justify-content: center;">
			<form class="login100-form validate-form" name="form" action="searchIDsave.do" method="post" name="userinput" id="userinput">
				<span class="login100-form-title"> 아이디 찾기 </span>
				<div class="wrap-input100 validate-input" data-validate="이메일주소를 입력하세요">
					<p class="label">이메일</p>
					<input class="input100" type="email" name="email" id="email">
				</div>
				<div class="wrap-input100 validate-input" data-validate="이메일로 받으신 인증번호를 입력하세요">
					<p class="label">이메일 인증</p>
					<div class="d-flex col-12">
						<input class="input100 col-8" type="text" name="num" id="num" placeholder="인증번호 입력">
						<button class="login100-form-btn" name="Submit" id="Submit" style="background: gray">발송</button>
					</div>
				</div>
				<button class="login100-form-btn" name="Submit" id="Submit">찾기</button>
				<div class="text-center p-t-12 mt-5">
					<a class="txt2" href="../member/login.do"> 로그인 </a> <a>&nbsp&nbsp|&nbsp&nbsp</a>
					<a class="txt2" href="../member/searchPass.do"> 비밀번호 찾기 </a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>