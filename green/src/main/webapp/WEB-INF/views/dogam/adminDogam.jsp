<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/adminDogam.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<script type="text/javascript">
	function insert() {
		location.href = "dogamWrite.do"
	}
</script>
<title>도감 관리</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/adminHeader.jsp"%>
		<div class="newsCheckList">
			<div class="title">도감 관리 페이지</div>
			<button class="add" id="add" onclick="insert()">추가하기</button>
			<div class="list">
				<table class="dogam">
					<thead>
						<th>번호</th>
						<th>동물이름</th>
						<th>성장모습</th>
						<th>수정</th>
						<th>삭제</th>
					</thead>
					<c:forEach items="${list}" var="news">
					<tr>
						<td>${news.news_no}</td>
						<td> ${news.n_title}</td>
						<td><img src="${news.n_img1_nn}" alt="뉴스 썸네일" class="img"></td>
						<td><button><a href="newsModify.do?news_no=${news.news_no}">수정</a></button></td>
						<td><button><a href="deleteNews.do?news_no=${news.news_no}">삭제</a></button></td>
					</tr>
					</c:forEach>
					
				</table>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>