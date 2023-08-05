<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/newsWrite.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>뉴스 작성</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/adminHeader.jsp"%>
		<div class="newsWriting">
			<div class="title">관리자 도감 작성 페이지</div>
			<div class="writing">
				<form action="saveDogam.do" method="post">			
					<label for="title">동물이름</label> 
					<input type="text" id="title" name="title">
					<span><br/><br/></span>
					<label for="title">레벨0 이미지 : </label> 
					<input type="file" id="n_img1_nn" name="n_img1_nn">
					<span><br/></span>
					<label for="title">레벨1 이미지 : </label> 
					<input type="file" id="n_img1_nn" name="n_img1_nn">
					<span><br/></span>
					<label for="title">레벨2 이미지 : </label> 
					<input type="file" id="n_img1_nn" name="n_img1_nn">
					<textarea name="n_content" id="n_content" placeholder="내용을 입력해 주세요."
						style="margin-top: 1%"></textarea>
					<div class="buttons" style="margin-top:2%">
						<button>취소</button>
						<button type="submit">등록</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>