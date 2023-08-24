<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<link rel="stylesheet" href="/resources/styles/font.css">
<title>회원정보수정</title>
</head>

<body>
	<div class="limiter">
		<%@include file="../layouts/header.jsp"%>
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form mt-5" name="form" action="editSave.do" method="post" enctype="multipart/form-data">
					<p class="d-flex fs-4 mb-5 justify-content-center"> 🌏&nbsp ${meminfo.id}님의 회원정보&nbsp🌏 </p	>
					<p class=input_title>아이디</p>
					<div class="wrap-input100 validate-input">
						 <input class="input100 mt-2 mb-3" type="text" name="id" id="id" value="${meminfo.id}" readonly="readonly">
					</div>
					
					<p class=input_title>비밀번호</p>
					<div class="wrap-input100 validate-input"
						data-validate="비밀번호를 입력하세요." onkeyup="enter()">
						 <input class="input100 mt-2 mb-3" type="password"
							name="password" id="password" placeholder="비밀번호를 입력하세요."
							onkeyup="enter()">
							<span class="focus-input100"></span>
					</div>
					
					<p class=input_title> 비밀번호 확인 </p>
					<div class="wrap-input100 validate-input"
						data-validate="비밀번호를 입력하세요." onkeyup="enter()">
						 <input class="input100 mt-2 mb-3" type="password"
							name="passCheck" id="passCheck" placeholder="비밀번호를 입력하세요."
							onkeyup="enter()"> 
							<span class="focus-input100"></span>
					</div>
					
					<p class=input_title> 이름</p>
					<div class="wrap-input100 validate-input">
						 <input class="input100 mt-2 mb-3" type="text" name="name" id="name" value="${meminfo.name}" readonly="readonly">
					</div>
					
					<p class=input_title> 전화번호</p>
					<div class="wrap-input100 validate-input">
						 <input class="input100 mt-2 mb-3" type="text" name="tel"
							id="tel" value="${meminfo.tel}" onkeyup="enter()">
							<span class="focus-input100"></span>
					</div>
					
					<p class=input_title> 이메일주소</p>
					<div class="wrap-input100 validate-input">
						 <input class="input100 mt-2 mb-3" type="email" name="email"
							id="email" placeholder="이메일주소를 입력하세요." value="${meminfo.email}" readonly="readonly">
					</div>

			
					<p class=input_title> 프로필사진(선택)</p>
					<div class="wrap-input100 validate-input">
						 <input class="input100 mt-2 mb-3" type="file" name="file" id="file"/>
						<span class="focus-input100"></span>
					</div>


					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit" id="editBtn">수정</button>
					</div>

				</form>
			</div>
		</div>
	</div>

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
			 		
			document.form.submit();//전송
			alert("회원정보가 수정되었습니다.");
			
		});
		
		
	})

</script>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>