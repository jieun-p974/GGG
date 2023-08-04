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
<link href="../../../resources/styles/newsList.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">

<script type="text/javascript">

	$(function(){
		$("#category").change(function(){
			var selected = $("#category").val();
			var html = "";
			
			if(selected == "1"){
				<c:forEach items="${list}" var="news">
					<c:if test="${news.cat_no == 1}">
						html+='<a class="news_one" href="newsDetail.do?news_no=${news.news_no}">';
						html+='<div class="news_thum">';
						html+='<img src="${news.n_img1_nn}" alt="뉴스 썸네일" class="thumnail">';
						html+='</div>';
						html+='<div class="news_title">작성일 : ${news.n_reg_date}<br /> <br /> 기사 제목 : ${news.n_title}</div>';
						html+='</a>';
					</c:if>
				</c:forEach>
				$("#newsList").empty();
				$("#newsList").append(html);
			}else if(selected == "2"){
				<c:forEach items="${list}" var="news">
					<c:if test="${news.cat_no == 2}">
						html+='<a class="news_one" href="newsDetail.do?news_no=${news.news_no}">';
						html+='<div class="news_thum">';
						html+='<img src="${news.n_img1_nn}" alt="뉴스 썸네일" class="thumnail">';
						html+='</div>';
						html+='<div class="news_title">작성일 : ${news.n_reg_date}<br /> <br /> 기사 제목 : ${news.n_title}</div>';
						html+='</a>';
					</c:if>
				</c:forEach>
				$("#newsList").empty();
				$("#newsList").append(html);
			}else if(selected == "3"){
				<c:forEach items="${list}" var="news">
				<c:if test="${news.cat_no == 3}">
					html+='<a class="news_one" href="newsDetail.do?news_no=${news.news_no}">';
					html+='<div class="news_thum">';
					html+='<img src="${news.n_img1_nn}" alt="뉴스 썸네일" class="thumnail">';
					html+='</div>';
					html+='<div class="news_title">작성일 : ${news.n_reg_date}<br /> <br /> 기사 제목 : ${news.n_title}</div>';
					html+='</a>';
				</c:if>
			</c:forEach>
			$("#newsList").empty();
			$("#newsList").append(html);
			}else if(selected == "4"){
				<c:forEach items="${list}" var="news">
				<c:if test="${news.cat_no == 4}">
					html+='<a class="news_one" href="newsDetail.do?news_no=${news.news_no}">';
					html+='<div class="news_thum">';
					html+='<img src="${news.n_img1_nn}" alt="뉴스 썸네일" class="thumnail">';
					html+='</div>';
					html+='<div class="news_title">작성일 : ${news.n_reg_date}<br /> <br /> 기사 제목 : ${news.n_title}</div>';
					html+='</a>';
				</c:if>
			</c:forEach>

			$("#newsList").empty();
			$("#newsList").append(html);
			}else if(selected == "5"){
				<c:forEach items="${list}" var="news">
				<c:if test="${news.cat_no == 5}">
					html+='<a class="news_one" href="newsDetail.do?news_no=${news.news_no}">';
					html+='<div class="news_thum">';
					html+='<img src="${news.n_img1_nn}" alt="뉴스 썸네일" class="thumnail">';
					html+='</div>';
					html+='<div class="news_title">작성일 : ${news.n_reg_date}<br /> <br /> 기사 제목 : ${news.n_title}</div>';
					html+='</a>';
				</c:if>
			</c:forEach>
			$("#newsList").empty();
			$("#newsList").append(html);
			}else if(selected == "6"){
				<c:forEach items="${list}" var="news">
				<c:if test="${news.cat_no == 6}">
					html+='<a class="news_one" href="newsDetail.do?news_no=${news.news_no}">';
					html+='<div class="news_thum">';
					html+='<img src="${news.n_img1_nn}" alt="뉴스 썸네일" class="thumnail">';
					html+='</div>';
					html+='<div class="news_title">작성일 : ${news.n_reg_date}<br /> <br /> 기사 제목 : ${news.n_title}</div>';
					html+='</a>';
				</c:if>
			</c:forEach>
			$("#newsList").empty();
			$("#newsList").append(html);
			}else{
				<c:forEach items="${list}" var="news">
				html+='<a class="news_one" href="newsDetail.do?news_no=${news.news_no}">';
				html+='<div class="news_thum">';
				html+='<img src="${news.n_img1_nn}" alt="뉴스 썸네일" class="thumnail">';
				html+='</div>';
				html+='<div class="news_title">작성일 : ${news.n_reg_date}<br /> <br /> 기사 제목 : ${news.n_title}</div>';
				html+='</a>';
			</c:forEach>
			$("#newsList").empty();
			$("#newsList").append(html);
			}
		});
	});
</script>
<title>뉴스리스트</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="newslist">
			<div class="cate">
				<select name="category" id="category" class="category">
					<option value="all">전체</option>
					<option value="1">동물</option>
					<option value="2">문화</option>
					<option value="3">사회</option>
					<option value="4">미디어</option>
					<option value="5">과학</option>
					<option value="6">정치</option>
				</select>
			</div>
			<div class="news">
				<div class="list" id="newsList">
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