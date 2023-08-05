<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/searchPass.css">
<title>비밀번호 찾기</title>
<%
	String userID = (String) session.getAttribute("userID");
	String userName = (String) session.getAttribute("userName");
	String userTel = (String) session.getAttribute("userTel");
	String userEmail = (String) session.getAttribute("userEmail");
%>
</head>

<script>
	window.onload = function(){
		document.getElementById('Submit').onclick = check;	
	}

	function check() {
		if(document.form.id.value==""){
			alert("아이디를 입력하세요.")
			document.form.id.focus();
			return false;
		}
		if(document.form.email.value==""){
			alert("이메일주소를 입력하세요.")
			document.form.email.focus();
			return false;
		}
		document.form.submit();	//전송		
	}
</script>

<body>
	<div class="container">
		<div class="searchPass">
	<form name="form" action="searchPassSave.do" method="post" name="userinput" id="userinput">
	
			<div class="info">
				<p class="label">아이디</p>
				<input class="insert" type="text" name="id" id="id">
			</div>

	        <div class= "info">
	            <p class="label">이메일주소</p>
	            <input class="insert" type="email" name="email" id="email" placeholder="123@abc.com">
	        </div>
        
		<!-- 	<div class="info">
				<p class="label">이메일 인증</p>
				<input type="text" name="emailCheck" id="emailCheck">
				<button class="idenBtn">인증</button>
			</div> -->
        <input type="button" class="searchBtn" value="찾기" name="Submit" id="Submit">
		</form>
		</div>
	</div>
</body>
</html>
