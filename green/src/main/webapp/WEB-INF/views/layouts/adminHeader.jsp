<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<head>
<script src="/resources/libs/OwlCarousel-2/dist/owl.carousel.min.js"></script>
<script src="/resources/js/jquery.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/custom.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/styles/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/styles/iconfont/tabler-icons.css">
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
<script src="${pageContext.request.contextPath}/resources/libs/OwlCarousel-2/dist/owl.carousel.min.js"></script>
<%
	String userId = (String) session.getAttribute("userId");
String userName = (String) session.getAttribute("userName");
String userTel = (String) session.getAttribute("userTel");
String userEmail = (String) session.getAttribute("userEmail");
String userBday = (String) session.getAttribute("userBday");
String userSdate = (String) session.getAttribute("userSdate");
String userCard = (String) session.getAttribute("userCard");
String userAccount = (String) session.getAttribute("userAccount");
String userImg = (String) session.getAttribute("userImg");
String userImgAddr = (String) session.getAttribute("userImgAddr");
int userType = (Integer) session.getAttribute("userType");
System.out.println("현재 세션 : " + userId);
%>
<meta charset=" UTF-8">
</head>

<body>
	<header class="main-header position-fixed w-100">

		<div class="container">
			<div
				class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block  justify-content-xxl-end justify-content-xl-end justify-content-lg-end justify-content-md-end justify-content-sm-end justify-content-sm-center ">
				<h6 class="text-black mb-0">admin관리자2023. 8. 11 오후 8:00:32접속</h6>
			</div>
			<nav class="navbar navbar-expand-xl py-0">
				<div class="logo">
					<a class="navbar-brand py-0 me-0" href="../../index.jsp"> <img
						src="../../resources/imgs/logo.png" alt="로고이미지"
						style="width: 15rem">
					</a>
				</div>
				<a
					class="d-inline-block d-lg-block d-xl-none d-xxl-none  nav-toggler text-decoration-none"
					data-bs-toggle="offcanvas" href="#offcanvasExample"
					aria-controls="offcanvasExample"> <i
					class="ti ti-menu-2 text-warning"></i>
				</a>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto">
						<li class="nav-item"><a class="nav-link text-capitalize"
							aria-current="page" href="../community/community.do">커뮤니티관리</a></li>
						<li class="nav-item"><a class="nav-link text-capitalize"
							href="../challenge/adminChallenge.do">챌린지관리</a></li>
						<li class="nav-item"><a class="nav-link text-capitalize"
							href="../dogam/dogamCheck.do">도감관리</a></li>
						<li class="nav-item"><a class="nav-link text-capitalize"
							href="../donation/adDonationList.do">기부관리 </a></li>
						<li class="nav-item"><a class="nav-link text-capitalize"
							href="../news/newsCheck.do">뉴스관리</a></li>
						<li><a href="../community/notificationList.do">&nbsp&nbsp공지관리&nbsp&nbsp</a></li>
						<li><a href="../member/adminMain.do">&nbsp&nbsp관리자페이지</a></li>
					</ul>
					<c:if test="${userId ne null}">
						<div class="d-flex align-items-center">
							<a class="btn btn-warning btn-hover-secondery text-capitalize "
								href="../member/logout.do">로그아웃</a>
						</div>
					</c:if>
					<c:if test="${userId eq null}">
						<div class="d-flex align-items-center">
							<a class="btn btn-warning btn-hover-secondery text-capitalize "
								href="../member/login.do">로그인</a>
						</div>
					</c:if>
				</div>
			</nav>
		</div>

		<div class="offcanvas offcanvas-start" tabindex="-1"
			id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
			<div class="offcanvas-header">
				<div class="logo">
					<a class="navbar-brand py-0 me-0" href="../../index.jsp"> <img
						src="../../resources/imgs/logo.png" alt="로고이미지"
						style="width: 15rem">
					</a>
				</div>
				<button type="button" class="btn-close text-reset  ms-auto"
					data-bs-dismiss="offcanvas" aria-label="Close">
					<i class="ti ti-x text-warning"></i>
				</button>
			</div>
			<div class="offcanvas-body pt-0">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link text-capitalize"
						aria-current="page" href="../community/community.do">커뮤니티 관리</a></li>
					<li class="nav-item"><a class="nav-link text-capitalize"
						href="../challenge/adminChallenge.do">챌린지관리</a></li>
					<li class="nav-item"><a class="nav-link text-capitalize"
						href="../dogam/dogamCheck.do">도감관리 </a></li>
					<li class="nav-item"><a class="nav-link text-capitalize"
						href="../donation/adDonationList.do">기부관리 </a></li>
					<li class="nav-item"><a class="nav-link text-capitalize"
						href="../news/newsCheck.do">뉴스관리 </a></li>
				</ul>
				<c:if test="${userId ne null}">
					<div class="d-flex align-items-center">
						<a class="btn btn-warning btn-hover-secondery text-capitalize "
							href="../member/logout.do">로그아웃</a>
					</div>
				</c:if>
				<c:if test="${userId eq null}">
					<div class="d-flex align-items-center">
						<a class="btn btn-warning btn-hover-secondery text-capitalize "
							href="../member/login.do">로그인</a>
					</div>
				</c:if>
			</div>
		</div>
	</header>