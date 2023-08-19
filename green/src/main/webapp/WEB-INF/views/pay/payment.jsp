<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>결제수단관리</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
<link rel="stylesheet" 	href="https://allyoucan.cloud/cdn/icofont/1.0.1/icofont.css" integrity="sha384-jbCTJB16Q17718YM9U22iJkhuGbS0Gd2LjaWb4YJEZToOPmnKDjySVa323U+W7Fv" crossorigin="anonymous">
<link rel="stylesheet" href="../../../resources/styles/payment.css">
</head>
<body>
	<%@include file="../layouts/header.jsp"%>
	<section class="service position-relative overflow-hidden d-flex justify-content-center">
	<div class="wrapper row mt-5">
		<!-- 간편카드 -->
		<div class="card px-5 col-xl-auto mb-5" style="width: 400px; border: none;">
			<div class="my-3">
				<h5 class="mt-3 fw-bold">등록된 카드</h5>
			</div>
			<c:forEach items="${list2}" var="payc">
				<div class="debit-card mb-2">
					<div class="d-flex flex-column h-90">
						<label class="d-block">
							<div class="d-flex position-relative">
								<div>
									<p hidden="hidden">${payc.mem_card_no}</p>
									<p class="mt-2 mb-5 text-white fw-bold">${payc.card_company}</p>
								</div>
								<div class="input">
									<input type="radio" name="card" id="check">
								</div>
							</div>
						</label>
						<div
							class="mt-2 fw-bold d-flex align-items-center justify-content-between">
							<p class="text-white fw-bold">${payc.card_num}</p>
							<p class="text-white fw-bold">${payc.expire_date}</p>
						</div>
					</div>
				</div>

				<c:set var="mcn" value="${payc.mem_card_no}" />
			</c:forEach>
				<button class="add">
					<a href="../member/cardRegist.do?userId=${userId}">
					<img src="/resources/imgs/payadd.png" style="height:45px; width:45px;">
					</a>
				</button>
			<div class="btn mb-4">
				<a href="deleteCard.do?mem_card_no=${mcn}">카드삭제</a>
			</div>
		</div>

		<!-- 간편계좌 -->
		<div class="card px-5 col-xl-auto" style="width: 400px; border: none;">
			<div class="my-3">
				<h5 class="mt-3 fw-bold">등록된 계좌</h5>
			</div>
			<c:forEach items="${list}" var="payb">
				<div class="debit-acc mb-2">
					<div class="d-flex flex-column h-90">
						<label class="d-block">
							<div class="d-flex position-relative">
								<div>
									<p hidden="hidden">${payb.mem_acc_no}</p>
									<p class="mt-2 mb-3 text-white fw-bold">${payb.bank}</p>
								</div>
								<div class="input">
									<input type="radio" name="bank" id="check">
								</div>
							</div>
						</label>
						<div
							class="mt-2 fw-bold d-flex align-items-center justify-content-between">
							<p class="text-white fw-bold">${payb.acc_num}</p>
						</div>
					</div>
				</div>
				<c:set var="man" value="${payb.mem_acc_no}" />
			</c:forEach>
				<button class="add">
					<a href="../member/accountRegist.do?userId=${userId}">
					<img src="/resources/imgs/payadd.png" style="height:45px; width:45px;">
					</a>
				</button>
			<div class="btn mb-4">
				<a href="deleteAccount.do?mem_acc_no=${man}">계좌삭제</a>
			</div>
		</div>
	</div>
	</section>
</body>
</html>