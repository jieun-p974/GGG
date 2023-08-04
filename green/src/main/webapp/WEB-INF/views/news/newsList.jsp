<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/newsList.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>뉴스리스트</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="newslist">
			<div class="cate">
				<select name="category" id="category" class="category">
					<option value="all">전체</option>
					<option value="animal">동물</option>
					<option value="culture">문화</option>
					<option value="social">사회</option>
					<option value="media">미디어</option>
					<option value="science">과학</option>
					<option value="politics">정치</option>
				</select>
			</div>
			<div class="news">
				<div class="list">
					<c:forEach items="${list}" var="news">
						<a class="news_one" href="newsDetail.do?news_no=${news.news_no}">
							<div class="news_thum">
								<img src="${news.n_img1_nn}" alt="뉴스 썸네일" class="thumnail">
							</div>
							<div class="news_title">
								작성일 : ${news.n_reg_date}<br /> <br /> 기사 제목 : ${news.n_title}
							</div>
						</a>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>