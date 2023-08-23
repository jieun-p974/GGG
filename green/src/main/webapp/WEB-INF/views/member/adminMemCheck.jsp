<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/adminCheck.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>회원 관리</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="admin_check">
			<p class="admin_title">챌린지 리스트 관리</p>
			<div class="check_lists">
				<table class="list">
					<tr>
						<th>ID</th>
						<th>회원 명</th>
						<th>챌린지 시작일</th>
						<th>챌린지 종료일</th>
						<th>인증확인</th>
					</tr>
					<tr>
						<td>ayongEE</td>
						<td>장아영</td>
						<td>2023.07.01</td>
						<td>2023.07.20</td>
						<td><button class="checkBtn">확인</button></td>
					</tr>
					<tr>
						<td>daseul</td>
						<td>김다슬</td>
						<td>2023.07.01</td>
						<td>2023.07.20</td>
						<td><button class="checkBtn">확인</button></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>