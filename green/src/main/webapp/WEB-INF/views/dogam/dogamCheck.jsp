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
			
			<button class="add" id="add" onclick="insert()">동물추가하기</button>
			<a> * 사진을 보려면 행을 클릭하세요. </a>
			</div>
			<div class="list">
				<table class="do" id="do">
					<thead>	
						<th class="do-th-1">NO</th>
						<th class="do-th-2">이름</th>
						<th class="do-th-3">설명</th>
						<th class="do-th-btn">사진</th>
						<th class="do-th-btn">수정</th>
						<th class="do-th-btn">삭제</th>
					</thead>
					<c:forEach items="${list}" var="dogam">
					<tbody>
						<td><a href="dogamCheckImg.do?do_no=${dogam.do_no}">${dogam.do_no}</a></td>
						<td><a href="dogamCheckImg.do?do_no=${dogam.do_no}">${dogam.do_title}</a></td>
						<td><a href="dogamCheckImg.do?do_no=${dogam.do_no}">${dogam.do_content}</a></td>
						<td><button><a href="dogamImg.do?do_no=${dogam.do_no}">추가</a></button></td>
						<td><button><a href="dogamModify.do?do_no=${dogam.do_no}">수정</a></button></td>
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