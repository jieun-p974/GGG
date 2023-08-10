<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<!-- 오늘 날짜 -->
<jsp:useBean id="now" class="java.util.Date" />

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/adminChall.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<script type="text/javascript">

</script>
<title>챌린지 관리</title>
</head>
<body>
	<div class="container">
		<%@include file="../layouts/adminHeader.jsp"%>
		<div class="admin_chall">
			<p class="admin_title">${chal_name} 챌린지 관리 리스트</p>
			<form action="/challenge/yesChecked.do" method="post">
			<div class="calendar">
				<div></div>
				<input id="add" type="submit" value="인증하기">
			</div>
			<div class="chall_lists">
			
				<table class="list" id="chall_list">
					<thead>
						<th>순서</th>
						<th>회원별챌린지코드</th>
						<th>인증날짜</th>
						<th class="check_img">인증사진</th>
						<th>인증확인여부</th>
						<th>인증</th>						
					</thead>
					
					<c:forEach items="${cerList}" var="cert">
						<tbody>
							<td>${cert.cer_no}</td>
							<td>${cert.m_c_no}</td>
							<td>${cert.cer_date}</td>
							<td><img class="detail_img" src="/resources/imgs/challImg/${cert.cer_img1_addr}" /></td>
							<td>${cert.pass_YN}</td>
							<td><input type="checkbox" name="valueArr" value="${cert.cer_no}"></td>
						</tbody>
					</c:forEach>
				</table>
			</div>
			</form>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>