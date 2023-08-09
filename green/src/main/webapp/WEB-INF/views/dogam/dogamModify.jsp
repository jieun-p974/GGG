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
<link href="../../../resources/styles/newsWrite.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">

<title>도감 수정</title>
</head>
<body>
	<div class="container">
		<%@include file="../layouts/adminHeader.jsp"%>
		<div class="newsWriting">
            <div class="title">도감 수정 페이지</div>
			<div class="writing">
				<form action="modifyDogam.do" method="post" id="dogamInput">
				<input name="do_no" type="hidden" value="${dogam.do_no}" />
			
				<label for="do_title">동물 이름</label> 
					<input type="text" id="do_title" name="do_title" value="${dogam.do_title}"/><br/><br/>
				
					<textarea type="text" id="do_content" name="do_content">${dogam.do_content}</textarea>
				
					<div class="buttons" style="margin-top:2%">
						<button type="reset">취소</button>
						<button id="write" type="submit">수정하기</button>
					</div>
				</form>
            </div>
        </div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>