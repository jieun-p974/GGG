<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/searchPass.css">
<title>비밀번호 찾기</title>
</head>
<body>
	<div class="container">
		<div class="searchPass">

			<div class="info">
				<p class="label">아이디</p>
				<input class="insert" type="text" name="id" id="id">
			</div>

			<div class="info">
				<p class="label">이름</p>
				<input class="insert" type="text" name="name" id="name">
			</div>

			<div class="info">
				<p class="label">휴대전화</p>
				<input class="insert" type="tel" name="tel" id="tel"
					placeholder="010-xxxx-xxxx">
			</div>

			<div class="info">
				<p class="label">생년월일</p>
				<input class="insert" type="date" name="bdate" id="bdate">
			</div>

			<div class="info">
				<p class="label">이메일 인증</p>
				<input type="text" name="emailCheck" id="emailCheck">
				<button class="idenBtn">인증</button>
			</div>

			<button class="searchBtn" onclick="search()">찾기</button>
		</div>
	</div>
</body>
</html>
<script type="text/javascript">
    function search()  {
        alert('비밀번호는' + ' 어쩌고저쩌고 ' + '입니다');
        window.location.href="../../../index.html"
    }
</script>