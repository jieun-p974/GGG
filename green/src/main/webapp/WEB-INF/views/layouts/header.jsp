<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<head>
<!-- <script src="/resources/libs/OwlCarousel-2/dist/owl.carousel.min.js"></script> -->
<!-- <script src="/resources/js/jquery.min.js"></script> -->
<!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"> -->
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/custom.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
<script src="${pageContext.request.contextPath}/resources/libs/OwlCarousel-2/dist/owl.carousel.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/styles/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/styles/dropDown.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/styles/iconfont/tabler-icons.css">
<%
	String userId = (String) session.getAttribute("userId");
	String userName = (String) session.getAttribute("userName");
	String userTel = (String) session.getAttribute("userTel");
	String userEmail = (String) session.getAttribute("userEmail");
	String userSdate = (String) session.getAttribute("userSdate");
	String userCard = (String) session.getAttribute("userCard");
	String userAccount = (String) session.getAttribute("userAccount");
	String userImg = (String) session.getAttribute("userImg");
	String userImgAddr = (String) session.getAttribute("userImgAddr");
	int userType = (Integer) session.getAttribute("userType");
	System.out.println("현재 세션 : " + userId);
%>
<meta charset=" UTF-8">
<style type="text/css">
.profile_img{
	width: 50px;
	height: 50px;
	border-radius: 50%;
}
.profile_img2{
	width: 70px;
	height: 70px;
	border-radius: 50%;
}
.pBtn{
	border: none;
	background: none;
}
.pBtn:hover{
	color:black;
	text-decoration: none;
}
.mInfo{
	display: grid;
	justify-items: center;
}
.ddd:hover{
	cursor: pointer;
}

</style>
</head>

<body>
	<header class="main-header position-fixed w-100">
		<div class="container">
			<nav class="navbar navbar-expand-xl py-0">
				<div class="logo">
					<a class="navbar-brand py-0 me-0" href="../../index.jsp">
					<img src="../../resources/imgs/logo.png" alt="로고이미지" style="width: 15rem">
					</a>
				</div>
				<a class="d-inline-block d-lg-block d-xl-none d-xxl-none  nav-toggler text-decoration-none" data-bs-toggle="offcanvas" href="#offcanvasExample" aria-controls="offcanvasExample">
				<i class="ti ti-menu-2 text-warning"></i>
				</a>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto">
						<li class="nav-item">
							<a class="nav-link text-capitalize" aria-current="page" href="../community/community.do?userId=${userId}">그린커뮤니티</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-capitalize" href="../challenge/challengeList.do">챌린지</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-capitalize" href="../donation/donation.do">기부 </a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-capitalize" href="../news/newsList.do">뉴스 </a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-capitalize" href="../member/map.do">제로웨이스트샵 </a>
						</li>
						<%-- <c:if test="${userType == 1}">
							<li class="nav-item">
							<a class="nav-link text-capitalize" href="../member/mypage.do?id=${userId }">마이페이지</a>
						</li>
						</c:if> --%>
						<c:if test="${userType == 2}">
							<%-- <li class="nav-item">
								<a class="nav-link text-capitalize" href="../member/mypage.do?id=${userId }">마이페이지</a>
							</li> --%>
							<li class="nav-item">
								<a class="nav-link text-capitalize" href="../member/adminMain.do">관리자페이지</a>
							</li>
						</c:if>
					</ul>
					<c:if test="${userId ne null}">
						<div class="d-flex align-items-center ddd">
							<!-- 여기에 프로필 사진이랑 이름 띄우고 클릭하면 모달로 마이페이지 로그아웃 뜨게 -->
							<c:if test="${userType == 1}">
								<%-- <div class="btn-group">
									<a class="pBtn d-flex align-items-center me-3 dropdown-toggle" data-toggle="dropdown" aria-expanded="false" style="box-shadow: none;">
										<img class="profile_img me-1" alt="프로필 사진" src="/resources/imgs/member/${userImgAddr}">
										<p class="m-0" style="font-size:17px;"><%= userName %></p>
									</a>
									 <div class="dropdown-menu" style="font-size:17px">
						                <div class="row">
						                	<div class="mInfo">
						                		<img class="profile_img2 me-1" alt="프로필 사진" src="/resources/imgs/member/${userImgAddr}">
												<p class="m-0" style="font-size:17px;"><%= userName %></p>
						                	</div>
											<hr class="dropdown-divider ms-4" style="width:260px;">
						                	<div class="btns d-flex justify-content-between">
												<a class="btn btnss" href="../member/mypage.do?id=${userId }">마이페이지</a>
												<a class="btn btnss" href="../member/logout.do">로그아웃</a>
						                	</div>
						                </div>
						              </div>
								</div> --%>
								<ul class="menu">
									<li><a class="pBtn d-flex align-items-center me-3 dropdown-toggle" data-toggle="dropdown" aria-expanded="false" style="box-shadow: none;">
										<img class="profile_img me-1" alt="프로필 사진" src="/resources/imgs/member/${userImgAddr}">
										<p class="m-0" style="font-size:17px;"><%= userName %></p>
									</a>
									 <ul class="depth_1 p-2 text-center">
				                		<li><img class="profile_img2 me-1 mt-3" alt="프로필 사진" src="/resources/imgs/member/${userImgAddr}"></li>
										<li><p class="m-0 mt-2" style="font-size:17px;"><%= userName %></p></li>
						                <li>
						                	<hr>
						                	<div class="btns d-flex justify-content-between mb-3">
												<a class="btn btnss text-black" href="../member/mypage.do?id=${userId }">마이페이지</a>
												<a class="btn btnss text-black" href="../member/logout.do">로그아웃</a>
						                	</div>
						                </li>
						              </ul>
						            </li>
								</ul>
							</c:if>
						</div>
						<c:if test="${userType == 2}">
							<div class="d-flex align-items-center">
								<a class="btn btn-warning btn-hover-secondery text-capitalize" href="../member/logout.do">로그아웃</a>
							</div>
						</c:if>
					</c:if>
					<c:if test="${userId eq null}">
						<div class="d-flex align-items-center">
							<a class="btn btn-warning btn-hover-secondery text-capitalize " href="../member/login.do">로그인</a>
						</div>
					</c:if>
				</div>
			</nav>
		</div>

		<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
			<div class="offcanvas-header">
				<div class="logo">
					<a class="navbar-brand py-0 me-0" href="../../index.jsp">
						<img src="../../resources/imgs/logo.png" alt="로고이미지" style="width: 15rem">
					</a>
				</div>
				<button type="button" class="btn-close text-reset  ms-auto" data-bs-dismiss="offcanvas" aria-label="Close">
					<i class="ti ti-x text-warning"></i>
				</button>
			</div>
			<div class="offcanvas-body pt-0">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link text-capitalize" aria-current="page" href="../community/community.do?userId=${userId}">그린커뮤니티</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-capitalize" href="../challenge/challengeList.do">챌린지</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-capitalize" href="../donation/donation.do">기부 </a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-capitalize" href="../news/newsList.do">뉴스 </a>
					</li>
					<c:if test="${userType == 1}">
						<li class="nav-item">
							<a class="nav-link text-capitalize" href="../member/mypage.do">마이페이지</a>
						</li>
					</c:if>
					<c:if test="${userType == 2}">
						<li class="nav-item">
							<a class="nav-link text-capitalize" href="../member/mypage.do">마이페이지</a>
							<a class="nav-link text-capitalize" href="../member/adminMain.do">관리자페이지</a>
						</li>
					</c:if>
				</ul>
				<c:if test="${userId ne null}">
					<div class="d-flex align-items-center">
						<a class="btn btn-warning btn-hover-secondery text-capitalize " href="../member/logout.do">로그아웃</a>
					</div>
				</c:if>
				<c:if test="${userId eq null}">
					<div class="d-flex align-items-center">
						<a class="btn btn-warning btn-hover-secondery text-capitalize " href="../member/login.do">로그인</a>
					</div>
				</c:if>
			</div>
		</div>
	</header>
