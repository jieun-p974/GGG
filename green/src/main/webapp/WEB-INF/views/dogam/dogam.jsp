<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/dogam.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>도감</title>
</head>
<body>
	<div class="container">
		<%@include file="../layouts/header.jsp"%>
		<div class="dogam">
		<p class="dogam_txt">캐릭터 도감 목록입니다.</p>
				<c:if test="${userId ne null}">
				<button class="myBtn" onclick="location.href='../dogam/myDogam.do?id=${userId}'">나의도감</button>
				</c:if>
			<div class="animal" id="animal">
				<c:forEach items="${list}" var="dogam">
				<div class="d_list"> 
					<a href="../dogam/dogamDetail.do?do_no=${dogam.do_no}">
						<div class="d_list_img"><img class="d_img" alt="도감 사진" src="../resources/imgs/dogam/${dogam.do_img_addr}">
						</div>
						<p class="d_list_title">${dogam.do_title}</p>
					</a>
				</div>
			</c:forEach>
			</div>
			
			</div>
		</div>
		<%@include file="../layouts/footer.jsp"%>
</body>
</html>