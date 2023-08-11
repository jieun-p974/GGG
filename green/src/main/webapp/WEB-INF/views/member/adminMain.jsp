<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/resources/styles/table.css">
<title>관리자 메인</title>
</head>
<body>
	<div class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
		<h4 class="text-black mb-0">${userId}${userName} ${sessionTime} 접속</h4>
	</div>
	<%@include file="../layouts/adminHeader.jsp"%>
	<section class="service position-relative overflow-hidden">
		<div class="container position-relative">
			<img src="/resources/imgs/service/dot-shape.png" class="shape position-absolute">
			<div class="row"></div>
			<div class="row d-flex flex-wrap justify-content-center step-row">
				<!-- 공지 -->
				<div class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 text-center">
					<div class="card border-0 shadow">
						<div class="card-body">
							<div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
								<table class="type09">
									<thead>
										<th colspan="2">공지 목록</th>
									</thead>
									<tr>
										<td>2023.07.26</td>
										<td>챌린지 추가</td>
									</tr>
									<tr>
										<td>2023.07.26</td>
										<td>챌린지 추가</td>
									</tr>
									<tr>
										<td>2023.07.26</td>
										<td>챌린지 추가</td>
									</tr>
								</table>
							</div>
							<a href="../community/notificationWrite.do" class="btn btn-warning btn-hover-secondery"> 공지작성 </a>
						</div>
					</div>
				</div>
				<!-- 챌린지 -->
				<div class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 text-center">
					<div class="card border-0 shadow">
						<div class="card-body">
							<div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
								<table class="type09">
									<thead>
										<th colspan="2">챌린지 목록</th>
									</thead>
									<tr>
										<td>2023.07.26</td>
										<td>챌린지 추가</td>
									</tr>
									<tr>
										<td>2023.07.26</td>
										<td>챌린지 추가</td>
									</tr>
									<tr>
										<td>2023.07.26</td>
										<td>챌린지 추가</td>
									</tr>
								</table>
							</div>
							<a href="../challenge/challengeInsert.do" class="btn btn-warning btn-hover-secondery"> 챌린지 추가 </a>
						</div>
					</div>
				</div>
				<!-- 챌린지 인증 -->

				<div
					class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 text-center">
					<div class="card border-0 shadow">
						<div class="card-body">
							<div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
								<table class="type09">
									<thead>
										<th colspan="2">챌린지 인증 목록</th>
									</thead>
									<tr>
										<td>2023.07.26</td>
										<td>챌린지 인증</td>
									</tr>
									<tr>
										<td>2023.07.26</td>
										<td>챌린지 인증</td>
									</tr>
									<tr>
										<td>2023.07.26</td>
										<td>챌린지 인증</td>
									</tr>
								</table>
							</div>
							<a href="../challenge/adminChallengeCertList.do" class="btn btn-warning btn-hover-secondery"> 챌린지 추가 </a>
						</div>
					</div>
				</div>

				<!-- 도감 -->

				<div
					class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 text-center mt-4">
					<div class="card border-0 shadow">
						<div class="card-body">
							<div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
								<table class="type09">
									<thead>
										<th colspan="2">도감 목록</th>
									</thead>
									<tr>
										<td>2023.07.26</td>
										<td>도감</td>
									</tr>
									<tr>
										<td>2023.07.26</td>
										<td>도감</td>
									</tr>
									<tr>
										<td>2023.07.26</td>
										<td>도감</td>
									</tr>
								</table>
							</div>
							<a href="../dogam/dogamWrite.do" class="btn btn-warning btn-hover-secondery"> 도감 추가 </a>
						</div>
					</div>
				</div>

				<!-- 기부 -->

				<div
					class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 text-center mt-4">
					<div class="card border-0 shadow">
						<div class="card-body">
							<div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
								<table class="type09">
									<thead>
										<th colspan="2">기부 목록</th>
									</thead>
									<tr>
										<td>2023.07.26</td>
										<td>기부</td>
									</tr>
									<tr>
										<td>2023.07.26</td>
										<td>기부</td>
									</tr>
									<tr>
										<td>2023.07.26</td>
										<td>기부</td>
									</tr>
								</table>
							</div>
							<a href="../donation/adDonationList.do" class="btn btn-warning btn-hover-secondery"> 도감 추가 </a>
						</div>
					</div>
				</div>

				<!-- 뉴스 -->
				<div
					class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 text-center mt-4">
					<div class="card border-0 shadow">
						<div class="card-body">
							<div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
								<table class="type09">
									<thead>
										<th colspan="2">뉴스 목록</th>
									</thead>
									<tr>
										<td>2023.07.26</td>
										<td>뉴스</td>
									</tr>
									<tr>
										<td>2023.07.26</td>
										<td>뉴스</td>
									</tr>
									<tr>
										<td>2023.07.26</td>
										<td>뉴스</td>
									</tr>
								</table>
							</div>
							<a href="../news/newsWrite.do" class="btn btn-warning btn-hover-secondery"> 뉴스 추가 </a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>