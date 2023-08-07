<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/mypage.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>마이페이지</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="mem_info">
			<div class="member">
				<img class="member_img" src="" />
				<div class="name_bel">
					<label class="member_name">김미미 님</label>
					<div class="icon">
						<svg class="icon_bell" width="32" height="37" viewBox="0 0 32 37"
							fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path
								d="M16 36.1552C18.5228 36.1552 20.5693 34.132 20.5693 31.6358H11.4307C11.4307 34.132 13.4771 36.1552 16 36.1552ZM31.385 25.5833C30.005 24.1173 27.4228 21.912 27.4228 14.688C27.4228 9.20121 23.5314 4.80892 18.2843 3.73133V2.2597C18.2843 1.01192 17.2614 0 16 0C14.7386 0 13.7157 1.01192 13.7157 2.2597V3.73133C8.46859 4.80892 4.57718 9.20121 4.57718 14.688C4.57718 21.912 1.99504 24.1173 0.615047 25.5833C0.186477 26.0388 -0.00352203 26.5832 4.93847e-05 27.1164C0.0079065 28.2745 0.927189 29.3761 2.2929 29.3761H29.7071C31.0728 29.3761 31.9928 28.2745 32 27.1164C32.0035 26.5832 31.8135 26.0381 31.385 25.5833Z"
								fill="black" />
                        </svg>
						<div class="icon_bedge">
							<div class="icon_circle">10</div>
						</div>
					</div>
				</div>
				<p class="member_count">GGG와 120일째 동행중</p>
				<button class="member_edit" onclick=infoEdit()>회원정보 수정</button>
				<p class="member_point">
					보유포인트 : 238p<br />
					<br /> 보유도전권 : 무제한(∞)
				</p>
			</div>
			<div class="infos">
				<div class="section1">
					<div class="memberInfo">
						<p class="info">아이디 :</p>
						<p class="info">전화번호 :</p>
						<p class="info">이메일 :</p>
						<p class="info">가입일 :</p>
					</div>
					<div class="buttons">
						<button class="cardBtn" onclick="cardRegist()">간편 카드 등록</button>
						<button class="accountBtn" onclick="accountRegist()">간편계좌
							등록</button>
					</div>
				</div>

				<div class="section2">
					<div class="ani_info">
						<img class="animal_img" src="" />
						<div class="animal_name">
							<p>이름 : 미미</p>
							<button class="changeBtn">
								개명
								</buttton>
						</div>
					</div>
					<div class="ani_lv">
						<div class="animal_level">
							<img class="level_img" src="" /> <img class="arrow"
								src="../../../resources/imgs/arrow.png" /> <img class="level_img" src="" />
							<img class="arrow" src="../../../resources/imgs/arrow.png" /> <img
								class="level_img" src="" />
						</div>
						<div class="animal_exp">
							<div class="lv">
								<p class="exp_level">레벨2</p>
								<p class="exp_point">(430/1500P)</p>
							</div>
							<div class="exp_info">
								<div class="exp_gage"></div>
								<div class="exp_bar"></div>
							</div>
							<div class="lv_info">
								<p class="exp_now">Lv.2</p>
								<p class="exp_end">성체</p>
							</div>
							<button class="dogamBtn"
								onclick="window.open('../dogam/dogam.do')">도감확인</button>
						</div>
					</div>
				</div>
				<div class="section3">
					<div class="dojun">
						<h3>도전중인 챌린지</h3>
						<ul class="dojunList">
							<li><a href="">카페나 음식점에서 다회용기 포장(1/3)</a></li>
							<li><a href="">주말마다 플로깅하기(2/3)</a></li>
							<li><a href="">가까운 거리는 걸어다니기(0/3)</a></li>
						</ul>
						<div class="buttons">
							<button class="dojunBtn"
								onclick="window.open('../challenge/challengeList.html')">챌린지참여하기</button>
							<button type="button" class="down1">
								<img src="../../imgs/down.png">
							</button>
						</div>
					</div>
					<div class="line"></div>
					<div class="gibu">
						<h3>내가 기부한 곳</h3>
						<ul class="gibuList">
							<li><a href="">한국세계자연기금(WWF)</a></li>
							<li><a href="">그린피스</a></li>
							<li><a href="">시셰퍼드</a></li>
						</ul>
						<div class="buttons">
							<button class="gibuBtn" onclick="window.open()">기부하러가기ㄱ</button>
							<button type="button" class="down2">
								<img src="../../../resources/imgs/down.png">
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>