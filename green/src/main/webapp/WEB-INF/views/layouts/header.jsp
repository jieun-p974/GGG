<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<head>
<%
	String userId = (String) session.getAttribute("userId");
String userName = (String) session.getAttribute("userName");
String userTel = (String) session.getAttribute("userTel");
String userEmail = (String) session.getAttribute("userEmail");
String userSdate = (String) session.getAttribute("userSdate");

System.out.println("현재 세션 : " + userId);
%>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/styles/header.css">
<script type="text/javascript">
	function loginPop() {
		var width = 950;
		var height = 1100;
		var winl = (screen.availWidth - width) / 2;
		var wint = (screen.availHeight - height) / 2;
		window.open("../member/login.do", "회원정보수정", "width=" + width
				+ ", height=" + height + ", left=" + winl + ", top=" + wint);
	}
</script>
</head>
<body>
	<div class="header">
		<div>
			<a href="../../index.jsp"> <img class="logo"
				src="../../resources/imgs/logo4.png" /></a>
		</div>
		<div class="menu_grop">
			<ul class="menu_list">
				<li><a href="../challenge/challengeList.do">챌린지&nbsp&nbsp</a></li>
				<li><a href="../community/community.do">&nbsp&nbsp커뮤니티&nbsp&nbsp</a></li>
				<li><a href="../member/mypage.do">&nbsp&nbsp마이페이지&nbsp&nbsp</a></li>
				<li><a href="../news/newsList.do">&nbsp&nbsp뉴스</a></li>
				<li><a href="../donation/donation.do">&nbsp&nbsp기부</a></li>
			</ul>
		</div>

		<c:if test="${userId ne null}">
			<div class="login">
				<button class="loginBtn"
					onclick="location.href='../member/save5.do'">로그아웃</button>
			</div>
		</c:if>

		<c:if test="${userId eq null}">
			<div class="login">
				<button class="loginBtn"
					onclick="location.href='../member/login.do'">로그인</button>
			</div>
		</c:if>

	</div>