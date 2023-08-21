<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:if test="${userId == null }">
	<script>
		alert("로그인 하신 후 이용 가능합니다.");
		location.href = "../../index.jsp";
	</script>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link href="../../../resources/styles/donation.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="/resources/styles/font.css">
<title>my도감</title>
</head>
<body>
	<%@include file="../layouts/header.jsp"%>
	<section class="pricing position-relative">
		<div class="container position-relative">
			<div class="row">
				<div
					class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
					<h3 class="text-black mt-5 mb-5 text-center">🌏 ${userName}님의
						캐릭터 목록입니다 🌏</h3>

					<a class="btn btn-warning btn-hover-secondery section-btn"
						href="../dogam/dogam.do">전체도감</a>
				</div>
			</div>
			<div class="gibu_list">
				<c:forEach items="${mydogam}" var="mydogam">
					<c:set var="nomain" value="${mydogam.do_choice_YN}" />
					<div class="gibu">
						<c:if test="${mydogam.do_choice_YN eq 'Y'}">
							<div class="card bg-primary">
								<h4 class="text-center mt-3">대표캐릭터</h4>
								
						</c:if>
						<c:if test="${mydogam.do_choice_YN ne 'Y' && mydogam.nowLv ne 3}">
							<div class="card">
								<h4 class="text-center text-black mt-3">캐릭터</h4>
						</c:if>
						<c:if test="${mydogam.do_choice_YN ne 'Y' && mydogam.nowLv eq 3}">
							<div class="card bg-none">
								<h4 class="text-center text-white mt-3">키우기 완료!</h4>
						</c:if>
						<div class="card-body" style="height: 400px;">
							<div
								class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
								<a href="../dogam/myDogamDetail.do?do_no=${mydogam.do_no}&id=${userId}">
									<div class="d_list_img">
										<img class="d_img" alt="도감 사진"
											src="../resources/imgs/dogam/${mydogam.lv_img}">
									</div>
									<h4 class="d_list_title mb-3">${mydogam.do_title}</h4> <c:if
										test="${mydogam.nowLv ne 3}">
										<p>현재레벨 : ${mydogam.nowLv}</p>
									</c:if>
									<c:if test="${mydogam.nowLv eq 3}">
										<p>${userId}님의
											${mydogam.do_name}는<br /> 모두 자랐어요!
										</p>
									</c:if>
								</a>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			</div>
		
		<c:if test="${nomain eq 'N'}">
			<div class="pickme mt-5" >
					<img src="../resources/imgs/pickme.png">
				<div class="mb-3">
					<p class="pt-5 mt-5 ms-4 mb-4 fs-3 fw-bold">설정된 대표캐릭터가 없습니다!</p>
					<p class="ms-4 fs-5">대표 캐릭터를 설정해야 기부시 캐릭터를 성장시킬 수 있는 경험치가
						부여됩니다.</p>
				</div>
			</div>
		</c:if>
		
		<c:if test="${res eq 2}">
		<div class="pickme mt-5" >
					<img src="../resources/imgs/pickme.png">
				<div class="mb-3">
					<p class="pt-5 mt-5 ms-4 mb-4 fs-3 fw-bold">나의 캐릭터가 없습니다!</p>
					<p class="ms-4 fs-5">대표 캐릭터를 설정해야 기부시 캐릭터를 성장시킬 수 있는 경험치가
						부여됩니다.</p>
				</div>
			</div>
		</c:if>
		</div>
	</section>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>