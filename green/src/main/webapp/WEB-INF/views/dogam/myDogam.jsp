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
<title>my도감</title>
</head>
<body>
	<div class="container">
		<%@include file="../layouts/header.jsp"%>
		<div class="dogam">
		<p class="dogam_txt">🌏 ${userName}님의 캐릭터 목록입니다 🌏</p>
	<button class="dogamBtn" onclick='location.href="dogam.do";'>도감전체</button>
			<div class="animal" id="animal">
				<c:forEach items="${mydogam}" var="mydogam">
				<div class="d_list"> 
					<a href="../dogam/myDogamDetail.do?do_no=${mydogam.do_no}&id=${userId}">
						<div class="d_list_img"><img class="d_img" alt="도감 사진" src="../resources/imgs/dogam/${mydogam.lv_img}">
						</div>
						<p class="d_list_title">${mydogam.do_title}</p>
							<c:if test="${mydogam.level_no ne 3}">
							<p>현재레벨 : ${mydogam.level_no}</p>
							</c:if>
							<c:if test="${mydogam.level_no eq 3}">
							<p>${userId}님의 ${mydogam.do_name}는<br/>
							모두 자랐어요!</p>
							</c:if>
					</a>
				</div>
			</c:forEach>
			</div>
			
			</div>
		</div>
		<%@include file="../layouts/footer.jsp"%>
</body>
</html>