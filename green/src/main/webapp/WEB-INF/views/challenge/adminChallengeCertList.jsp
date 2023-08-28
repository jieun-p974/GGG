<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<!-- 오늘 날짜 -->
<jsp:useBean id="now" class="java.util.Date" />

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="../../../resources/styles/table.css">
<link rel="stylesheet" href="/resources/styles/font.css">
<style type="text/css">
.detail_img{
    width:30%;
    height:auto;
}
.check_img{
    width:40%;
}
</style>
<title>챌린지 관리</title>
</head>
<body>
<%@include file="../layouts/adminHeader.jsp"%>
		<section class="pricing position-relative overflow-hidden">
		<div class="container position-relative">
			<div class="row">
				<div
					class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
					<h2 class="text-black mb-0 mt-5 mb-3">${chal_name} 챌린지 관리 리스트</h2>
				</div>
			</div>
			<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
				<form action="/challenge/yesChecked.do" method="post">
				<div class="calendar d-flex justify-content-between mb-5">
					<div></div>
					<c:if test="${count > 0}">
					<button class="btn btn-white-back btn-hover-third" type="submit">인증하기</button>
					</c:if>
				</div>
				<div class="card border-0 shadow">
					<div class="card-body">
						<div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
							<table class="type09" id="chall_list">
								<thead>
									<th>순서</th>
									<th>회원별챌린지코드</th>
									<th>인증날짜</th>
									<th class="check_img">인증사진</th>
									<th>인증확인여부</th>
									<th>인증</th>		
								</thead>
								<c:forEach items="${cerList}" var="cert">
									<tbody>
										<td>${cert.cer_no}</td>
										<td>${cert.m_c_no}</td>
										<td>${cert.cer_date}</td>
										<td><img class="detail_img" src="/resources/imgs/challImg/${cert.cer_img1_addr}" /></td>
										<td>${cert.pass_YN}</td>
										<td><input type="checkbox" name="valueArr" value="${cert.cer_no}"></td>
									</tbody>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				</form>
			</div>
		</div>
	</section>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>