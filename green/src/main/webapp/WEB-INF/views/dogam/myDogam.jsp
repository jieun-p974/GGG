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
<link href="../../../resources/styles/donation.css" rel="stylesheet"
	type="text/css">
<title>my도감</title>
</head>
<body>
	<%@include file="../layouts/header.jsp"%>
	<section class="pricing position-relative">
		<div class="container position-relative">
			<div class="row">
				<div
					class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
					<h2 class="text-black mt-5 mb-5 text-center">🌏 ${userName}님의 캐릭터
						목록입니다 🌏</h2>
				</div>
			</div>
			<div class="gibu_list">
				<c:forEach items="${mydogam}" var="mydogam">
					<div class="gibu">
						<c:if test="${mydogam.do_choice_YN eq 'Y'}">
							<div class="card bg-primary">
							<h3 class="text-center">대표캐릭터</h3>
						</c:if>
						<c:if test="${mydogam.do_choice_YN ne 'Y' && mydogam.nowLv ne 3}">
							<div class="card bg-transparent">
							<h3 class="text-center text-white">캐릭터</h3>
						</c:if>
						<c:if test="${mydogam.do_choice_YN ne 'Y' && mydogam.nowLv eq 3}">
							<div class="card bg-none">
							<h3 class="text-center text-white">키우기 완료!</h3>
						</c:if>
						<div class="card-body" style="height: 400px;">
							<div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
								<a href="../dogam/myDogamDetail.do?do_no=${mydogam.do_no}&id=${userId}">
									<div class="d_list_img">
										<img class="d_img" alt="도감 사진"
											src="../resources/imgs/dogam/${mydogam.lv_img}">
									</div>
									<p class="d_list_title">${mydogam.do_title}</p> 
									<c:if test="${mydogam.nowLv ne 3}">
										<p>현재레벨 : ${mydogam.nowLv}</p>
									</c:if> 
									<c:if test="${mydogam.nowLv eq 3}">
										<p>${userId}님의 ${mydogam.do_name}는<br /> 모두 자랐어요!</p>
									</c:if>
								</a>
							</div>
						</div>
					</div>
			</div>
		</c:forEach>
		</div>
		</div>
	</section>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>