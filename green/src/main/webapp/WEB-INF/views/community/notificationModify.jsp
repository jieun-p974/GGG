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
<title>공지 수정</title>
</head>
<body>
	<div class="container">
		<%@include file="../layouts/header.jsp"%>
		<form action="updateNotification.do" method="post" enctype="multipart/form-data">
		<div class="noti_container">
				<input type="hidden" name="id" value="${userId}" />
				<input type="hidden" name="ann_no" value="${noti.ann_no}" />
				<div class="noti_write">
					<label for="ann_title">공지 제목</label>
					<input type="text" name="ann_title" id="ann_title" value="${noti.ann_title}" autocomplete="off">
					<div class="text">
						<label for={ann_content}>공지 내용</label>
						<textarea name="ann_content" id="ann_content" autofocus="off">${noti.ann_content}</textarea>
					</div>
				</div>
				<div class="buttons">
					<button class="btn" id="adding" type="submit">수정하기</button>
					<button class="btn" id="cancel" type="button" onclick="cancleWrite()">취소</button>
				</div>
		</div>
		</form>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>