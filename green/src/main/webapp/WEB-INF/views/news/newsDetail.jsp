<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/newsDetail.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<style type="text/css">
.img{
    width: 80%;
    height: auto;
}
.news_info{
    display: flex;
    border-bottom: 1px solid black;
    margin: 2% 0;
    padding-bottom: 2%;
}
.date{
    margin-left: 1%;
}
</style>
<title>뉴스 상세</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="newsDetail">
			<div class="title">${news.n_title}</div>
			<div class="news_info">
                <div class="writer">작성자 : ${news.id_manager}</div>
                <div class="date">작성일 : ${news.n_reg_date}</div>
			</div>
			<div class="news_content">
				<img src="/resources/imgs/newsImg/${news.n_img1_addr}" alt="사진" class="img">
				<p class="content">
					${news.n_content}
				</p>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>