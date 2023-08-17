<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/dogamCheck.css" rel="stylesheet"  type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<script type="text/javascript">
	function insert() {
		location.href = "dogamWrite.do"
	}
</script>
<title>도감 관리</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/adminHeader.jsp"%>
		<div class="newsCheckList">
			<div class="title">도감 관리 페이지</div>
			<div class="top">
			<button class="add" id="add" onclick="location.href='dogamCheck.do'">뒤로</button>
			
			</div>
			<div class="list">
				<table class="news" id="dogamList">
					<thead>	
						<th class="do-th-1">NO</th>
						<th class="do-th-2">이름</th>
						<th class="do-th-3">레벨1</th>
						<th class="do-th-3">레벨2</th>
						<th class="do-th-3">레벨3</th>
						<th class="do-th-btn">삭제</th>
					</thead>
					<c:forEach items="${list}" var="dogam">
					<tbody>
						<td> ${dogam.do_no} </td>
						<td> ${dogam.do_title} </td>
						<td> <img src="/resources/imgs/dogam/${dogam.img1}"> </td>
						<td> <img src="/resources/imgs/dogam/${dogam.img2}"> </td>
						<td> <img src="/resources/imgs/dogam/${dogam.img3}"> </td>
						<td><button><a href="deleteDogam.do?do_no=${dogam.do_no}">삭제</a></button></td>
					</tbody>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>