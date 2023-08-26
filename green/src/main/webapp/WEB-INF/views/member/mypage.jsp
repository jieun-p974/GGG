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
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/css/bootstrap.min.css"
   rel="stylesheet">
<link rel="stylesheet" href="../../../resources/styles/profile.css">
<link rel="stylesheet" href="../../../resources/styles/mypage.css">
<link rel="stylesheet" href="/resources/styles/font.css">
<title>마이페이지</title>
<style type="text/css">
.info_heon{
   display: grid;
   grid-template-columns: 1fr 1fr;
}
.info_btns{
   display: grid;
   grid-template-columns: 1fr 1fr;
   align-items: center;
   justify-items: center;
}
.icons{
   width:30%;
}
#progress {
    appearance: none;
    width: 100%;
}
#progress::-webkit-progress-bar {
    background:#f0f0f0;
    border-radius:10px;
    box-shadow: inset 3px 3px 10px #ccc;
}
#progress::-webkit-progress-value {
    border-radius:10px;
    background: #1D976C;
    background: -webkit-linear-gradient(to right, #93F9B9, #1D976C);
    background: linear-gradient(to right, #93F9B9, #1D976C);
}
</style>
<jsp:useBean id="now" class="java.util.Date" />
</head>
<body>
	<%@include file="../layouts/header.jsp"%>
	<div class="card-user-profile">
		<div class="profile-page-left">
			<div class="row">
				<div class="col-lg-12 mb-4 text-center">
					<div
						class="profile-picture profile-picture-lg bg-gradient bg-primary mb-4">
						<img src="/resources/imgs/member/${meminfo.m_img_addr}" width="144"
							height="144">
						<h4 class="mt-3">${meminfo.name}님</h4>
						<fmt:parseNumber var="today" value="${now.time / (1000*60*60*24)}"
							integerOnly="true" scope="request" />
						<fmt:parseDate var="sdate" value="${meminfo.sdate}"
							pattern="yyyy-MM-dd" />
						<fmt:parseNumber var="sdate2"
							value="${sdate.time / (1000*60*60*24)}" integerOnly="true"
							scope="request" />
					</div>
					<h6 class="mt-5 pt-2">
						${meminfo.id}&nbsp회원님&nbsp환영합니다! <br /> <br /> 🌏&nbspGGG와 함께한지
						${today-sdate2}일 째&nbsp🌏
					</h6>
					<c:if test="${userTryNum ne 999}">
					<h6>
						보유포인트 : ${meminfo.remainder_point} p <br /> <br /> 잔여도전횟수 : ${meminfo.tryNum} 회
					</h6>
					</c:if>
					<c:if test="${meminfo.tryNum eq 999}">
					<h6>
						보유포인트 : ${meminfo.remainder_point} p <br /> <br /> 잔여도전횟수 : 무제한
					</h6>
					</c:if>
					 <h6 class="mt-4"> 도전권은 ${dogeonGigan} 까지 <br />사용가능합니다.</h6>
					 <a class="btn btn-warning btn-hover-secondery" onclick="goPay()"> GGG와 함께 하기 </a>
				</div>
			</div>
		</div>
		<div class="profile-page-center">
			<!-- 회원 정보 -->
			<section class="our-service position-relative overflow-hidden">
				<div class="container mt-5">
					<div class="info_heon">
						<div
							class="col-xxl-6 col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 ps-xxl-0 ps-xl-0 ps-lg-3 ps-md-3 ps-sm-3 ps-3">
							<h2 class="text-black mb-0">회원정보</h2>
							<div class="d-flex align-items-center mt-3">
								<div class="grid">
									<p class="fs-7 text-black" style="padding: 0">아이디 :
										${meminfo.id}</p>
									<p class="fs-7 text-black" style="padding: 0">이메일주소 :
										${meminfo.email}</p>
									<p class="fs-7 text-black" style="padding: 0">전화번호 :
										${meminfo.tel}</p>
									<p class="fs-7 text-black" style="padding: 0">주소 :
										${meminfo.address}</p>
									<p class="fs-7 text-black" style="padding: 0">간편결제 카드등록 여부
										: ${meminfo.card_reg_YN}</p>
									<p class="fs-7 text-black" style="padding: 0">간편결제 등록 여부 :
										${meminfo.account_reg_YN}</p>
								</div>
							</div>
						</div>
						<div class="mt-3 info_btns">
							<div>
								<img alt="간편카드 등록" src="/resources/imgs/gapun_card.png" class="icons">
								<a class="btn btn-warning btn-hover-secondery text-black" style="width: 215px" href="../member/cardRegist.do?userId=${userId}">간편결제 카드 등록</a>
							</div>
							<div>
								<img alt="간편계좌 등록" src="/resources/imgs/ganpun_acc.png" class="icons">
								<a 	class="btn btn-warning btn-hover-secondery text-black" style="width: 215px" href="../member/accountRegist.do?userId=${userId}">간편결제 계좌
									등록</a> 
							</div>
							<div>
								<img alt="회원 정보 수정" src="/resources/imgs/sujung.png" class="icons">
								<a class="btn btn-warning btn-hover-secondery text-black" style="width: 215px"  href="infoEdit.do?id=${userId}"> 회원정보 수정 </a>
							</div>
							<div>
								<img alt="결제수단 관리" src="/resources/imgs/paymana.png" class="icons">
								<a class="btn btn-warning btn-hover-secondery text-black" style="width: 215px" href="../pay/payment.do?userId=${userId}" > 결제 수단 관리 </a>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- 대표 캐릭터 없는 경우 -->
			<c:if test="${check<=0}">
			<section class="portfolio position-relative bg-primary">
				<div class="container position-relative">
					<div class="row">
						<div
							class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
							<h3 class="text-white mb-3">아직 대표캐릭터를 설정하지 않으셨군요? <br/>
							더 많은 캐릭터들을 만나보세요.</h3>
						</div>
					</div>
					<a class="btn btn-warning btn-hover-secondery"
										href="../dogam/dogam.do">도감전체보기</a> 
					</div>
					</section>
			</c:if>
			
			<!-- 도감 정보 -->
			<c:if test="${check>0}">
			<section class="portfolio position-relative bg-primary">
				<div class="container position-relative">
					<div class="row">
						<div
							class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
							<h2 class="text-white mb-0">다양한 캐릭터들을 성장시켜보세요!</h2>
						</div>
					</div>
					<div class="row d-flex flex-wrap justify-content-center mt-5">
						<div class="col-xxl-4 col-xl-2 col-lg-2 col-md-12 col-sm-12 col-12">
							<div class="card border-0 shadow">
								<div class="card-body">
									<div
										class="overflow-hidden rounded-circle position-relative d-flex align-items-center justify-content-center mx-auto text-center">
										
										<img class="img-grade" src="/resources/imgs/dogam/${myDogam.lv_img}">
										
									</div>
									<div
										class="card-action text-center pb-xxl-5 pb-xl-5 pb-lg-5 pb-md-4 pb-sm-4 pb-4">
										<p class="fs-3 mt-5"> ${myDogam.do_title} </p>
										<c:if test= "${myDogam.nowLv eq 3}">
										<a class="btn btn-warning btn-hover-secondery mt-5" href="../dogam/nickname.do?do_no=${myDogam.do_no}&userId=${userId}">이름지어주기</a>
										</c:if>
									</div>
								</div>
							</div>
						</div>
						<div class="d-flex col-xxl-8 col-xl-10 col-lg-10 col-md-12 col-sm-12 col-12 ps-xxl-0 ps-xl-0 ps-lg-3 ps-md-3 ps-sm-3 ps-3 flex-wrap">
							<!-- lv1 -->
							<div class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 text-center" style="height: 350px">
								<div class="card border-0 shadow h-100">
									<div class="card-body h-100 p-3">
										<div class="h-100 overflow-hidden rounded-circle position-relative d-flex align-items-center justify-content-center mx-auto text-center">
											<img class="img-grade" style="width:80%; height:auto;"  src="/resources/imgs/dogam/${myDogam.img1}">
										</div>
									</div>
								</div>
											<p class="text-white fs-7 mt-2"> 레벨1 </p>
							</div>
							<!-- lv2 -->
							<div class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 text-center" style="height: 350px">
								<div class="card border-0 shadow h-100">
									<div class="card-body h-100 p-3">
										<div class="h-100 overflow-hidden rounded-circle position-relative d-flex align-items-center justify-content-center mx-auto text-center">
											<img class="img-grade" style="width:80%; height:auto;" src="/resources/imgs/dogam/${myDogam.img2}">
										</div>
									</div>
								</div>
											<p class="text-white fs-7 mt-2"> 레벨2 </p>
							</div>
							<!-- lv3 -->
							<div class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12 text-center" style="height: 350px">
								<div class="card border-0 shadow h-100">
									<div class="card-body h-100 p-3">
										<div class="h-100 overflow-hidden rounded-circle position-relative d-flex align-items-center justify-content-center mx-auto text-center">
											<img class="img-grade" style="width:80%; height:auto;" src="/resources/imgs/dogam/${myDogam.img3}">
										</div>
									</div>
								</div>
											<p class="text-white fs-7 mt-2"> 레벨3 </p>
							</div>
							
							<div class="animal_exp ms-3 mt-5">
								<div class="exps mb-2 d-flex justify-content-between">
									<p class="exp_level">현재레벨 : ${myDogam.nowLv}</p>
									                           <p class="exp_point">다음 레벨까지 (${myDogam.do_exp}/${myDogam.lev_max_point})</p>
								</div>
								<progress id=progress max="${myDogam.lev_max_point}" min=0
									value="${myDogam.do_exp}"></progress>
								<div class="exps mt-2 d-flex justify-content-between">
									<div class="exp_now">레벨 ${myDogam.nowLv}</div>
									
									<c:if test= "${myDogam.nowLv<3}">
									<div class="exp_end">레벨 ${myDogam.nowLv+1}</div>
									</c:if>
									
									<c:if test= "${myDogam.nowLv eq 3}">
									<div class="exp_end">만렙달성!</div>
									</c:if>
								</div>
								
								<div class="d-flex justify-content-between mt-2">
									<a class="btn btn-warning btn-hover-secondery"
										href="../dogam/dogam.do">도감전체보기</a> <a
										class="btn btn-warning btn-hover-secondery"
										href="../dogam/myDogam.do?id=${userId}">내도감보기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			</c:if>
			<!-- 도전중인 챌린지, 기부내역 -->
			<section class="pricing position-relative overflow-hidden">
				<div class="container position-relative">
					<div class="row justify-content-center">
						<div class="col-xxl-5 col-xl-5 col-lg-5 col-md-6 col-sm-6 col-12">
							<div class="card position-relative shadow border-0 h-100">
								<div class="card-body pb-4">
									<h4 class="mb-4 text-center position-relative">도전중인 챌린지</h4>
									<ul class="list-unstyled mb-0 pl-0">
										<c:forEach items="${challList}" var="c">
											<li class="d-flex align-items-start"
												style="line-height: 2rem;"><span
												class="fs-7 text-black">${c.chal_name}</span></li>
										</c:forEach>
									</ul>
								</div>
								<div
									class="card-action text-center pb-xxl-5 pb-xl-5 pb-lg-5 pb-md-4 pb-sm-4 pb-4">
									<a href="../challenge/myChallenge.do?userId=${userId}"
										class="btn btn-warning btn-hover-secondery text-capitalize">도전중인
										챌린지</a> <a href="../challenge/challengeList.do"
										class="btn btn-warning btn-hover-secondery text-capitalize">챌린지
										참여하기</a>
								</div>
							</div>
						</div>
						<div class="col-xxl-5 col-xl-5 col-lg-5 col-md-6 col-sm-6 col-12">
							<div class="card position-relative shadow border-0 h-100">
								<div class="card-body pb-4">
									<h4 class="mb-4 text-center position-relative">
										기부 내역
										</h2>
										<ul class="list-unstyled mb-0 pl-0">
											<c:forEach items="${myDonaList}" var="d">
												<li class="d-flex align-items-start"
													style="line-height: 2rem;"><span
													class="fs-7 text-black">${d.don_name}</span></li>
											</c:forEach>
										</ul>
								</div>
								<div
									class="card-action text-center pb-xxl-5 pb-xl-5 pb-lg-5 pb-md-4 pb-sm-4 pb-4">
									<a href="../donation/donation.do"
										class="btn btn-warning btn-hover-secondery text-capitalize">기부하러
										가기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<%@include file="../layouts/footer.jsp"%>
		</div>
	</div>
<script type="text/javascript">
   function goPay(){
      if(${userTryNum >0 && userTryNum<999}){
         alert("잔여 도전권이 남아있습니다!");
      }else if(${sysYear < dogeonGigan && userTryNum==999}){
         alert("유효기간이 지나지 않았습니다!");
      }else{
         location.href="../pay/challengePay.do?userId=${userId}";
      }
      
   }
   </script>
</body>
</html>