<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/challengeDetail.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>뉴스 상세</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="c_details">
			<div class="challenge_title">
				<p>
					<span class="span_t">‘주말마다 플로깅하기’</span>를 선택하셨군요!
				</p>
			</div>

			<div class="chall_detail">
				<img class="detail_img" src="" />
				<div class="detail_content">
					<p class="d_title">챌린지: 주말마다 플로깅하기</p>
					<p class="d_gigan">기 간: 07/01 ~ 07/31</p>
					<p class="d_level">난이도 : ★★★★☆</p>
					<p class="d_content">
						주말에 가볍게 산책하면서 길에 있는 쓰레기를 치워보는건 어떨까요?<br /> 거리도 깨끗해지고 지구도 조금 더
						건강해질거에요!
					</p>
				</div>
			</div>

			<div class="checking">
				<div class="checking_content">
					<p class="span_t check">&lt;인증방법&gt;</p>
					<ol>
						<li>산책 나가기 전, 쓰레기를 담을 봉투와 쓰레기를 주울때 사용할 장갑 또는 집게를 준비해주세요.</li>
						<li>산책을 나가서 길에 보이는 쓰레기를 열심히 주워주세요.</li>
						<li>산책이 끝난후 쓰레기를 담은 봉투를 촬영해 마이페이지에서 인증해주시면 됩니다.</li>
					</ol>
				</div>
				<div class="check_btn">
					<button>신청하기</button>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>