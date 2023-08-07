<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link href="../../../resources/styles/adminChall.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<script type="text/javascript">

</script>
<title>관리자 기부처 리스트</title>
</head>
<body>
	<div class="container">
		<%@include file="../layouts/adminHeader.jsp"%>
		<div class="admin_dona">
			<p class="admin_title">기부처 리스트 관리</p>

			<div class="calendar">
				<select class="month" name="donaList" id="donaList">
					<option value="all">전체</option>
					<option value="ing">진행중인 기부</option>
					<option value="end">종료된 기부</option>
				</select>
				<button class="add" id="add" onclick="location.href='donationInsert.do'">추가하기</button>
			</div>
			<div class="dona_lists">
				<table class="list" id="dona_list">
					<thead>
						<th>순서</th>
						<th>기부처 명</th>
						<th>기부 시작일</th>
						<th>기부 종료일</th>
						<th>수정</th>
						<th>삭제</th>
					</thead>
					<c:forEach items="${list}" var="dona">
						<tbody>
							<td>${dona.don_no}</td>
							<td>${dona.don_name}</td>
							<td>${dona.don_start_date}</td>
							<td>${dona.don_end_date}</td>
							<td><button><a href="donaModify.do?don_no=${dona.don_no}"> 수정 </a></button></td>
							<td><button><a href="donaDelete.do?don_no=${dona.don_no}"> 삭제 </a></button></td>
						</tbody>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>