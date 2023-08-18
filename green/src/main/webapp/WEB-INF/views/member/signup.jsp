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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!--===============================================================================================-->

<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>회원가입</title>
</head>

<body>
	<div class="limiter">
		<%-- <%@include file="../layouts/header.jsp"%> --%>
		<div class="container-login100">
			<div class="wrap-login100">
<<<<<<< HEAD
				<form class="login100-form validate-form mt-5" name="form"
					action="loginSave.do" method="post" name="userinput">
					<span class="login100-form-title mt-5"> 회원가입 </span>
					<p class=input_title>아이디</p>
=======
				<form class="login100-form validate-form mt-5" name="form" action="signupSave.do" method="post" enctype="multipart/form-data">
					<span class="login100-form-title mt-5"> 회원가입 </span>
>>>>>>> refs/remotes/origin/gaeun
					<div class="d-flex">
<<<<<<< HEAD
						<div class="wrap-input100 validate-input col-9" data-validate="아이디를 입력하세요">
							<input class="input100 mt-2 mb-3" type="text" name="id" id="id" placeholder="아이디를 입력하세요." />
							<span class="focus-input100"></span>
						</div>
						<!-- 아이디 중복체크 -->
						<span id="idCheckResult" style="font-size: 0.9rem; width: 200px; color: red; margin-top: 25px;"></span>
=======
						<p class="input_title">아이디</p>
						<p class="input_title text-warning fs-6">&nbsp;*</p>
					</div>
					<div class="wrap-input100 validate-input">
						 <input class="input100 mt-2 mb-3" type="text" name="id"
							id="id" placeholder="영문과 숫자 조합하여  5~10자만 가능"/> 
						<span id="idCheckResult" style="font-size: 0.9rem;"></span>
					</div>
					
					<div class="d-flex">
						<p class="input_title">비밀번호</p>
						<p class="input_title text-warning fs-6">&nbsp;*</p>
					</div>
					<div class="wrap-input100 validate-input">
						 <input class="input100 mt-2 mb-3" type="password"
							name="password" id="password" placeholder="영문+숫자+특수문자 조합하여 8~16자리만 가능">
						<span id="pwCheckResult" style="font-size: 0.9rem;"></span>
					</div>
					
					<div class="d-flex">
						<p class="input_title">비밀번호 확인 </p>
						<p class="input_title text-warning fs-6">&nbsp;*</p>
					</div>
					<div class="wrap-input100 validate-input">
						 <input class="input100 mt-2 mb-3" type="password"
							 id="passCheck">
						<span id="pwCheckResult2" style="font-size: 0.9rem;"></span>
					</div>
					
					<div class="d-flex">
						<p class="input_title">이름 </p>
						<p class="input_title text-warning fs-6">&nbsp;*</p>
					</div>
					<div class="wrap-input100 validate-input">
						 <input class="input100 mt-2 mb-3" type="text" name="name" id="name">
					</div>
					
					<div class="d-flex">
					<p class=input_title> 이메일주소</p>
					<p class="input_title text-warning fs-6">&nbsp;*</p>
					</div>
					<div class="wrap-input100 validate-input">
						 <input class="input100 mt-2 mb-3" type="email" name="email" id="email">
						 <span id="emailCheckResult" style="font-size: 0.9rem;"></span>
>>>>>>> refs/remotes/origin/gaeun
					</div>

<<<<<<< HEAD
					<p class=input_title>비밀번호</p>
					<div class="wrap-input100 validate-input" data-validate="비밀번호를 입력하세요." onkeyup="enter()">
						<input class="input100 mt-2 mb-3" type="password" name="password" id="password" placeholder="비밀번호를 입력하세요." onkeyup="enter()">
						<span class="focus-input100"></span>
					</div>

					<p class=input_title>비밀번호 확인</p>
					<div class="wrap-input100 validate-input" data-validate="비밀번호를 입력하세요." onkeyup="enter()">
						<input class="input100 mt-2 mb-3" type="password" name="passCheck" id="passCheck" placeholder="비밀번호를 입력하세요." onkeyup="enter()">
						<span class="focus-input100"></span>
					</div>

					<p class=input_title>이름</p>
=======
					<div class="d-flex">
					<p class=input_title> 이메일 인증</p>
					<p class="input_title text-warning fs-6">&nbsp;*</p>
					</div>
>>>>>>> refs/remotes/origin/gaeun
					<div class="wrap-input100 validate-input">
						<input class="input100 mt-2 mb-3" type="text" name="name" id="name" placeholder="이름을 입력하세요." onkeyup="enter()">
						<span class="focus-input100"></span>
					</div>

					<p class=input_title>전화번호</p>
					<div class="wrap-input100 validate-input">
						<input class="input100 mt-2 mb-3" type="text" name="tel" id="tel" placeholder="전화번호를 입력하세요." onkeyup="enter()">
						<span class="focus-input100"></span>
					</div>

					<p class=input_title>이메일주소</p>
					<div class="wrap-input100 validate-input">
						<input class="input100 mt-2 mb-3" type="email" name="email" id="email" placeholder="이메일주소를 입력하세요." onkeyup="enter()">
						<span class="focus-input100"></span>
					</div>

					<p class=input_title>이메일 인증</p>
					<div class="wrap-input100 validate-input">

						<div class="d-flex col-12 p-0">
<<<<<<< HEAD
							<input class="input100 mt-2 mb-3" type="text" name="emailCheck" id="emailCheck" placeholder="인증번호를 입력하세요." onkeyup="enter()">
							<button class="login100-form-btn mt-2 mb-3 ms-2" style="width: 30%;" name="Submit" id="Submit">발송</button>
=======
							<input class="input100 mt-2 mb-3" type="text" 
								id="emailCheck" placeholder="인증번호 입력">
							<button class="login100-form-btn mt-2 mb-3 ms-2"
							style="width:30%;" onclick="sendEmail()">발송</button>
>>>>>>> refs/remotes/origin/gaeun
							<span class="focus-input100"></span>
						</div>
					</div>
<<<<<<< HEAD

					<p class=input_title>프로필사진(선택)</p>
=======
					
					
					<p class=input_title> 전화번호</p>
					<div class="wrap-input100 validate-input">
						 <input class="input100 mt-2 mb-3" type="text" name="tel"
							id="tel" placeholder="하이픈(-) 포함해서 입력">
						<span id="telCheckResult" style="font-size: 0.9rem;"></span>
						<span class="focus-input100"></span>
					</div>
					
					<p class=input_title> 프로필사진</p>
>>>>>>> refs/remotes/origin/gaeun
					<div class="wrap-input100 validate-input">
<<<<<<< HEAD
						<input class="input100 mt-2 mb-3" type="file" name="file" id="file" onkeyup="enter()" accept=".jpg, .png, .svg, .jpeg" />
=======
						 <input class="input100 mt-2 mb-3" type="file" name="file" id="file"
						/>
>>>>>>> refs/remotes/origin/gaeun
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
						<a class="txt2" href="../member/login.do"> 이미 멤버이신가요? </a>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript">
<<<<<<< HEAD
		window.onload = function() {
			document.getElementById('confirm').onclick = check;
=======
	var message= "<c:out value='${message}' />"
	
	window.onload = function() {
		document.getElementById('confirm').onclick = check;
	}
	function check() {
		if ($("#id").val() == "" || $("#password").val() == "" || $("#passCheck").val() == ""
				|| $("#name").val() == "" || $("#email").val() == "" || $("#emailCheck").val() == "") {
			alert("필수값을 모두 입력해주세요.");
			return false;
		}
		
		/*	if ($("#id").val() == "") {
			alert("아이디를 입력해주세요.");
			$("#id").focus();
			return false;
>>>>>>> refs/remotes/origin/gaeun
		}
<<<<<<< HEAD
		function check() {
			if ($("#id").val() == "") {
				alert("아이디를 입력해주세요.");
				$("#id").focus();
				return false;
=======
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
		if ($("#name").val() == "") {
			alert("이름을 입력해주세요.");
			$("#name").focus();
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
 */
		document.form.submit();
		alert(message);
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
				$('#idCheckResult').html(resultData);
>>>>>>> refs/remotes/origin/gaeun
			}
<<<<<<< HEAD
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

			document.userinput.submit();
			alert('가입을 축하합니다!');
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
		})
=======
		});
	}); 
	
	// 아이디 형식 체크
	$("#id").blur(function() {
	 	let idCheck = /^[a-zA-Z0-9]{5,10}$/;
	 	
	 	if(!idCheck.test($("#id").val())) {
	         $("#idCheckResult").css("color", "red");
	         $("#idCheckResult").text("ID 형식이 올바르지 않습니다.");
	         id = false;
	    }else {
	    	$("#idCheckResult").css("color", "blue");
	    	$("#idCheckResult").text("ID 사용 가능합니다.");
	    	id = true;
	    }
	 });
	
	// 비밀번호 형식 체크
	 $("#password").blur(function() {
	 	let pwdCheck= /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;
	 	
	if (!pwdCheck.test($("#password").val())) {
		  	 $("#pwCheckResult").css("color", "red");
		     $("#pwCheckResult").text("비밀번호 형식이 올바르지 않습니다.");
		     password = false;
	      }else {
	    	  $("#pwCheckResult").css("color", "blue");
			  $("#pwCheckResult").text("사용 가능한 비밀번호 입니다. 아래에 한번 더 입력하세요.");
			  password = true;
	      }
	 });
	
	// 비밀번호 일치 체크
	 $("#passCheck").blur(function() {
		
		if ($("#passCheck").val() != $("#password").val()) {
			$("#pwCheckResult2").css("color", "red");
		     $("#pwCheckResult2").text("비밀번호가 일치하지 않습니다.");
		} else {
			 $("#pwCheckResult2").css("color", "blue");
			  $("#pwCheckResult2").text("비밀번호 일치합니다.");
	}
		});
		
	
	// 이메일 형식 체크
	 $("#email").blur(function() {
	 	let emailCheck= /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
	 	
	if (!emailCheck.test($("#email").val())) {
		  	 $("#emailCheckResult").css("color", "red");
		     $("#emailCheckResult").text("이메일 형식이 올바르지 않습니다.");
		     email = false;
	      }else {
	    	  $("#emailCheckResult").css("color", "blue");
			  $("#emailCheckResult").text("사용 가능한 이메일 주소입니다. 인증을 진행하세요.");
			  email = true;
	      }
	 });
	
	//이메일 보내기
		/* function sendEmail() {
			let emailCheck = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;

			if (!emailCheck.test($("#email").val())) {
				alert("이메일 형식에 맞추어 작성하세요");
			} else {
				let email = $("#email").val(); //입력한 이메일

				$.ajax({
					url : "mailSender.do",
					type : "get",
					data : {
						'm_email' : email
					},
					success : function(rnum) {
						//alert("s");
						alert("기입하신 이메일로 인증번호를 전송했습니다.");

						$("#emailCheckResult").attr("disabled", false); //입력칸 활성화
						code = rnum;

					},
					error : function() {
						alert("f");
					}
				});

			}

		} 

		$("#codeInput").blur(function() {

			console.log(code);
			if (code == $("#codeInput").val()) { //인증번호 같다면
				$("#emailCheckResult").css("color", "blue");
				$("#emailCheckResult").text("인증되었습니다.");
				email = true;
			} else {
				$("#emailCheckResult").css("color", "red");
				$("#emailCheckResult").text("인증번호를 다시 입력해주세요.");
				email = false;
			}
		});*/
		
		// 전화번호 형식 체크
		 $("#tel").blur(function() {
		 	let telCheck= /^[0-9]{3}-[0-9]{4}-[0-9]{4}$/;
		 	
		if (!telCheck.test($("#tel").val())) {
			  	 $("#telCheckResult").css("color", "red");
			     $("#telCheckResult").text("전화번호 형식이 올바르지 않습니다.");
			     tel = false;
		      }else {
		    	  $("#telCheckResult").css("color", "blue");
				  $("#telCheckResult").text("사용 가능한 전화번호입니다.");
				  tel = true;
		      }
		 });
		
>>>>>>> refs/remotes/origin/gaeun
	</script>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>