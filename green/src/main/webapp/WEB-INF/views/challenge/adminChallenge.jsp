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
<link rel="stylesheet" href="/resources/styles/table.css">
<link rel="stylesheet" href="/resources/styles/font.css">
<script type="text/javascript">
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
					html += '<input type="hidden" value="${chall.chal_no}"></input>';
					html += '<td>${chall.chal_name}</td>';
					html += '<td>${chall.chal_start_date}</td>';
					html += '<td>${chall.chal_end_date}</td>';
					html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="challengeModify.do?chal_no=${chall.chal_no}">수정</a></td>';
					html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="adminChallengeCertList.do?chal_name=${chall.chal_name}&chal_no=${chall.chal_no}">인증관리</a></td>';
					html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="deleteChall.do?chal_no=${chall.chal_no}">삭제</a></td>';
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
					html += '<input type="hidden" value="${chall.chal_no}"></input>';
					html += '<td>${chall.chal_name}</td>';
					html += '<td>${chall.chal_start_date}</td>';
					html += '<td>${chall.chal_end_date}</td>';
					html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="challengeModify.do?chal_no=${chall.chal_no}">수정</a></td>';
					html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="adminChallengeCertList.do?chal_name=${chall.chal_name}&chal_no=${chall.chal_no}">인증관리</a></td>';
					html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="deleteChall.do?chal_no=${chall.chal_no}">삭제</a></td>';
					html += '</tbody>';
				</c:if>
				</c:forEach>
				$("tbody").remove();
				$("#chall_list").append(html);
			} else {
				console.log("챌린지 전체");
				<c:forEach items="${list}" var="chall">
				
					html += '<tbody>';
					html += '<input type="hidden" value="${chall.chal_no}"></input>';
					html += '<td>${chall.chal_name}</td>';
					html += '<td>${chall.chal_start_date}</td>';
					html += '<td>${chall.chal_end_date}</td>';
					html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="challengeModify.do?chal_no=${chall.chal_no}">수정</a></td>';
					html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="adminChallengeCertList.do?chal_name=${chall.chal_name}&chal_no=${chall.chal_no}">인증관리</a></td>';
					html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="deleteChall.do?chal_no=${chall.chal_no}">삭제</a></td>';
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
	<%@include file="../layouts/adminHeader.jsp"%>
	<section class="pricing position-relative overflow-hidden">
		<div class="container position-relative">
			<div class="row">
				<div
					class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
					<h2 class="text-black mb-0 mt-5 mb-3" style="font-size:2rem;text-align:left">📢챌린지 관리 리스트</h2>
				</div>
			</div>
			<div
				class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
				<div class="calendar d-flex justify-content-between mb-5">
					<select class="month" name="challList" id="challList">
						<option value="all">전체</option>
						<option value="ing">진행중인 챌린지</option>
						<option value="end">종료된 챌린지</option>
					</select>
					<a class="btn btn-white-back btn-hover-third" href="challengeInsert.do">추가하기</a>
				</div>
				<div class="card border-0 shadow">
					<div class="card-body">
						<div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
							<table class="type09" id="chall_list">
								<thead>
									<th>챌린지 명</th>
									<th>챌린지 시작일</th>
									<th>챌린지 종료일</th>
									<th>수정</th>
									<th>인증관리</th>
									<th>삭제</th>
								</thead>
								<c:forEach items="${list}" var="chall">
									<tbody>
										<input type="hidden" id="chal_no" name="chal_no" value="${chall.chal_no}"></input>
										<td>${chall.chal_name}</td>
										<td>${chall.chal_start_date}</td>
										<td>${chall.chal_end_date}</td>
										<td><a class="btn btn-white-back2 btn-hover-secondery" href="challengeModify.do?chal_no=${chall.chal_no}">수정</a></td>
										<td><a class="btn btn-white-back2 btn-hover-secondery" href="adminChallengeCertList.do?chal_name=${chall.chal_name}&chal_no=${chall.chal_no}">인증관리</a></td>
										<td><a class="btn btn-white-back2 btn-hover-secondery" href="deleteChall.do?chal_no=${chall.chal_no}">삭제</a></td>
									</tbody>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>