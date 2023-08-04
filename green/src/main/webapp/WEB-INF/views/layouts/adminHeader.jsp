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
String userBday = (String) session.getAttribute("userBday");

System.out.println("현재 세션 : " + userId);
%>

<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/styles/header.css">
<script type="text/javascript">

</script>
</head>
<body>
	<div class="header">
		<div>
			<a href="adminMain.do"> <img class="logo" src="../../resources/imgs/logo.png" /></a>
		</div>
		
		<div class="menu_grop">
			<ul class="menu_list">
				<li><a href="../challenge/adminChallenge.do">챌린지관리&nbsp&nbsp</a></li>
				<li><a href="../community/community.do">&nbsp&nbsp커뮤니티 관리&nbsp&nbsp</a></li>
				<li><a href="../news/newsCheck.do">&nbsp&nbsp뉴스관리</a></li>
				<li><a href="../donation/donation.do">&nbsp&nbsp기부관리</a></li>
			</ul>
		</div>
		
			<c:if test="${userId ne null}">
			<div class="login">
				<button class="loginBtn"
					onclick="location.href='../member/logout.do'">로그아웃</button>
			</div>
		</c:if>

		<c:if test="${userId eq null}">
			<div class="login">
				<button class="loginBtn"
					onclick="location.href='../member/adminLogin.do'">로그인</button>
			</div>
		</c:if>
		
		
	</div>
	</body>
	