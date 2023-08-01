<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/edit.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>커뮤니티 글 작성</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="editContainer">
			<div class="editing">
				<div class="e_img">
					<img class="edit_img" src="../../../resources/imgs/abc.jpg" />
				</div>
				<div class="text">
					소중한 우리 자연, 소중한 우리 지구<br />오늘부터 함께 지켜보아요~!<br />
					<br />
					<br /> #환경운동<br />#환경운동파이팅<br />#환경운동해봐요
				</div>
			</div>
			<div class="buttons">
				<button class="pic">사진 첨부</button>
				<button class="modi">등록</button>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>