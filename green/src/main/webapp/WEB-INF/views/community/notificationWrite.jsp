<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/notification.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<script type="text/javascript">
	function cancleWrite() {
		location.href = "notificationList.do"
	}
</script>
<title>공지작성</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<form action="saveNoti.do" method="post" enctype="multipart/form-data">
		<div class="noti_container">
			<div class="noti_write">
				<input type="hidden" name="id" value="${userId}" />
				<label for="ann_title">공지 제목</label>
				<input type="text" name="ann_title" id="ann_title">
				<div class="text"><textarea name="ann_content" id="ann_content" autofocus="autofocus" placeholder="공지  내용을 입력해주세요."></textarea></div>
			</div>
				<div class="buttons">
					<button id="adding" type="submit">등록</button>
					<button id="cancel" type="button" onclick="cancleWrite()">취소</button>
				</div>
		</div>
		</form>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>