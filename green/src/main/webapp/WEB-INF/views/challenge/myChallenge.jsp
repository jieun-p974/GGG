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
					<c:forEach items="${myChall}" var="c">
					<li class="now_list">${c.chal_name}</li>
					</c:forEach>
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