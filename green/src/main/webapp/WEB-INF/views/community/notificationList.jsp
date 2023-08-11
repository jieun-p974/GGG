<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<jsp:useBean id="now" class="java.util.Date" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/notificationList.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<script type="text/javascript">

</script>
<title>관리자 공지 리스트</title>
</head>
<body>
	<div class="container">
		<%@include file="../layouts/adminHeader.jsp"%>
		<div class="admin_noti">
			<p class="noti_title">공지 리스트 관리</p>

			<div class="add_section">
				<button class="add" id="add" onclick="location.href='notificationWrite.do'">추가하기</button>
			</div>
			<div class="noti_lists">
				<table class="list" id="noti_list">
					<thead>
						<th>순서</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>공지 제목</th>
						<th>수정</th>
						<th>삭제</th>
					</thead>
					<c:forEach items="${listNO}" var="noti" varStatus="noti2">
						<tbody>
							<td>${listNO.size()-noti2.index}</td>
							<td>${noti.id}</td>
							<td>${noti.ann_date}</td>
							<td>${noti.ann_title}</td>
							<td><button class="modify"><a href="notificationModify.do?ann_no=${noti.ann_no}"> 수정 </a></button></td>
							<td><button><a href="deleteNotification.do?ann_no=${noti.ann_no}">삭제 </a></button></td>
						</tbody>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>