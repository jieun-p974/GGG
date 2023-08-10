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
 	function insert() {
		location.href = "challengeInsert.do"
	} 
	$(function() {	
		$("#challList").change(function(){
			var selected = $("#challList").val();
			var html = "";
			<%-- 오늘 날짜랑 비교 --%>
			<fmt:formatDate var="today" value="${now}" pattern="yyyy-MM-dd" />
			
			if (selected == 'ing') {
				console.log("진행중인 챌린지");
				<c:forEach items="${list}" var="chall">
				<c:if test="${chall.chal_end_date > today}">
					html += '<tbody>';
					html += '<td>${chall.chal_no}</td>';
					html += '<td>${chall.chal_name}</td>';
					html += '<td>${chall.chal_start_date}</td>';
					html += '<td>${chall.chal_end_date}</td>';
					html += '<td><button class="modify"><a href="challengeModify.do?chal_no=${chall.chal_no}">수정</a></button></td>';
					html += '<td><button class="modify"><a href="adminChallengeCertList.do?chal_name=${chall.chal_name}"> 인증관리 </a></button></td>';
					html += '</tbody>';
				</c:if>
				</c:forEach>
				$("tbody").remove();
				$("#chall_list").append(html);
			} else if (selected == 'end') {
				console.log("종료된 챌린지");
				<c:forEach items="${list}" var="chall">
				<c:if test="${chall.chal_end_date < today}">
					html += '<tbody>';
					html += '<td>${chall.chal_no}</td>';
					html += '<td>${chall.chal_name}</td>';
					html += '<td>${chall.chal_start_date}</td>';
					html += '<td>${chall.chal_end_date}</td>';
					html += '<td><button class="modify"><a href="challengeModify.do?chal_no=${chall.chal_no}">수정</a></button></td>';
					html += '<td><button class="modify"><a href="adminChallengeCertList.do?chal_name=${chall.chal_name}"> 인증관리 </a></button></td>';
					html += '</tbody>';
				</c:if>
				</c:forEach>
				$("tbody").remove();
				$("#chall_list").append(html);
			} else {
				console.log("챌린지 전체");
				<c:forEach items="${list}" var="chall">
				
					html += '<tbody>';
					html += '<td>${chall.chal_no}</td>';
					html += '<td>${chall.chal_name}</td>';
					html += '<td>${chall.chal_start_date}</td>';
					html += '<td>${chall.chal_end_date}</td>';
					html += '<td><button class="modify"><a href="challengeModify.do?chal_no=${chall.chal_no}">수정</a></button></td>';
					html += '<td><button class="modify"><a href="adminChallengeCertList.do?chal_name=${chall.chal_name}"> 인증관리 </a></button></td>';
					html += '</tbody>';
				
				</c:forEach>
				$("tbody").remove();
				$("#chall_list").append(html);
			}
		});
	});
</script>
<title>챌린지 관리</title>
</head>
<body>
	<div class="container">
		<%@include file="../layouts/adminHeader.jsp"%>
		<div class="admin_chall">
			<p class="admin_title">챌린지 관리 리스트</p>

			<div class="calendar">
				<select class="month" name="challList" id="challList">
					<option value="all">전체</option>
					<option value="ing">진행중인 챌린지</option>
					<option value="end">종료된 챌린지</option>
				</select>
				<button class="add" id="add" onclick="insert()">추가하기</button>
			</div>
			<div class="chall_lists">
				<table class="list" id="chall_list">
					<thead>
						<th>순서</th>
						<th>챌린지 명</th>
						<th>챌린지 시작일</th>
						<th>챌린지 종료일</th>
						<th>수정</th>
						<th>인증관리</th>
					</thead>
					<c:forEach items="${list}" var="chall">
						<tbody>
							<td>${chall.chal_no}</td>
							<td>${chall.chal_name}</td>
							<td>${chall.chal_start_date}</td>
							<td>${chall.chal_end_date}</td>
							<td><button class="modify">
									<a href="challengeModify.do?chal_no=${chall.chal_no}"> 수정 </a>
								</button>
							</td>
							<td><button class="modify">
									<a href="adminChallengeCertList.do?chal_name=${chall.chal_name}"> 인증관리 </a>
								</button>
							</td>
						</tbody>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>