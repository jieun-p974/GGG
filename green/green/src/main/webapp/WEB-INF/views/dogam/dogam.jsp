<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/newsWrite.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>도감</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="section">
			<div class="monthly_animal">
				<div class="animal_info">
					<p class="info_title1">8월의 동물</p>
					<p class="info_title2">멸종위기 취약등급 OOO</p>
					<img class="info_img" src="../../../resources/imgs/bear_shadow.jpg" />
				</div>
				<div class="animal_hint">
					<span class="hint_title1">힌트!<br />
					<br /></span> <span class="hint_title2">저는 먹이사슬 최상위에 존재해요.<br /> 생의
						대부분을 바다와 빙하 주변에서 보낸답니다.
					</span>
				</div>
			</div>
			<button class="payBtn" onclick="location.href='';">도전권결제</button>
			<button class="challBtn"
				onclick="location.href='../challenge/challengeList.html';">챌린지참여</button>
		</div>

		<div class="animal_list">
			<div class="animal_finish">
				<p class="txt1">완료
					동물&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					/ 12마리</p>
				<p class="txt2">5마리</p>
			</div>

			<div class="animal1">
				<img class="img" src="" />
				<p class="text">멸종위기 위기등급 나무늘보</p>
			</div>

			<div class="animal2">
				<img class="img" src="" />
				<p class="text">멸종위기 취약등급 OO</p>
			</div>

			<div class="animal3">
				<img class="img" src="" />
				<p class="text">멸종위기 취약등급 OOO</p>
			</div>

			<div class="animal4">
				<img class="img" src="" />
				<p class="text">멸종위기 위급등급 바다거북</p>
			</div>

			<div class="animal5">
				<img class="img" src="" />
				<p class="text">멸종위기 위기등급 OOO</p>
			</div>

			<div class="animal6">
				<img class="img" src="" />
				<p class="text">멸종위기 위기등급 OOOO</p>
			</div>

			<div class="animal7">
				<img class="img" src="" />
				<p class="text">멸종위기 준위협등급 OOOO</p>
			</div>

			<div class="animal8">
				<img class="img" src="" />
				<p class="text">멸종위기 관심필요 하프물범</p>
			</div>

			<div class="animal9">
				<img class="img" src="" />
				<p class="text">멸종위기 취약등급 OO</p>
			</div>

			<div class="animal10">
				<img class="img" src="" />
				<p class="text">멸종위기 취약등급 치타</p>
			</div>

			<div class="animal11">
				<img class="img" src="" />
				<p class="text">멸종위기 위기등급 OO</p>
			</div>

			<div class="animal12">
				<img class="img" src="" />
				<p class="text">멸종위기 위급등급 OOO</p>
			</div>


		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>