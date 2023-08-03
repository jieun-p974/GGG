<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/checkChallenge.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>챌린지 인증</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="my-challenge">
			<div class="challengeDetail">
				<img src="" alt="챌린지 사진" class="c_img">
				<div class="detail">
					<p class="c_title">챌린지: 주말마다 플로깅하기</p>
					<p class="gigan">기간: 07/01 ~ 07/31</p>
					<p class="level">난이도: ★★★★☆</p>
					<p class="content">
						주말에 가볍게 산책하면서 길에 있는 쓰레기를 치워보는건 어떨까요?<br /> 거리도 깨끗해지고 지구도 조금 더
						건강해질거에요!
					</p>
				</div>
			</div>
			<div class="check_content">
				<p class="comment">앞으로 한번만 더 인증하시면 챌린지가 완료됩니다!</p>
				<div class="status">
					<div class="sticker">
						<p class="s_txt">진행도(2/3)</p>
						<ul class="s_stickers">
							<li class="s_sticker">😀</li>
							<li class="s_sticker">😀</li>
							<li class="s_sticker">⭕</li>
						</ul>
					</div>
					<button>인증하기</button>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>