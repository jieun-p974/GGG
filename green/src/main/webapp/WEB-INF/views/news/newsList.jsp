<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link href="../../../resources/styles/donation.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/resources/styles/font.css">
<style type="text/css">
.thumnail {
	width: 100%;
}

.zz {
	z-index: -1;
}
</style>
<script type="text/javascript">
	$(function() {
		$("#category") .change(function() {
			var selected = $("#category").val();
			var html = "";

			if (selected == "1") {
				<c:forEach items="${list}" var="news">
				<c:if test="${news.cat_no == 1}">
				html += '<div class="gibu">';
				html += '<div class="card border-0 shadow" style="width:380px;height: 550px;">';
				html += '<div class="card-body">';
				html += '<div class="overflow-hidden position-relative d-flex flex-column align-items-center justify-content-center mx-auto text-center">';
				html += '<a class="news_one" href="newsDetail.do?news_no=${news.news_no}">';
				html += '<input type="hidden" name="don_no" id="don_no" value="${dona.don_no}">';
				html += '<p class="mb-0 pt-0 pb-0">작성일 : <fmt:formatDate value="${news.n_reg_date}" pattern="yyyy-MM-dd"/></p>';
				html += '<p class="pt-0 pb-0">기사 제목 : ${news.n_title}</p>';
				html += '<img src="/resources/imgs/newsImg/${news.n_img1_addr}" alt="뉴스 썸네일" class="thumnail">';
				html += '</a></div></div></div></div>';
				</c:if>
				</c:forEach>
				$("#newsList").empty();
				$("#newsList").append(html);
			} else if (selected == "2") {
				<c:forEach items="${list}" var="news">
				<c:if test="${news.cat_no == 2}">
				html += '<div class="gibu">';
				html += '<div class="card border-0 shadow" style="width:380px;height: 550px;">';
				html += '<div class="card-body">';
				html += '<div class="overflow-hidden position-relative d-flex flex-column align-items-center justify-content-center mx-auto text-center">';
				html += '<a class="news_one" href="newsDetail.do?news_no=${news.news_no}">';
				html += '<input type="hidden" name="don_no" id="don_no" value="${dona.don_no}">';
				html += '<p class="mb-0 pt-0 pb-0">작성일 : <fmt:formatDate value="${news.n_reg_date}" pattern="yyyy-MM-dd"/></p>';
				html += '<p class="pt-0 pb-0">기사 제목 : ${news.n_title}</p>';
				html += '<img src="/resources/imgs/newsImg/${news.n_img1_addr}" alt="뉴스 썸네일" class="thumnail">';
				html += '</a></div></div></div></div>';
				</c:if>
				</c:forEach>
				$("#newsList").empty();
				$("#newsList").append(html);
			} else if (selected == "3") {
				<c:forEach items="${list}" var="news">
				<c:if test="${news.cat_no == 3}">
				html += '<div class="gibu">';
				html += '<div class="card border-0 shadow" style="width:380px;height: 550px;">';
				html += '<div class="card-body">';
				html += '<div class="overflow-hidden position-relative d-flex flex-column align-items-center justify-content-center mx-auto text-center">';
				html += '<a class="news_one" href="newsDetail.do?news_no=${news.news_no}">';
				html += '<input type="hidden" name="don_no" id="don_no" value="${dona.don_no}">';
				html += '<p class="pt-0 pb-0">기사 제목 : ${news.n_title}</p>';
				html += '<img src="/resources/imgs/newsImg/${news.n_img1_addr}" alt="뉴스 썸네일" class="thumnail">';
				html += '<p class="mb-0 pt-0 pb-0">작성일 : <fmt:formatDate value="${news.n_reg_date}" pattern="yyyy-MM-dd"/></p>';
				html += '</a></div></div></div></div>';
				</c:if>
				</c:forEach>
				$("#newsList").empty();
				$("#newsList").append(html);
			} else if (selected == "4") {
				<c:forEach items="${list}" var="news">
				<c:if test="${news.cat_no == 4}">
				html += '<div class="gibu">';
				html += '<div class="card border-0 shadow" style="width:380px;height: 550px;">';
				html += '<div class="card-body">';
				html += '<div class="overflow-hidden position-relative d-flex flex-column align-items-center justify-content-center mx-auto text-center">';
				html += '<a class="news_one" href="newsDetail.do?news_no=${news.news_no}">';
				html += '<input type="hidden" name="don_no" id="don_no" value="${dona.don_no}">';
				html += '<p class="pt-0 pb-0">기사 제목 : ${news.n_title}</p>';
				html += '<img src="/resources/imgs/newsImg/${news.n_img1_addr}" alt="뉴스 썸네일" class="thumnail">';
				html += '<p class="mb-0 pt-0 pb-0">작성일 : <fmt:formatDate value="${news.n_reg_date}" pattern="yyyy-MM-dd"/></p>';
				html += '</a></div></div></div></div>';
				</c:if>
				</c:forEach>
				$("#newsList").empty();
				$("#newsList").append(html);
			} else if (selected == "5") {
				<c:forEach items="${list}" var="news">
				<c:if test="${news.cat_no == 5}">
				html += '<div class="gibu">';
				html += '<div class="card border-0 shadow" style="width:380px;height: 550px;">';
				html += '<div class="card-body">';
				html += '<div class="overflow-hidden position-relative d-flex flex-column align-items-center justify-content-center mx-auto text-center">';
				html += '<a class="news_one" href="newsDetail.do?news_no=${news.news_no}">';
				html += '<input type="hidden" name="don_no" id="don_no" value="${dona.don_no}">';
				html += '<p class="pt-0 pb-0">기사 제목 : ${news.n_title}</p>';
				html += '<img src="/resources/imgs/newsImg/${news.n_img1_addr}" alt="뉴스 썸네일" class="thumnail">';
				html += '<p class="mb-0 pt-0 pb-0">작성일 : <fmt:formatDate value="${news.n_reg_date}" pattern="yyyy-MM-dd"/></p>';
				html += '</a></div></div></div></div>';
				</c:if>
				</c:forEach>
				$("#newsList").empty();
				$("#newsList").append(html);
			} else if (selected == "6") {
				<c:forEach items="${list}" var="news">
				<c:if test="${news.cat_no == 6}">
				html += '<div class="gibu">';
				html += '<div class="card border-0 shadow" style="width:380px;height: 550px;">';
				html += '<div class="card-body">';
				html += '<div class="overflow-hidden position-relative d-flex flex-column align-items-center justify-content-center mx-auto text-center">';
				html += '<a class="news_one" href="newsDetail.do?news_no=${news.news_no}">';
				html += '<input type="hidden" name="don_no" id="don_no" value="${dona.don_no}">';
				html += '<p class="pt-0 pb-0">기사 제목 : ${news.n_title}</p>';
				html += '<img src="/resources/imgs/newsImg/${news.n_img1_addr}" alt="뉴스 썸네일" class="thumnail">';
				html += '<p class="mb-0 pt-0 pb-0">작성일 : <fmt:formatDate value="${news.n_reg_date}" pattern="yyyy-MM-dd"/></p>';
				html += '</a></div></div></div></div>';
				</c:if>
				</c:forEach>
				$("#newsList").empty();
				$("#newsList").append(html);
			} else {
				<c:forEach items="${list}" var="news">
				html += '<div class="gibu">';
				html += '<div class="card border-0 shadow" style="width:380px;height: 550px;">';
				html += '<div class="card-body">';
				html += '<div class="overflow-hidden position-relative d-flex flex-column align-items-center justify-content-center mx-auto text-center">';
				html += '<a class="news_one" href="newsDetail.do?news_no=${news.news_no}">';
				html += '<input type="hidden" name="don_no" id="don_no" value="${dona.don_no}">';
				html += '<p class="pt-0 pb-0">기사 제목 : ${news.n_title}</p>';
				html += '<img src="/resources/imgs/newsImg/${news.n_img1_addr}" alt="뉴스 썸네일" class="thumnail">';
				html += '<p class="mb-0 pt-0 pb-0">작성일 : <fmt:formatDate value="${news.n_reg_date}" pattern="yyyy-MM-dd"/></p>';
				html += '</a></div></div></div></div>';
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
	<%@include file="../layouts/header.jsp"%>
	<section class="our-service position-relative overflow-hidden">
		<div class="container position-relative">
			<img src="/resources/imgs/our-service/our-service-background.svg" class="shape position-absolute zz">
			<div class="row">
				<div class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
					<h2 class="text-black mt-5 mb-3" style="font-size:2rem;text-align:left">📰뉴스 리스트</h2>
				</div>
			</div>
			<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
				<div class="calendar d-flex justify-content-between mb-3">
					<select name="category" id="category" class="category">
						<option value="all">전체</option>
						<option value="1">동물</option>
						<option value="2">문화</option>
						<option value="3">사회</option>
						<option value="4">미디어</option>
						<option value="5">과학</option>
						<option value="6">정치</option>
					</select>
					<div></div>
				</div>
				<div class="gibu_list" id="newsList">
					<c:forEach items="${list}" var="news">
						<div class="gibu">
							<div class="card border-0 shadow" style="width: 380px; height: 550px;">
								<div class="card-body">
									<div class="overflow-hidden position-relative d-flex flex-column align-items-center justify-content-center mx-auto text-center">
										<a class="news_one" href="newsDetail.do?news_no=${news.news_no}">
										<input type="hidden" name="don_no" id="don_no" value="${dona.don_no}">
											<p class="pt-0 pb-0">기사 제목 : ${news.n_title}</p>
											<img src="/resources/imgs/newsImg/${news.n_img1_addr}" alt="뉴스 썸네일" class="thumnail">
											<p class="mb-0 pt-0 pb-0"> 작성일 :
												<fmt:formatDate value="${news.n_reg_date}" pattern="yyyy-MM-dd" />
											</p>
										</a>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>