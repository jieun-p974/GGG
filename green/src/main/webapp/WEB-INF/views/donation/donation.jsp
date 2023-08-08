<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/donation.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<script type="text/javascript">
	console.log("저기요...");
</script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<%@include file="../layouts/header.jsp"%>
		<div class="main">
			<p class="title">열심히 모은 포인트를 지구를 위해 사용해 보세요</p>
			<div class="gibu_list">
				<c:forEach items="${list}" var="dona">
					<div class="gibu">
						<div class="rectangel">
							<a href="donationDetail.do?don_no=${dona.don_no}"> 
							<img class="gibu_img" src="/resources/imgs/donaImg/${dona.d_img1_addr}" /></a>
						</div>
						<div class="dona_text">
							<p class="dona">${dona.don_name}</p>
							<!-- 프로그래스바해서 진행도 따라서 표시하기 -->
							<div class="bar">
								<progress id=progress max=100 min=0
									value="${dona.don_point_sum/dona.don_goal*100}"></progress>

							</div>
							<div class="points">
								<fmt:formatNumber type="percent"
									value="${dona.don_point_sum/dona.don_goal}" var="percent"
									pattern="0%" />
								<p class="percent">${percent}</p>
								<p class="point">${dona.don_point_sum}P</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="dona_now">
			<div class="btn_txt">
				<button class="now" style="border: none;">참여현황</button>
				<p class="nowTxt">여러분의 참여로 이만큼 모였어요</p>
			</div>
			<div class="dona_now_txt">
				<p class="txt">총 기부 포인트 899,922P</p>
				<p class="txt">기부 참여 인원 11,521명</p>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>