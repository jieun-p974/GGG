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
<title>뉴스 수정</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="newsWriting">
            <div class="title">관리자 뉴스 수정 페이지</div>
            <div class="buttons">
                <button>취소</button>
                <button>수정</button>
            </div>
            <div class="writing">
                <form action="">
                    <textarea name="news" id="news" placeholder="내용을 입력해 주세요."></textarea>
                    <input type="file">
                </form>
            </div>
        </div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>