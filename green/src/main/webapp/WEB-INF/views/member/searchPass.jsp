<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/login.css">
<script src="/resources/libs/OwlCarousel-2/dist/owl.carousel.min.js"></script>
<script src="/resources/js/jquery.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/custom.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/styles/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/styles/iconfont/tabler-icons.css">
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
<script src="${pageContext.request.contextPath}/resources/libs/OwlCarousel-2/dist/owl.carousel.min.js"></script>
<link rel="stylesheet" href="/resources/styles/font.css">
<title>비밀번호 찾기</title>
<%
	String userID = (String) session.getAttribute("userID");
String userName = (String) session.getAttribute("userName");
String userTel = (String) session.getAttribute("userTel");
String userEmail = (String) session.getAttribute("userEmail");
%>
</head>


<body>
	<div class="container-login100">
		<div class="wrap-login100" style="width: 500px; height: 650px; justify-content: center;">
		<!-- 	<form class="login100-form validate-form" name="form" action="searchPassSave.do" method="post" name="userinput" id="userinput"> -->
				<span class="login100-form-title"> 비밀번호 찾기 </span>
				<div class="wrap-input100 validate-input" data-validate="아이디를 입력하세요">
					<p class="label">아이디</p>
					<input class="input100" type="text" name="id" id="id">
				</div>
				<div class="wrap-input100 validate-input" data-validate="이메일주소를 입력하세요">
					<p class="label">이메일주소</p>
					<div class="d-flex col-12">
					<input class="input100 col-12" type="email" name="email" id="email">
					<!-- 	<button class="login100-form-btn mb-5 col-3" id="findBtn" type="button" style="background: gray;">발송</button> -->
				</div>
				</div>  
				<button class="login100-form-btn" name="Submit" id="findBtn">찾기</button>

				<div class="text-center p-t-12 mt-5">
					<a class="txt2" href="../member/login.do"> 로그인 </a>
					<a>&nbsp&nbsp|&nbsp&nbsp</a>
					<a class="txt2" href="../member/searchID.do"> 아이디 찾기 </a>
				</div>

			<!--  </form>-->
		</div>
	</div>
	<script>


	window.onload = function() {
		document.getElementById('findBtn').onclick = check;
		document.getElementById('findBtn').onclick = emailAuth;
	}

	function check() {
		if (document.form.id.value == "") {
			alert("아이디를 입력하세요.")
			document.form.id.focus();
			return false;
		}
		if (document.form.email.value == "") {
			alert("이메일주소를 입력하세요.")
			document.form.email.focus();
			return false;
		}
		document.form.submit(); //전송		
	}
	
	function emailAuth() {
		const email = $('#email').val(); // 이메일 주소값 얻어오기!
		console.log('완성된 이메일 : ' + email); // 이메일 오는지 확인
		
				$.ajax({
					url : "/member/findpw.do",
					type : "POST",
					data : {
						id : $("#id").val(),
						email : $("#email").val()
					}, 
					success : function(result) {
						alert(result);
					},
				});
			};

</script>
</body>
</html>
