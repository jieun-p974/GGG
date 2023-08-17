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
<link href="../../../resources/styles/donationGak.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<!-- 오늘 날짜 -->
<jsp:useBean id="now" class="java.util.Date" />
<title>Insert title here</title>
</head>

<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="alls">
			<div class="main">
				<div class="title">
					<p>용기 있는 행동에 힘을 보태고 싶습니다.</p>
					<button class="donaBtn">기부하기</button>
				</div>
				<div class="barUpper">
					<!-- 포인트 퍼센트 -->
					<fmt:formatNumber type="percent"
						value="${dona.don_point_sum/dona.don_goal}" var="percent"
						pattern="0%" />
					<p class="nowPer">${percent}</p>
					<!-- 디데이 계산 -->
					<fmt:parseNumber value="${now.time / (1000*60*60*24)}"
						integerOnly="true" var="nowfmtTime" scope="request" />
					<fmt:parseNumber value="${dona.don_end_day.time / (1000*60*60*24)}"
						integerOnly="true" var="dbDtParse" scope="request" />

					<div class="d_day">D-${dbDtParse - nowfmtTime + 1}</div>
				</div>
				<!-- 프로그레스바 -->
				<div class="bars">
					<!-- <div class="totalbar"></div>
					<div class="nowbar"> -->
					<progress id=progress max=100 min=0 value="${dona.don_point_sum/dona.don_goal*100}"></progress>
					<!-- </div> -->
				</div>
				
				<div class="barDown">
					<div class="donadate">${dona.don_start_day}~
						${dona.don_end_day}까지</div>
					<div class="nowpoint">${dona.don_point_sum } / ${dona.don_goal }
						Point</div>
				</div>

				<div class="buttons">
					<button class="introduce">모금함 소개</button>
					<button class="news">소식</button>
				</div>
			</div>
			<div class="content">
				<div class="logo_intro">
				  <img class="logos" src="../../../resources/imgs/logo4.png" />
					<h1 class="ggg" value="${dona.don_name }">${dona.don_summary}
					</h1>
				</div>
				<img class="pic" src="" />
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>