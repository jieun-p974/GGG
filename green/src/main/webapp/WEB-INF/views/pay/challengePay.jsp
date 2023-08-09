<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/challengePay.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<title>도전권 결제</title>
</head>
<body>
	<div class="container">
		<%@include file="../layouts/header.jsp"%>
		<div class="main">
			<div class="mem_info">
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingOne">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#collapseOne"
							aria-expanded="true" aria-controls="collapseOne">
							<div class="btn_content">
								<p>결제자</p>
								<p>${userName}(${userTel})</p>
							</div>
						</button>
					</h2>
					<div id="collapseOne" class="accordion-collapse collapse"
						aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						<div class="accordion-body">결제자 정보 여기에 적음(어떤거 적을지는 몰것네)</div>
					</div>
				</div>
			</div>
			<div class="kind">
				<p class="txt">결제권 종류</p>
				<select name="dojun_kind" id="dojun_kind">
					<option value="three">3회 도전권 (3000원)</option>
					<option value="three">7회 도전권 (7000원)</option>
					<option value="three">무제한 도전권 (10,000원)</option>
				</select>
			</div>
			<div class="pay_method">
				<p class="txt">결제수단</p>
				<div class="selecting">
					<div class="simple_account">
						<input type="radio" name="chk_method" id="check_sa"
							checked="check">간편 계좌
						<div class="accounts">
							<c:forEach items="${list}" var="pay">
								<div class="a a1">
									<p class="bank_name" id="bank" name="bank">은행: ${pay.bank}</p>
									<p class="account_num">계좌번호: ${pay.acc_num}</p>
								</div>
							</c:forEach>
						</div>
					</div>
					<div class="simple_card">
						<input type="radio" name="chk_method" id="check_sc">간편 카드
						<div class="cards">
						<c:forEach items="${list}" var="pay">
							<div class="c c1">
								<p class="card_com">카드사: ${pay.card_company }</p>
								<p class="card_name">카드번호: ${pay.card_num }</p>
							</div>
							</c:forEach>
						</div>
					</div>
					<div class="accout_pay">
						<input type="radio" name="chk_method" id="check_a">일반 계좌
					</div>
					<div class="card_pay">
						<input type="radio" name="chk_method" id="check_c">일반 카드
					</div>
				</div>
				<div class="btn">
					<button class="payBtn">결제하기</button>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>