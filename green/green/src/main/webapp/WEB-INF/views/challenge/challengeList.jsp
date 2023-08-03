<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link rel="stylesheet" href="../../../resources/styles/challengeList.css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>뉴스 목록</title>
</head>
<body>
	<div class="container ">
	<%@include file="../layouts/header.jsp"%>
		<div class="challenge">
			<p class="challenge_txt">현재 진행중인 챌린지 목록입니다.</p>
		</div>

		<div class="chall">
			<div class="c_list">
				<div class="c_list_img"></div>
				<p class="c_list_txt">주말마다 플로깅하기</p>
				<p class="c_list_date">기간: 07/01 ~ 07/31</p>
				<p class="c_list_lv">난이도: ★★★★☆</p>
			</div>

			<div class="c_list">
				<div class="c_list_img"></div>
				<p class="c_list_txt">카페나 음식점에서 다회용기 포장</p>
				<p class="c_list_date">기간: 07/10 ~ 07/31</p>
				<p class="c_list_lv">난이도: ★★★☆☆</p>
			</div>

			<div class="c_list">
				<div class="c_list_img"></div>
				<p class="c_list_txt">마트갈때 장바구니 들고가기</p>
				<p class="c_list_date">기간: 07/01 ~ 07/31</p>
				<p class="c_list_lv">난이도: ★☆☆☆☆</p>
			</div>

			<div class="c_list">
				<div class="c_list_img"></div>
				<p class="c_list_txt">개인 손수건 사용하기</p>
				<p class="c_list_date">기간: 07/01 ~ 07/31</p>
				<p class="c_list_lv">난이도: ★★★★★</p>
			</div>

			<div class="c_list">
				<div class="c_list_img"></div>
				<p class="c_list_txt">가까운 거리는 걸어다니기</p>
				<p class="c_list_date">기간: 07/10 ~ 07/31</p>
				<p class="c_list_lv">난이도: ★☆☆☆☆</p>
			</div>

			<div class="c_list">
				<div class="c_list_img"></div>
				<p class="c_list_txt">대중교통 또는 자전거 이용하기</p>
				<p class="c_list_date">기간: 07/01 ~ 07/31</p>
				<p class="c_list_lv">난이도: ★☆☆☆☆</p>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>