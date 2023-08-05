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
<script type="text/javascript">
$(function(){
	var checkCate = "${news.cat_no}";
	$("#cat_no").val(checkCate);
});
</script>
<title>뉴스 수정</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/adminHeader.jsp"%>
		<div class="newsWriting">
            <div class="title">관리자 뉴스 작성 페이지</div>
			<div class="writing">
				<form action="modifyNews.do" method="post">
				<input name="news_no" type="hidden" value="${news.news_no}" />
				<label for="cat_no">카테고리</label> 
				<select name="cat_no" id="cat_no" class="category" value="${news.cat_no}">
						<option value="all">전체</option>
						<option value=1>동물</option>
						<option value=2>문화</option>
						<option value=3>사회</option>
						<option value=4>미디어</option>
						<option value=5>과학</option>
						<option value=6>정치</option>
					</select><br/><br/>
					<label for="id_manager">작성자</label> 
					<input type="text" name="id_manager" id="id_manager" value="${news.id_manager}" disabled="disabled"> 
					<label for="n_title">기사 제목</label> 
					<input type="text" id="n_title" name="n_title" value="${news.n_title}">
					<textarea name="n_content" id="n_content" placeholder="내용을 입력해 주세요."
						style="margin-top: 1%">${news.n_content}</textarea>
					<input type="file" id="n_img1_nn" name="n_img1_nn">
					<div class="buttons" style="margin-top:2%">
						<button>취소</button>
						<button type="submit">수정하기</button>
					</div>
				</form>
            </div>
        </div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>