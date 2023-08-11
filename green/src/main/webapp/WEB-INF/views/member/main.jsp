<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GGG: 지구를 지켜라</title>
<script src="/resources/js/jquery.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/custom.js"></script>
<script src="/resources/libs/OwlCarousel-2/dist/owl.carousel.min.js"></script>
</head>
<body>
	<c:if test="${userType == 2}">
		<h4 style="">${userId}${userName} ${sessionTime} 접속</h4>
	</c:if>
	<%@include file="../layouts/header.jsp" %>
	<section class="hero-banner position-relative overflow-hidden">
		<div class="container">
			<div class="row d-flex flex-wrap align-items-center">
				<div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
					<div class="position-relative left-hero-color">
						<h1 class="mb-0 fw-bold">
							환경 운동을<br />해야하는 이유
						</h1>
						<p class="introduce">
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
		<div class="container position-relative">
			<img src="/resources/imgs/service/dot-shape.png"
				class="shape position-absolute">
			<div class="row">
				<div
					class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
					<h2 class="text-black mb-0">
						멸종 위기 동물에도 등급이 있다는 사실,<br>알고 계신가요?
					</h2>
				</div>
			</div>
			<div
				class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
				<div class="card border-0 shadow">
					<div class="card-body">
						<div
							class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
							<img class="img-fluid" src="/resources/imgs/grade.png" alt="">
						</div>
					</div>
				</div>
			</div>
			<div class="row d-flex flex-wrap justify-content-center step-row">
				<div
					class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 text-center">
					<div class="card border-0 shadow">
						<div class="card-body">
							<div
								class="overflow-hidden rounded-circle position-relative d-flex align-items-center justify-content-center mx-auto text-center">
								<img class="img-grade" src="/resources/imgs/panda.jpg" alt="">
							</div>
							<h5 class="mb-0 fw-500">판다</h5>
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
								<img class="img-grade" src="/resources/imgs/girin.jpg" alt="">
							</div>
							<h5 class="mb-0 fw-500">기린</h5>
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
								<img class="img-grade" src="/resources/imgs/orang.jpg" alt="">
							</div>
							<h5 class="mb-0 fw-500">오랑우탄</h5>
							<h3 class="fs-4">위급등급</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="our-service position-relative overflow-hidden">
		<div class="container">
			<div class="row">
				<div class="col-xxl-8 col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
					<img src="/resources/imgs/our-service/our-service.svg"
						class="img-fluid">
				</div>
				<div
					class="col-xxl-4 col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ps-xxl-0 ps-xl-0 ps-lg-3 ps-md-3 ps-sm-3 ps-3">
					<h2 class="text-black mb-0">GGG와 함께하는 챌린지란?</h2>
					<div class="d-flex align-items-center mt-3">
						<a class="btn btn-warning btn-hover-secondery"
							href="/challenge/challengeList.do" style="z-index: 0;">챌린지
							구경하기</a>
					</div>
					<p class="mb-0 fw-500 fs-7">
						챌린지를 진행하시면 일정 포인트를 얻을 수 있습니다.<br /> 챌린지를 통해 획득한 포인트를 기부하면 기부하신<br />포인트만큼
						캐릭터를 성장 시킬 수 있습니다.
					</p>

<<<<<<< HEAD
				</div>
			</div>
		</div>
	</section>
	<section class="portfolio position-relative bg-primary">
		<div class="container position-relative">
			<div class="row">
				<div
					class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
					<h2 class="text-white mb-0">다양한 캐릭터들을 성장시켜보세요!</h2>
					<a href="/dogam/dogam.do"
						class="btn btn-warning btn-hover-secondery section-btn">당장
						만나러가기</a>
				</div>
			</div>
			<div class="row d-flex flex-wrap justify-content-center step-row">
				<div
					class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 text-center">
					<div class="card bg-transparent">
						<div class="card-body">
							<div
								class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
								<img class="img-fluid" src="/resources/imgs/bear_shadow.png"
									alt="">
							</div>
							<h3 class="fs-4 text-white">8월의 캐릭터</h3>
							<h3 class="fs-4 text-white">멸종위기 취약등급</h3>
							<p class="fs-7 mb-0 fw-500 text-white">
								힌트!저는 먹이사슬 최상위에 존재해요.<br /> 생의 대부분을 바다와 빙하 주변에서 보낸답니다.
							</p>
						</div>
					</div>
				</div>
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
						<div class="card-body pb-4">
							<small class="fs-7 d-block text-warning text-center">3회
								도전권</small>
							<h2 class="mb-4 text-center position-relative">
								<sub class="fs-2 text-black">0</sub><sup
									class="fs-6 position-absolute">$</sup>
							</h2>
							<small class="fs-7 d-block text-center">Free</small>
							<p class="fs-7 text-center fw-500">For individuals looking
								for a simple CRM solution</p>
							<ul class="list-unstyled mb-0 pl-0">
								<li class="d-flex align-items-start"><i
									class="ti ti-circle-check fs-4 pe-2"></i> <span
									class="fs-7 text-black">Basic CRM features</span></li>
								<li class="d-flex align-items-start"><i
									class="ti ti-circle-check fs-4 pe-2"></i> <span
									class="fs-7 text-black">Unlimited Personal Pipelines</span></li>
								<li class="d-flex align-items-start"><i
									class="ti ti-circle-check fs-4 pe-2"></i> <span
									class="fs-7 text-black">Email Power Tools</span></li>
							</ul>
						</div>
						<div
							class="card-action text-center pb-xxl-5 pb-xl-5 pb-lg-5 pb-md-4 pb-sm-4 pb-4">
							<a href="#"
								class="btn btn-warning btn-hover-secondery text-capitalize">Set
								Started</a>
						</div>
					</div>
				</div>
				<div class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12">
					<div class="card position-relative shadow border-0 h-100">
						<div
							class="position-absolute badge bg-warning d-inline-block mx-auto">
							Most Popular</div>
						<div class="card-body pb-4">
							<small class="fs-7 d-block text-warning text-center">7회
								도전권</small>
							<h2 class="mb-4 text-center position-relative">
								<sub class="fs-2 text-black">49</sub><sup
									class="fs-6 position-absolute">$</sup>
							</h2>
							<small class="fs-7 d-block text-center">Free</small>
							<p class="fs-7 text-center fw-500">For individuals looking
								for a simple CRM solution</p>
							<ul class="list-unstyled mb-0 pl-0">
								<li class="d-flex align-items-start"><i
									class="ti ti-circle-check fs-4 pe-2"></i> <span
									class="fs-7 text-black">Basic CRM features</span></li>
								<li class="d-flex align-items-start"><i
									class="ti ti-circle-check fs-4 pe-2"></i> <span
									class="fs-7 text-black">Unlimited Personal Pipelines</span></li>
								<li class="d-flex align-items-start"><i
									class="ti ti-circle-check fs-4 pe-2"></i> <span
									class="fs-7 text-black">Email Power Tools</span></li>
								<li class="d-flex align-items-start"><i
									class="ti ti-circle-check fs-4 pe-2"></i> <span
									class="fs-7 text-black">Unlimited Shared Pipelines</span></li>
							</ul>
						</div>
						<div
							class="card-action text-center pb-xxl-5 pb-xl-5 pb-lg-5 pb-md-4 pb-sm-4 pb-4">
							<a href="#"
								class="btn btn-warning btn-hover-secondery text-capitalize">Set
								Started</a>
						</div>
					</div>
				</div>
				<div class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12">
					<div class="card position-relative shadow border-0 h-100">
						<div class="card-body pb-4">
							<small class="fs-7 d-block text-warning text-center">무제한
								도전권</small>
							<h2 class="mb-4 text-center position-relative">
								<sub class="fs-2 text-black">99</sub><sup
									class="fs-6 position-absolute">$</sup>
							</h2>
							<small class="fs-7 d-block text-center">Free</small>
							<p class="fs-7 text-center fw-500">For individuals looking
								for a simple CRM solution</p>
							<ul class="list-unstyled mb-0 pl-0">
								<li class="d-flex align-items-start"><i
									class="ti ti-circle-check fs-4 pe-2"></i> <span
									class="fs-7 text-black">Basic CRM features</span></li>
								<li class="d-flex align-items-start"><i
									class="ti ti-circle-check fs-4 pe-2"></i> <span
									class="fs-7 text-black">Unlimited Personal Pipelines</span></li>
								<li class="d-flex align-items-start"><i
									class="ti ti-circle-check fs-4 pe-2"></i> <span
									class="fs-7 text-black">Email Power Tools</span></li>
								<li class="d-flex align-items-start"><i
									class="ti ti-circle-check fs-4 pe-2"></i> <span
									class="fs-7 text-black">Unlimited Shared Pipelines</span></li>
								<li class="d-flex align-items-start"><i
									class="ti ti-circle-check fs-4 pe-2"></i> <span
									class="fs-7 text-black"> Full API Access</span></li>
							</ul>
						</div>
						<div
							class="card-action text-center pb-xxl-5 pb-xl-5 pb-lg-5 pb-md-4 pb-sm-4 pb-4">
							<a href="#"
								class="btn btn-warning btn-hover-secondery text-capitalize">Set
								Started</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@include file="../layouts/footer.jsp" %>
=======
          <div class="intro_content">
            우리를 둘러싼 자연 환경의 균형이 무너졌을 때, 그 여파는 우리에게도
            분명히 다가옵니다.<br />따라서 야생동물과 자연 서식지를 보호하는 것은
            인류의 안전과 행복을 위해서도 필수적인 일입니다.<br />생태계의 미래를
            보호하는 것이 바로 우리가 살고 일하는 터전을 오래도록 보전하는
            길입니다.<br />GGG는 우리의 자연이 더이상 아프지 않도록, 작은 힘들을
            모으고 싶습니다.<br /><br />여러 가지 챌린지를 통해 생활 속에서 작은
            실천부터 시작해보는 건 어떨까요?<br />챌린지 성공을 통해 포인트를
            획득하고, 획득한 포인트로 나만의 동물들을 키워보세요.<br />실천이
            힘들때면 환경을 지키고자하는 수많은 동료들과 커뮤니티에서
            소통해보세요!<br /><br />이제 준비가 되셨다면 텀블러에 커피를,
            다회용기에 음식을 포장하는 것에서부터 같이 시작해봅시다.<br /><br />
            <c:if test="${userType == 1}">
            <button onclick="location.href='../pay/challengePay.do?userId=${userId}'">GGG와 함께 하기</button>
        	</c:if>
        	<c:if test="${userType eq null}">
        	<button onclick="location.href='../member/signup.do'">GGG와 함께 하기</button>
        	</c:if>
        	</div>
        </div>
      </div>

      <div class="grade">
        <div class="grade_animal">
          <img class="grade_img" src="" />
          <div class="grade_txt">취약등급</div>
        </div>
        <div class="grade_animal">
          <img class="grade_img" src="" />
          <div class="grade_txt">취약등급</div>
        </div>
        <div class="grade_animal">
          <img class="grade_img" src="" />
          <div class="grade_txt">위기등급</div>
        </div>
        <div class="grade_animal">
          <img class="grade_img" src="" />
          <div class="grade_txt">위급등급</div>
        </div>

        <div class="grade_content">
          <div class="grade_content_txt">
            멸종 위기 동물에도 등급이 있다는 사실,<br />알고 계신가요?
          </div>
          <img class="grade_content_img" src="/resources/imgs/grade.png" />
        </div>
      </div>

      <div class="hint">
        <div class="hint-month">
          <div class="hint_txt">멸종위기 취약등급 OOO</div>

          <div class="month">8월의 동물</div>

          <img class="hint_shadow" src="" />
        </div>

        <div class="hint_intro">
          <div class="hint_content">
            <p>
              <span>힌트!<br /><br /></span>저는 먹이사슬 최상위에 존재해요.<br />
              생의 대부분을 바다와 빙하 주변에서 보낸답니다.
            </p>
          </div>

          <button class="btn" onclick="location.href='/challenge/challengeList.do'">지금 바로 챌린지 참여하러 가기!</button>
          <button class="btn" onclick="location.href='/dogam/dogam.do'">동물캐릭터 도감 보러가기</button>
        </div>
      </div>
    </div>
  </div>
<%@include file="../layouts/footer.jsp" %>
>>>>>>> refs/remotes/origin/gaeun
</body>
</html>