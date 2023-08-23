<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GGG: 지구를 지켜라</title>
<link rel="stylesheet" href="/resources/styles/font.css">
<style type="text/css">
.imgss{
	position: absolute;
	top: 45%;
	z-index: 2;
}
.top{
	display: scroll;
	position: fixed;
	bottom: 12%;
	right:5%;
	width: 80px;
}
.top-img{
	width:100%;
}
.introduces{
	line-height: 2.5rem;
}

</style>

</head>
<body>
	<c:if test="${userType == 2}">
		<h4 style="">${userId}${userName} ${sessionTime} 접속</h4>
	</c:if>
	<%@include file="WEB-INF/views/layouts/header.jsp"%>
	<section class="hero-banner position-relative overflow-hidden">
		<div class="container">
			<div class="row d-flex flex-wrap align-items-center">
			
				<div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
					<div class="position-relative left-hero-color">
						<h1 class="mb-0 fw-bold">
							환경 운동을<br />해야하는 이유
						</h1>
						<p class="introduces">
							자연 환경 균형 파괴는 우리에게도 영향을 미치므로 <br />야생동물과 서식지 보호는 필수입니다.<br /> 이를
							통해 우리의 안전과 행복이 보장되며, <br /> 생태계 보호는 우리의 삶과 미래를 지속 가능하게 합니다. <br />
							"GGG"는 자연 보호를 위한 노력을 의미하며, <br /> 작은 실천부터 시작하는 여러 챌린지를 제안합니다. <br />
							챌린지 성공으로 포인트를 얻어 동물을 키우는 등 보상이 가능하며, <br /> 어려울 때는 동료들과 소통하여 지속
							가능한 행동을 지지합니다. <br /> 시작은 커피 텀블러 사용이나 다회용기 이용에서부터 가능합니다.
						</p>
						<a href="../pay/challengePay.do?userId=${userId}"
							class="btn btn-warning btn-hover-secondery"> GGG와 함께 하기 </a>
					</div>
				</div>
				<div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
					<div class="position-relative right-hero-color">
						<img src="/resources/imgs/main_test.png" alt="" class="img-fluid">
					</div>
				</div>
			</div>
		</div>
	</section>
	
 	<section class="service position-relative overflow-hidden">
		
			<div class="d-flex align-items-center justify-content-center ms-5"> 
				<img class="img-fluid" src="/resources/imgs/main_guide.png" style="width:60%;">
			</div>
		
	</section> 
	<section class="our-service position-relative overflow-hidden">
		<div class="container">
			<div class="row">
				<div class="col-xxl-8 col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
					<img src="/resources/imgs/main_chal.png"
						class="img-fluid">
				</div>
				<div
					class="col-xxl-4 col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ps-xxl-0 ps-xl-0 ps-lg-3 ps-md-3 ps-sm-3 ps-3">
					<h2 class="text-black mb-0">GGG와 함께하는 챌린지란?</h2>
					
					
					<p class="mb-0 fw-500 fs-7">
						챌린지를 진행하시면 일정 포인트를 얻을 수 있습니다.<br /> 챌린지를 통해 획득한 포인트를 기부하면 기부하신<br />포인트만큼
						캐릭터를 성장 시킬 수 있습니다.
					</p>

					<div class="d-flex align-items-center mt-3">
						<a class="btn btn-warning btn-hover-secondery"
							href="/challenge/challengeList.do" style="z-index: 0;">챌린지
							구경하기</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="portfolio position-relative bg-primary">
	<div class="container position-relative">
			<img src="/resources/imgs/service/dot-shape.png"
				class="shape position-absolute">
			<div class="row">
				<div
					class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
					<h3 class="text-black mb-0 fw-900">
						멸종 위기 동물에도 등급이 있다는 사실, 알고 계세요?
					</h3>
				</div>
			</div>
			<div
				class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
				<div class="card border-0 shadow">
					<div class="card-body">
						<div
							class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
							<img class="img-fluid" src="/resources/imgs/grade.png">
						</div>
							<p class="fw-500 fs-7 text-black"> 우리가 흔히 알고 있는 수많은 동물들이 멸종 위기에 처해있습니다.<br/>
							GGG는 소중한 동물친구들을 모티브삼아 캐릭터로 만들었습니다. <br/>
							커피 한잔 가격으로 기부도 하고, 귀여운 캐릭터도 키워보는 건 어떠세요?</p>
							
					</div>
				</div>
			</div>
			<div class="row d-flex flex-wrap justify-content-center step-row pt-3">
				<div
					class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 text-center">
					<div class="card border-0 shadow">
						<div class="card-body">
							<div
								class="overflow-hidden rounded-circle position-relative d-flex align-items-center justify-content-center mx-auto text-center">
								<img class="img-grade" src="/resources/imgs/dogam/c8edf3b3-c405-423f-b885-fceaf85197e0_코알라.jpg"
								onmouseover="this.src='/resources/imgs/dogam/1223b8b7-2307-4446-90a3-72469c2626c9_코알라3.jpg'"
								onmouseout="this.src='/resources/imgs/dogam/c8edf3b3-c405-423f-b885-fceaf85197e0_코알라.jpg'">
							</div>
							<h5 class="mb-0 fw-500">코알라</h5>
							<h3 class="fs-4">취약등급</h3>
						</div>
					</div>
				</div>
				<div
					class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 text-center">
					<div class="card border-0 shadow">
						<div class="card-body">
							<div
								class="overflow-hidden rounded-circle position-relative d-flex align-items-center justify-content-center mx-auto text-center">
								<img class="img-grade" src="/resources/imgs/dogam/962cff43-8526-4d49-bb91-c6a65db545f8_황제펭귄.jpg"
								onmouseover="this.src='/resources/imgs/dogam/f74ddc05-cba7-4111-a9ee-2e3ae5799ca5_황제펭귄3.jpg'"
								onmouseout="this.src='/resources/imgs/dogam/962cff43-8526-4d49-bb91-c6a65db545f8_황제펭귄.jpg'">
							</div>
							<h5 class="mb-0 fw-500">황제펭귄</h5>
							<h3 class="fs-4">준위협등급</h3>
						</div>
					</div>
				</div>
				<div
					class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 text-center">
					<div class="card border-0 shadow">
						<div class="card-body">
							<div
								class="overflow-hidden rounded-circle position-relative d-flex align-items-center justify-content-center mx-auto text-center">
								<img class="img-grade" src="/resources/imgs/dogam/6a010ccb-091f-4003-ab96-d75bee4e9fce_바다거북.jpg"
								onmouseover="this.src='/resources/imgs/dogam/40e1f773-908a-47a9-ad81-0d745d63f4f1_바다거북3.jpg'"
								onmouseout="this.src='/resources/imgs/dogam/6a010ccb-091f-4003-ab96-d75bee4e9fce_바다거북.jpg'">
							</div>
							<h5 class="mb-0 fw-500">바다거북</h5>
							<h3 class="fs-4">위기등급</h3>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		<div class="container position-relative">
			<div class="row">
				<div
					class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
					<p class="text-white mb-0 fs-3 mt-3"> 귀여운 캐릭터를 직접 성장시키고, 도감을 모아보세요!</p>
				</div>
			</div>
			<div class="row d-flex flex-wrap justify-content-center step-row">
				<img class="imgss" src="/resources/imgs/main_dogam.png">
				<div
					class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 text-center">
					<div class="card bg-transparent">
						<div class="card-body" style="z-index: 1;">
							<div
								class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
								<img class="img-fluid" src="/resources/imgs/main_bear.png" style="width:50%"
								>
							</div>
							<h3 class="fs-4 text-white">이달의 신규 캐릭터</h3>
							
							<p class="fs-7 mb-0 fw-500 text-white">저는 멸종위기 취약등급이에요. <br/>
							먹이사슬 최상위에 존재하며,<br /> 생의 대부분을 바다와 빙하 주변에서 보낸답니다. <br/><br/>
							제가 누군지 궁금하세요?</p>
						</div>
							
					</div>
				</div>
			</div>
			 <div class="d-flex align-items-center justify-content-center">
				<a href="/dogam/dogam.do"
							class="btn btn-warning btn-hover-secondery section-btn z-3">바로
							만나러가기</a>
			</div>
		</div>
	</section>
	<section class="pricing position-relative overflow-hidden">
		<div class="container position-relative">
			<div class="row justify-content-center">
				<div
					class="col-xxl-6 col-xl-6 col-lg-12 col-md-12 col-sm-12 col-12 text-center">
					<h2 class="pricing-head text-black mb-0 position-relative">도전권을
						구매해 챌린지에 참여해보세요</h2>
				</div>
			</div>
			<div class="row justify-content-center price-plan">
				<div class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12">
					<div class="card position-relative shadow border-0 h-100">
						<div class="card-body pt-5 p-3">
							<small class="fs-7 d-block text-warning text-center">3회
								도전권</small>
							<h2 class="mb-4 text-center position-relative">
								<sub class="fs-2 text-black justify-content-center">3,000</sub><sup
									class="fs-6 position-absolute">₩</sup>
							</h2>
							<p class="fs-7 text-center fw-500"></p>
							<ul class=" mb-0 pl-0">
								<li class="d-flex align-items-start justify-content-center"><small
									class="fs-9 text-black justify-content-center">결제일로 부터 30일간 적용됩니다.</small></li>
								<li class="d-flex align-items-start"><span
									class="fs-7 text-black">🌏 한달동안 챌린지에<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red">3번</span> 도전할 수 있습니다.</span></li>
								<li class="d-flex align-items-start"><span
									class="fs-7 text-black">🌏 챌린지를 달성하시면 챌린지의<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;난이도x100만큼 포인트를<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;지급합니다.</span></li>
							</ul>
						</div>
						<div
							class="card-action text-center pb-xxl-5 pb-xl-5 pb-lg-5 pb-md-4 pb-sm-4 pb-4">
							<a href="#"
								class="btn btn-warning btn-hover-secondery text-capitalize">도전권 결제</a>
						</div>
					</div>
				</div>
				<div class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12">
					<div class="card position-relative shadow border-0 h-100">
						<div
							class="position-absolute badge bg-warning d-inline-block mx-auto">
							Most Popular</div>
						<div class="card-body pt-5 p-3">
							<small class="fs-7 d-block text-warning text-center">7회
								도전권</small>
							<h2 class="mb-4 text-center position-relative">
								<sub class="fs-2 text-black">5,000</sub><sup
									class="fs-6 position-absolute">₩</sup>
							</h2>
							<p class="fs-7 text-center fw-500"></p>
							<ul class=" mb-0 pl-0">
								<li class="d-flex align-items-start justify-content-center"><small
									class="fs-9 text-black ">결제일로 부터 30일간 적용됩니다.</small></li>
								<li class="d-flex align-items-start"><span
									class="fs-7 text-black">🌏 한달동안 챌린지에<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red">7번</span> 도전할 수 있습니다.</span></li>
								<li class="d-flex align-items-start"><span
									class="fs-7 text-black">🌏 챌린지를 달성하시면 챌린지의<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;난이도x100만큼 포인트를 <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;지급합니다.</span></li>
							</ul>
						</div>
						<div
							class="card-action text-center pb-xxl-5 pb-xl-5 pb-lg-5 pb-md-4 pb-sm-4 pb-4">
							<a href="#"
								class="btn btn-warning btn-hover-secondery text-capitalize">도전권 결제</a>
						</div>
					</div>
				</div>
				<div class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12">
					<div class="card position-relative shadow border-0 h-100">
						<div class="card-body pt-5 p-3">
							<small class="fs-7 d-block text-warning text-center">무제한
								도전권</small>
							<h2 class="mb-4 text-center position-relative">
								<sub class="fs-2 text-black">10,000</sub><sup
									class="fs-6 position-absolute">₩</sup>
							</h2>
							<p class="fs-7 text-center fw-500"></p>
							<ul class=" mb-0 pl-0">
								<li class="d-flex align-items-start justify-content-center"><small
									class="fs-9 text-black">결제일로 부터 30일간 적용됩니다.</small></li>
								<li class="d-flex align-items-start"> <span
									class="fs-7 text-black">🌏 한달동안 챌린지에 <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red">무제한</span>으로 도전할 수 있습니다.</span></li>
								<li class="d-flex align-items-start"> <span
									class="fs-7 text-black">🌏 챌린지를 달성하시면 챌린지의<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;난이도x100만큼 포인트를<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;지급합니다.</span></li>
							</ul>
						</div>
						<div
							class="card-action text-center pb-xxl-5 pb-xl-5 pb-lg-5 pb-md-4 pb-sm-4 pb-4">
							<a href="#"
								class="btn btn-warning btn-hover-secondery text-capitalize">도전권 결제</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<a href="#" class="top"><img class="top-img" alt="top button" src="/resources/imgs/up.png"></a>
	<%@include file="WEB-INF/views/layouts/footer.jsp"%>
</body>
</html>