<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<%
	String userId = (String) session.getAttribute("userId");
String userName = (String) session.getAttribute("userName");
System.out.println(userId);
%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/login.css">
<title>로그인</title>
</head>
<script>
	window.onload = function(){
		document.getElementById('Submit').onclick = check;	
	}

	function check() {
		if(document.form.id.value==""){
			alert("ID를 입력하세요.")
			document.form.id.focus();
			return false;
		}
		
		if(document.form.password.value==""){
			alert("패스워드를 입력하세요.")
			document.form.password.focus();
			return false;
		}
		
		document.form.submit();//전송

					
	}


function searchID()  {
    var width = 700;      
     var height = 800;   
    var winl = (screen.availWidth - width) / 2;     
    var wint = (screen.availHeight - height) / 2;   
 window.open("searchID.do"    
            , "아이디찾기"                      
            , "width=" + width +             
            ", height=" + height +
            ", left=" + winl +
            ", top=" + wint )
}

function searchPass()  {
    var width = 700;    
    var height = 900;     
    var winl = (screen.availWidth - width) / 2;     
    var wint = (screen.availHeight - height) / 2;   
    window.open("searchPass.do"    
            , "비밀번호찾기"                      
            , "width=" + width +             
            ", height=" + height +
            ", left=" + winl +
            ", top=" + wint
     );
            ", top=" + wint )
}


</script>

</script>

<body>
	<div class="container">
		<form name="form" action="save2.do" method="post" name="userinput">
			<div class="login">
				<img class="logo" src="../../../resources/imgs/logo.png" alt="로고">

				<div class="info">
					<p class="label">아이디&nbsp&nbsp</p>
					<input class="insert" type="text" name="id" id="id">
				</div>

				<div class="info">
					<p class="label">비밀번호&nbsp&nbsp</p>
					<input class="insert" type="password" name="password" id="password">
				</div>

				<div class="check">
					<div class="save">
						<a> 로그인정보 저장</a> <input type="checkbox" name="save" id="save"
							checked>
					</div>

					<div class="admin">
						<input type="checkbox" name="checkbox" id="checkbox" checked>
						<label for="checkbox"><span></span></label>
					</div>
				</div>
				<div class="menu">
					<ul class="menu_list">
						<li><a>아이디 찾기&nbsp&nbsp&nbsp</a>|</li>
						<li><a>비밀번호 찾기&nbsp&nbsp&nbsp</a>|</li>
						<li><a href="../member/signup.do">회원가입</a></li>

					</ul>
				</div>
				<input type="button" class="loginBtn" value="로그인" name="Submit"
					id="Submit">
			</div>
		</form>
	</div>
</body>
</html>

</script>
