<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/searchID.css">
<title>아이디 찾기</title>
</head>
<body>
<div class="container"> 
    <div class="searchID">

        <div class= "info">
            <p class="label">이름</p>
            <input class="insert" type="text" name="name" id="name">
        </div>

        <div class= "info">
            <p class="label">휴대전화</p>
            <input class="insert" type="tel" name="tel" id="tel" placeholder="010-xxxx-xxxx">
        </div>

        <div class= "info">
            <p class="label">이메일</p>
            <input class="insert" type="email" name="email" id="email" placeholder="123@abc.com">
        </div>

        <div class= "info">
            <p class="label">생년월일</p>
            <input class="insert" type="date" name="bdate" id="bdate">
        </div>

        <button class="searchBtn" onclick="search()">찾기</button>
  </div>
</div>
</body>
</html>

<script type="text/javascript">
    function search()  {
        alert('아이디는' + ' 어쩌고저쩌고 ' + '입니다');
        window.location.href="../../../index.jsp"
    }
</script>