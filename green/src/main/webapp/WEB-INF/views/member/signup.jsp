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
				
			//		alert('가입을 축하합니다!');
			//		window.close();
					document.userinput.submit();
				
			});
			
		});

</script>

<body>
	<div class="container ">
	<form method="post" action="save.do" name="userinput" id="userinput">
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
						<input type="text" name="emailCheck" id="emailCheck"/>
						<button class="idenBtn">인증</button>
					</div>
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
