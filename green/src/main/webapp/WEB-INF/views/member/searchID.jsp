<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="../../../resources/styles/searchID.css">
<title>아이디 찾기</title>
</head>
<script>
	window.onload = function(){
		document.getElementById('Submit').onclick = check;	
	}

	function check() {
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
    <div class="searchID">
	<form name="form" action="searchIDsave.do" method="post" name="userinput" id="userinput">
     <!--     <div class= "info">
            <p class="label">이름</p>
            <input class="insert" type="text" name="name" id="name">
        </div>-->

 
        <div class= "info">
            <p class="label">이메일</p>
            <input class="insert" type="email" name="email" id="email" placeholder="123@abc.com">
        </div>



        <input type="button" class="searchBtn" value="찾기" name="Submit" id="Submit">
      
      

	
      
      
        </form>
  </div>
</div>
</body>
</html>