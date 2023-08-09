<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:if test="${userId == null }">
   <script>
      alert("로그인 하신 후 이용 가능합니다.");
      location.href="../../index.jsp";
   </script>
</c:if>
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
<jsp:useBean id="now" class="java.util.Date" />
</head>
<body>


	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="mem_info">
			<div class="member">
				<img class="member_img" src="/resources/imgs/member/${userImgAddr}"/>
				<div class="name_bel">
					<label class="member_name"> ${userName} 님 </label>
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

				<fmt:parseNumber var="today" value="${now.time / (1000*60*60*24)}" integerOnly="true" scope="request"/>
				<fmt:parseDate var="sdate" value="${userSdate}" pattern="yyyy-MM-dd" />
				<fmt:parseNumber var="sdate2" value="${sdate.time / (1000*60*60*24)}" integerOnly="true" scope="request"/>
			
			
            	<p class="member_count"> ${userId}&nbsp회원님&nbsp환영합니다! <br/><br/>
          		  🌏&nbspGGG와 함께한지 ${today-sdate2}일 째&nbsp🌏</p>
				<button class="member_edit" onclick="location.href='infoEdit.do'">회원정보 수정</button>
				<p class="member_point">
					보유포인트 : ${userPoint} p <br/><br/> 
					보유도전권 : 
				</p>
			</div>
			<div class="infos">
				<div class="section1">
					<div class="memberInfo">
						<p class="info">아이디&nbsp&nbsp:&nbsp&nbsp${userId} </p>
						<p class="info">전화번호&nbsp&nbsp:&nbsp&nbsp${userTel} </p>
						<p class="info">이메일주소&nbsp&nbsp:&nbsp&nbsp${userEmail} </p>
						<p class="info">간편결제 카드등록 여부&nbsp&nbsp:&nbsp&nbsp${userCard}</p>
						<p class="info">간편결제 등록 여부&nbsp&nbsp:&nbsp&nbsp${userAccount}</p>
						
					</div>
					<div class="buttons">
						<button class="cardBtn" onclick="location.href='../member/cardRegist.do?userId=${userId}'">간편카드 등록</button>
						<button class="accountBtn" onclick="location.href='../member/accountRegist.do?userId=${userId}'">간편계좌 등록</button>
					</div>
				</div>

				<div class="section2">
					<div class="ani_info">
						<img class="animal_img" src="" />
						<div class="animal_name">
							<p></p>
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
							<button class="dogamBtn" onclick="location.href='../dogam/dogam.do'">도감전체보기</button>
							<button class="dogamBtn" onclick="location.href='../dogam/myDogam.do'">내도감보기</button>
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
							<button class="myChallBtn"
								onclick="location.href='../challenge/myChallenge.do?userId=${userId}'">도전중인 챌린지
							</button>
							<button class="dojunBtn"
								onclick="location.href='../challenge/challengeList.do'">챌린지참여하기
							</button>
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
							<button class="gibuBtn"><a href="../donation/donation.do">기부하러가기</a></button>
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