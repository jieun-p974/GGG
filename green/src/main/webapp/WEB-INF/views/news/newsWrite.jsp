<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
window.onload = function(){
	document.getElementById('write').onclick = check;	
}

function check() {
	if(document.form.cat_no.value==""||document.form.cat_no.value=="all"){
		alert("카테고리를 선택해주세요.");
		return false;
	}
	
	if(document.form.n_title.value==""){
		alert("제목을 입력해주세요.")
		document.form.n_title.focus();
		return false;
	}
	
	if(document.form.n_content.value==""){
		alert("내용을 입력해주세요.")
		document.form.n_content.focus();
		return false;
	}
	
	document.form.submit();	//전송
				
}


</script>
<title>뉴스 작성</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/adminHeader.jsp"%>
		<div class="newsWriting">
			<div class="title">관리자 뉴스 작성 페이지</div>
			<div class="writing">
				<form action="saveNews.do" method="post" id="newsInput" name="form" enctype="multipart/form-data">
				<label for="cat_no">카테고리</label> 
				<select name="cat_no" id="cat_no" class="category">
						<option value="all">전체</option>
						<option value=1>동물</option>
						<option value=2>문화</option>
						<option value=3>사회</option>
						<option value=4>미디어</option>
						<option value=5>과학</option>
						<option value=6>정치</option>
					</select><br/><br/>
					<label for="id_manager">작성자</label> 
					<input type="text" name="id_manager" id="id_manager" value="${userId}" readonly />
					<label for="n_title">기사 제목</label> 
					<input type="text" id="n_title" name="n_title">
					<textarea name="n_content" id="n_content" placeholder="내용을 입력해 주세요."
						style="margin-top: 1%"></textarea>
					<input type="file" id="file" name="file">
					<div class="buttons" style="margin-top:2%">
						<button type="reset">취소</button>
						<button id="write" type="button">등록</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>