<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<a class="news_one" href="">
						<div class="news_thum">
							<img src="" alt="뉴스 썸네일" class="thumnail">
						</div>
						<div class="news_title">
							작성일 : 2023.07.06<br />
							<br /> 기사 제목 : 기후 위기가 바꿔 놓은 우리네 식탁
						</div>
					</a> <a class="news_one" href="">
						<div class="news_thum">
							<img src="" alt="뉴스 썸네일" class="thumnail">
						</div>
						<div class="news_title">
							작성일 : 2023.07.11<br />
							<br /> 기사 제목 : 푸바오로 보는 동물 외교의 현실
						</div>
					</a> <a class="news_one" href="">
						<div class="news_thum">
							<img src="" alt="뉴스 썸네일" class="thumnail">
						</div>
						<div class="news_title">
							작성일 : 2023.07.14<br />
							<br /> 기사 제목 : 이마트, 플라스틱 분리배출 경험 공간 마련
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>