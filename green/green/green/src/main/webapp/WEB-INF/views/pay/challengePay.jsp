<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
								<p>박지은(010-2***-8***)</p>
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
					<option value="three">3회 도전권</option>
					<option value="three">7회 도전권</option>
					<option value="three">무제한 도전권</option>
				</select>
			</div>
			<div class="pay_method">
				<p class="txt">결제수단</p>
				<div class="selecting">
					<div class="simple_account">
						<input type="radio" name="chk_method" id="check_sa"
							checked="check">간편 계좌
						<div class="accounts">
							<div class="a a1">
								<p class="bank_name">우리은행</p>
								<p class="account_num">1002-****-**42</p>
							</div>
							<div class="a a2">
								<p class="bank_name">신한은행</p>
								<p class="account_num">1002-****-**42</p>
							</div>
						</div>
					</div>
					<div class="simple_card">
						<input type="radio" name="chk_method" id="check_sc">간편 카드
						<div class="cards">
							<div class="c c1">
								<p class="card_com">신한카드</p>
								<p class="card_name">네이버페이 체크(3278)</p>
							</div>
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