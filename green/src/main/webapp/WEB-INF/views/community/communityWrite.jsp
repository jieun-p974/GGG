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
<script type="text/javascript">
function cancleWrite() {
    location.href = "community.do"
 }
</script>
<title>커뮤니티 글 작성</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="writeContainer">
	<%--	<form action="${contextPath}/board/itemUpload" method="post" enctype="multipart/form-data">  --%>	
			                <form action="save.do" method="post">
				<div class="editing">
					<div class="e_img">
						<img class="edit_img" src="../../../resources/imgs/abc.jpg" />
					</div>
					<input type="hidden" name="id" value="${userId}" />
					<div class="text">
						<textarea name="b_content" id="b_content" autofocus="autofocus"></textarea>
					</div>
					<div class="comm_img">
						<label for="comm_img">사진 첨부하기</label>
						<input type="file" name="comm_img" id="comm_img">
					</div>
					<div class="buttons">
              			<button id="adding" type="submit">등록</button>
              			<button id="cancel" type="button" onclick="cancleWrite()">취소</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>