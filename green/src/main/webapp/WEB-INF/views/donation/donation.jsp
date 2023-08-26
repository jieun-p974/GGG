<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="../../../resources/styles/donation.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/resources/styles/font.css">
<style type="text/css">
.tabs {
    position: fixed;
    right: 2%;
    background: #fff;
    top: 20%;
}
</style>
<title>기부처 리스트</title>
</head>
<body>
	<%@include file="../layouts/header.jsp"%>
	<section class="service position-relative">
		<div class="container position-relative">
			<div class="row">
				<div class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
					<h2 class="text-black mt-5 mb-3 text-center col-12">열심히 모은 포인트를 지구를 위해 사용해 보세요</h2>
				</div>
			</div>
			<div class="gibu_list">
				<c:forEach items="${list}" var="dona">
					<div class="gibu">
						<div class="card">
							<div class="card-body" style="height: 600px;">
								<div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
	
									<c:set var="total" value="${total+dona.don_point_sum}" />
									<div class="gibu">
										<div class="rectangel">
											<a href="donationDetail.do?don_no=${dona.don_no}">
												<img class="gibu_img" src="/resources/imgs/donaImg/${dona.d_img1_addr}" />
											</a>
										</div>
										<div class="dona_text">
											<p class="dona">${dona.don_name}</p>
											<!-- 프로그래스바해서 진행도 따라서 표시하기 -->
											<div class="bar">
												<progress id=progress max=100 min=0 value="${dona.don_point_sum/dona.don_goal*100}"></progress>
											</div>
											<div class="points">
												<fmt:formatNumber type="percent" value="${dona.don_point_sum/dona.don_goal}"
													var="percent" pattern="0%" />
												<p class="percent">${percent}</p>
												<p class="point">${dona.don_goal}P</p>
											</div>
											<p class="point">현재 기부 포인트:${dona.don_point_sum}P</p>
										</div>
									</div>
	
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<div class="col-xxl-2 col-xl-2 col-lg-2 col-md-6 col-sm-6 col-12 tabs">
				<div class="row">
					<div class="col-lg-12 mb-4">
						<h4 class="text-black">참여현황</h4>
						<h4 class="text-black">여러분의 참여로 이만큼 모였어요</h4>
					</div>
					<div class="col-sm-12">
						<p class="text-black">🌏총 기부 포인트 <c:out value="${total}" />P</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>