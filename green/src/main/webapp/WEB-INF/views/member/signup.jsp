<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
	$(function(){
		// 사용자의 자료 입력여부를 검사하는 함수
			$("#confirm").on("click", function(){
				if($("#name").val()==""){
					alert("이름을 입력해주세요.");
					$("#name").focus();
					return false;
				}
				if($("#id").val()==""){
					alert("아이디를 입력해주세요.");
					$("#id").focus();
					return false;
				}
				if($("#password").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#password").focus();
					return false;
				}
				if($("#passCheck").val()==""){
					alert("비밀번호 확인란을 입력해주세요.");
					$("#passCheck").focus();
					return false;
				}
				if($("#passCheck").val()!=$("#password").val()){
					alert("비밀번호가 일치하지 않습니다.");
					$("#passCheck").focus();
					return false;
				}
				
				if($("#bday").val()==""){
					alert("생년월일을 입력해주세요.");
					$("#bday").focus();
					return false;
				}
				
				if($("#tel").val()==""){
					alert("전화번호를 입력해주세요.");
					$("#tel").focus();
					return false;
				}
				if($("#email").val()==""){
					alert("이메일주소를 입력해주세요.");
					$("#email").focus();
					return false;
				}
				if($("#emailCheck").val()==""){
					alert("인증번호를 입력해주세요.");
					$("#emailCheck").focus();
					return false;
				}
				
					document.userinput.submit();
					alert('가입을 축하합니다!');
			});
		
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
			
	
		}); //끝

	
        
</script>

<body>
	<div class="container ">
	<form method="post" action="signupSave.do" name="userinput" id="userinput" enctype="multipart/form-data">
		<%@include file="../layouts/header.jsp"%>
			<div class="sign-up">
				<div class="title">회원가입</div>
				<div class="info">
					<p class="label">이름</p>
					<input class="insert" type="text" name="name" id="name"/>
				</div>
				<div class="info">
					<p class="label">아이디</p>
					<input class="insert" type="text" name="id" id="id"/>
					<!-- 아이디 중복체크 -->
					<span id="idCheckResult" style="font-size: 1rem; width: 150px; color: red;"></span>
				</div>
				<div class="info">
					<p class="label">비밀번호</p>
					<input class="insert" type="password" name="password" id="password"/>
				</div>
				<div class="info">
					<p class="label">비밀번호 확인</p>
					<input class="insert" type="password" name="passCheck" id="passCheck"/>
				</div>
				
				<div class="info">
					<p class="label">생년월일</p>
					<input class="insert" type="date" name="bday" id="bday"/>
				</div>
				
				<div class="info">
					<p class="label">전화번호</p>
					<input class="insert" type="text" name="tel" id="tel"/>
				</div>
				
				<div class="info">
					<p class="label">이메일</p>
					<input class="insert" type="text" name="email" id="email"/>				
				</div>
				
				<div class="info">
					<p class="label">이메일 인증</p>
					<div class="e-valid">
						<input type="number" name="emailCheck" id="emailCheck" placeholder="  인증번호를 입력하세요. "/>
						<button type="submit" class="idenBtn" name="idenBtn" id="idenBtn">인증번호 발송</button>
					</div>
				</div>
				
				<div class="info">
					<p class="label"> 프로필 사진 <br/>(선택)</p>
					<input type="file" name="file" id="file"/>
				</div>
	
				<div class="btns">
					<input type="button" id="confirm" class="confirm" value="회원가입">
				</div>
			</div>
		</form>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>