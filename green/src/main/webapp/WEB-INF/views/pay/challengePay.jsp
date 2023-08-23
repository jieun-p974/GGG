<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
<link rel="stylesheet"
	href="https://allyoucan.cloud/cdn/icofont/1.0.1/icofont.css"
	integrity="sha384-jbCTJB16Q17718YM9U22iJkhuGbS0Gd2LjaWb4YJEZToOPmnKDjySVa323U+W7Fv"
	crossorigin="anonymous">
<link href="../../../resources/styles/challengePay.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/payment.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<style type="text/css">
.payMethod {
  margin: 10px;
  padding: 10px;
  text-align: center;
  text-transform: uppercase;
  transition: 0.5s;
  background-size: 200% auto;
  color: white;
    background-image: linear-gradient(to right, #f6d365 0%, #fda085 51%, #f6d365 100%);
  
  box-shadow: 0 0 20px #eee;
  border-radius: 10px;
}

</style>

<title>도전권 결제</title>
</head>
<body>
	<div class="container">
		<%@include file="../layouts/header.jsp"%>
		<div class="main">
			<form class="jjj" action="pay.do" method="post">
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
						<!-- <div id="collapseOne" class="accordion-collapse collapse"
						aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						<div class="accordion-body">결제자 정보 여기에 적음(어떤거 적을지는 몰것네)</div>
					</div> -->
					</div>
				</div>

				<div class="kind">
					<p class="txt">결제권 종류</p>
					<select name="dogeon_no" id="dogeon_no">
						<option name="dogeon_name" value="1">3회 도전권 (3,000원)</option>
						<option name="dogeon_name" value="2">7회 도전권 (5,000원)</option>
						<option name="dogeon_name" value="3">무제한 도전권 (10,000원)</option>
					</select>
				</div>

				<div class="pay_method">
					<p class="txt">결제수단</p>
					<div class="selecting">
						<%-- 					<div class="simple_account">
						<input type="radio" name="pay_meth_no" id="check_sa" checked="check" value="3" group="g1">간편 계좌
						<div class="accounts">
			<c:forEach items="${list}" var="payb">
				<div class="debit-acc mb-2">
					<div class="d-flex flex-column h-90">
						<label class="d-block">
							<div class="d-flex position-relative">
								<div>
									<p hidden="hidden">${payb.mem_acc_no}</p>
									<p class="mt-2 mb-5 text-white fw-bold">${payb.bank}</p>
								</div>
								<div class="input">
									<input type="radio" name="bank" id="check">
									<input type="hidden" name="pay_meth_no" value="3">
								</div>
							</div>
						</label>
						<div
							class="mt-2 fw-bold d-flex align-items-center justify-content-between">
							<p class="text-white fw-bold">${payb.acc_num}</p>
						</div>
					</div>
				</div>
			</c:forEach>
							<button class="plusC"><a href="../member/accountRegist.do?userId=${userId}">간편계좌 추가 등록</a></button>
						</div>   
					</div> --%>

						<%-- 					<div class="simple_card">
						<input type="radio" name="pay_meth_no" id="check_sc" group="g1">간편 카드
						<div class="cards">
			<c:forEach items="${list2}" var="payc">
				<div class="debit-card mb-2">
					<div class="d-flex flex-column h-90">
						<label class="d-block">
							<div class="d-flex position-relative mb-5">
								<div>
									<p hidden="hidden">${payc.mem_card_no}</p>
									<p class="mt-2 mb-5 text-white fw-bold">${payc.card_company}</p>
								</div>
								<div class="input">
									<input type="radio" name="card" id="check1">
									<input type="hidden" name="pay_meth_no" value="4">
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
			</c:forEach>
							<button class="plusC"><a href="../member/cardRegist.do?userId=${userId}">간편카드 추가 등록</a></button>
						</div>
					</div> --%>

						<div class="accordion" id="accordionExample">
							<div class="accordion-item">
								<h2 class="accordion-header " id="headingOne">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#collapseOne"
										aria-expanded="false" aria-controls="collapseOne">간편
										계좌</button>
								</h2>
								<div id="collapseOne" class="accordion-collapse collapse"
									aria-labelledby="headingOne" data-bs-parent="#accordionExample">
									<div class="accordion-body">
										<div class="accounts">
											<c:forEach items="${list}" var="payb">
												<a class="payMethod">
													<p hidden="hidden">${payb.mem_acc_no}</p>
													<p class="mt-2 mb-5 text-white fw-bold">${payb.bank}</p>
													<p class="text-white fw-bold">${payb.acc_num}</p>
												</a>
											</c:forEach>
											<button class="plusC">
												<a href="../member/accountRegist.do?userId=${userId}">간편계좌
													추가 등록</a>
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="accordion-item">
								<h2 class="accordion-header" id="headingTwo">
									<button class="accordion-button collapsed" type="button"
										data-bs-toggle="collapse" data-bs-target="#collapseTwo"
										aria-expanded="false" aria-controls="collapseTwo">간편
										카드</button>
								</h2>
								<div id="collapseTwo" class="accordion-collapse collapse"
									aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
									<div class="accordion-body">
										<div class="cards">
											<c:forEach items="${list2}" var="payc">
												<a class="payMethod">
													<p hidden="hidden">${payc.mem_card_no}</p>
													<p class="mt-2 mb-5 text-white fw-bold">${payc.card_company}</p>
													<p class="text-white fw-bold">${payc.card_num}</p>
													<p class="text-white fw-bold">${payc.expire_date}</p>
												</a>
									</c:forEach>
											<button class="plusC">
												<a href="../member/cardRegist.do?userId=${userId}">간편카드
													추가 등록</a>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
<a class="btn btn-warning btn-hover-secondery text-capitalize">일반 결제</a>
<a class="btn btn-warning btn-hover-secondery text-capitalize">일반 카드</a>

					</div>
					<div class="btn">
						<button class="payBtn" onclick="go()">결제하기</button>
					</div>
				</div>
			</form>
			<label>※ 공지: 챌린지 기간은 결제일로부터 30일 까지 입니디.</label>
		</div>
	</div>

	<%@include file="../layouts/footer.jsp"%>
</body>
</html>