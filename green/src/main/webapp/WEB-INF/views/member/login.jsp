<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/login.css">
<title>로그인</title>
</head>
<body>
	<div class="container">

		<div class="login">
			<img class="logo" src="../../../resources/imgs/logo.png" alt="로고">

			<div class="info">
				<p class="label">아이디&nbsp&nbsp</p>
				<input class="insert" type="text" name="id" id="id">
			</div>

			<div class="info">
				<p class="label">비밀번호&nbsp&nbsp</p>
				<input class="insert" type="password" name="pass" id="pass">
			</div>

			<div class="check">
				<div class="save">
					<a> 로그인정보 저장</a> <input type="checkbox" id="save" checked>
				</div>

				<div class="admin">
					<input type="checkbox" id="checkbox" checked> <label
						for="checkbox"><span></span></label>
				</div>
			</div>
			<div class="menu">
				<ul class="menu_list">
					<li><a onclick=searchID()>아이디 찾기&nbsp&nbsp&nbsp</a>|</li>
					<li><a onclick=searchPass()>비밀번호 찾기&nbsp&nbsp&nbsp</a>|</li>
					<li><a href="signup.do">회원가입</a></li>
				</ul>
			</div>
			<button class="loginBtn" onclick="hello()">로그인</button>
		</div>

	</div>
	</body>
</html>

<script type="text/javascript">

function hello()  {
  alert('환영합니다!');
  window.close();
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
            ", top=" + wint 
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

}

</script>