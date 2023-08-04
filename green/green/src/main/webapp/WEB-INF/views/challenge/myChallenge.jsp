<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/myChallenge.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>도전중인 챌린지</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="my-challenge">
			<div class="now-chall">
				<p class="now_txt">내 도전목록</p>
				<ul class="now_lists">
					<li class="now_list">마트갈때 장바구니 들고가기</li>
					<li class="now_list">주말마다 플로깅하기</li>
					<li class="now_list">가나다라마바사</li>
				</ul>
			</div>
			<div class="completed">
				<p class="com_txt">완료 목록</p>
				<ul class="com_lists">
					<li class="com_list">카페나 음식점에서 다회용기 포장</li>
					<li class="com_list">가나다</li>
					<li class="com_list">라마바사</li>
				</ul>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>