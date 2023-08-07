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
<title>뉴스 관리</title>
</head>
<body>
	<div class="container">
		<%@include file="../layouts/adminHeader.jsp"%>
		<div class="newsCheckList">
			<div class="title">뉴스 관리 페이지</div>
			<div class="top">
			
			<button class="add" id="add" onclick="insert()">추가하기</button>
			</div>
			<div class="list">
				<table class="news" id="dogamList">
					<thead>	
						<th>관리번호</th>
						<th>이름</th>
						<th>설명</th>
						<th>사진추가</th>
						<th>삭제</th>
					</thead>
					<c:forEach items="${list}" var="dogam">
					<tbody>
						<td> ${dogam.do_no} </td>
						<td> ${dogam.do_title} </td>
						<td> ${dogam.do_content} </td>
						<td><button><a href="dogamModify.do?do_no=${dogam.do_no}">사진추가</a></button></td>
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