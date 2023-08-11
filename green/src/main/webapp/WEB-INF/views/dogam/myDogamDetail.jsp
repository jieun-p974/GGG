<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="../../../resources/styles/myDogamDetail.css"rel="stylesheet" type="text/css">
<title>my동물도감 | 상세보기</title>
</head>
<body>
	<%@include file="../layouts/header.jsp"%>
	<section class="pricing position-relative overflow-hidden">
		<div class="container position-relative">
			<div class="row justify-content-center mt-5">
				<div class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12">
					<div class="card position-relative shadow border-0 h-100">
						<div class="card-body p-3">
							<div class="animal_info">
								<img class="img" src="../resources/imgs/dogam/${detail.lv_img}" />
								<p class="name">${detail.do_title}</p>
								<c:if test="${detail.nowLv eq 3}">
									<button class="changeBtn">이름 지어주기</button>
								</c:if>
							</div>
							<div class="animal_exp">
								<div class="exps mb-2">
									<div class="exp_point">현재레벨 : ${detail.nowLv}</div>
									<div class="exp_point">(${detail.do_exp}/${detail.lev_max_point})</div>
								</div>
								<progress id=progress max="${detail.lev_max_point}" min=0
									value="${detail.do_exp}"></progress>
								<div class="exps mt-2">
									<div class="exp_now">레벨1</div>
									<div class="exp_end">레벨3(성체)</div>
								</div>
							</div>
							<div class="animal_level d-flex align-items-center">
								<img class="level_img1"
									src="../resources/imgs/dogam/${detail.img1}" /> <img
									class="arrow1" src="../../../resources/imgs/arrow.png" /> <img
									class="level_img2" src="../resources/imgs/dogam/${detail.img2}" />
								<img class="arrow2" src="../../../resources/imgs/arrow.png" />
								<img class="level_img3"
									src="../resources/imgs/dogam/${detail.img3}" />
							</div>
						</div>
					</div>
				</div>
				<div class="col-xxl-8 col-xl-8 col-lg-8 col-md-6 col-sm-6 col-12">
					<div class="card position-relative shadow border-0 h-100">
						<div class="card-body pb-4">
							<h2 class="text-black mt-5 mb-5 text-center">멸종위기 동물
								'${detail.do_title}'을 소개합니다.</h2>
							<p style="line-height: 2rem">${detail.do_content}</p>
						</div>
						<div
							class="card-action text-end pb-xxl-5 pb-xl-5 pb-lg-5 pb-md-4 pb-sm-4 pb-4 me-5">
							<a href="dogam.do"
								class="btn btn-warning btn-hover-secondery text-capitalize">도감보기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>