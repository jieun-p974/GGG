<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<!-- 오늘 날짜 -->
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate var="today" value="${now}" pattern="yyyy-MM-dd" />

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link href="../../../resources/styles/donation.css" rel="stylesheet" type="text/css">
<style type="text/css">
.c_list_img{
	width: 30%;
	margin-top: 4%;
}
.chall{
	display: grid;
	grid-template-columns: 1fr 1fr 1fr;
	justify-items: center;
    align-items: center;
    gap:1%;
}
.zz{
	z-index: -1;
}
</style>
<script type="text/javascript">
$(function(){
	var html2 = "";
	
	<c:forEach items="${list}" var="chall">
	var star2 = "";
	
	for(var i = 0; i < ${chall.difficulty}; i++) { 
		star2 += "★";
	}
	for(var i = 0; i < 5-${chall.difficulty}; i++) {
		star2 += "☆";
	}
	html2 +='<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center align-middle">';
	html2 +='<div class="card position-relative shadow border-0 h-100">';
	html2 +='<div class="card-body p-4" style="height:275px;">';
	html2 +='<a href="../challenge/challengeDetail.do?chal_no=${chall.chal_no}">';
	html2 +='<img class="c_list_img" src="/resources/imgs/challImg/${chall.chal_img_addr}"/>';
	html2 += '<p class="c_list_txt">${chall.chal_name}</p>';
	html2 += '<p class="c_list_date">기간 : ${chall.chal_start_date} ~ ${chall.chal_end_date}</p>';
	html2 += '<p class="c_list_lv">난이도 : ';
	html2 += star2;
	html2 += '</p>';
	html2 += '</a></div></div></div>';
</c:forEach>
$("#chall").empty();
$("#chall").append(html2);

	/*  오늘 날짜랑 비교 */
	$("#challList").change(function(){
		var selected = $("#challList").val();
		var html = "";
		
		if (selected == 'ing') {
			console.log("진행중인 챌린지");
			<c:forEach items="${list}" var="chall">
			<c:if test="${chall.chal_end_date > today}"> 
				var star = "";
				
				for(var i = 0; i < ${chall.difficulty}; i++){
					star += "★";
				}
				for(var i = 0; i < 5-${chall.difficulty}; i++){
					star += "☆";
				}
				html +='<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center align-middle">';
				html +='<div class="card position-relative shadow border-0 h-100">';
				html +='<div class="card-body p-4" style="height:275px;">';
				html +='<a href="../challenge/challengeDetail.do?chal_no=${chall.chal_no}">';
				html +='<img class="c_list_img" src="/resources/imgs/challImg/${chall.chal_img_addr}"/>';
				html += '<p class="c_list_txt">${chall.chal_name}</p>';
				html += '<p class="c_list_date">기간 : ${chall.chal_start_date} ~ ${chall.chal_end_date}</p>';
				html += '<p class="c_list_lv">난이도 : ';
				html += star;
				html += '</p>';
				html += '</a></div></div></div>';
			</c:if>
			</c:forEach>
			$("#chall").empty();
			$("#chall").append(html);
		}else if (selected == 'end') {
			console.log("종료된 챌린지");
			<c:forEach items="${list}" var="chall">
			<c:if test="${chall.chal_end_date < today}">
				var star = "";
				
				for(var i = 0; i < ${chall.difficulty}; i++){
					star += "★";
				}
				for(var i = 0; i < 5-${chall.difficulty}; i++){
					star += "☆";
				}
				html +='<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center align-middle">';
				html +='<div class="card position-relative shadow border-0 h-100">';
				html +='<div class="card-body p-4" style="height:275px;">';
				html +='<a href="../challenge/challengeDetail.do?chal_no=${chall.chal_no}">';
				html +='<img class="c_list_img" src="/resources/imgs/challImg/${chall.chal_img_addr}"/>';
				html += '<p class="c_list_txt">${chall.chal_name}</p>';
				html += '<p class="c_list_date">기간 : ${chall.chal_start_date} ~ ${chall.chal_end_date}</p>';
				html += '<p class="c_list_lv">난이도 : ';
				html += star;
				html += '</p>';
				html += '</a></div></div></div>';
			</c:if>
			</c:forEach>
			$("#chall").empty();
			$("#chall").append(html);
		} else {
			console.log("챌린지 전체");
			<c:forEach items="${list}" var="chall">
				var star = "";
				
				for(var i = 0; i < ${chall.difficulty}; i++){
					star += "★";
				}
				for(var i = 0; i < 5-${chall.difficulty}; i++){
					star += "☆";
				}
				html +='<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center align-middle">';
				html +='<div class="card position-relative shadow border-0 h-100">';
				html +='<div class="card-body p-4" style="height:275px;">';
				html +='<a href="../challenge/challengeDetail.do?chal_no=${chall.chal_no}">';
				html +='<img class="c_list_img" src="/resources/imgs/challImg/${chall.chal_img_addr}"/>';
				html += '<p class="c_list_txt">${chall.chal_name}</p>';
				html += '<p class="c_list_date">기간 : ${chall.chal_start_date} ~ ${chall.chal_end_date}</p>';
				html += '<p class="c_list_lv">난이도 : ';
				html += star;
				html += '</p>';
				html += '</a></div></div></div>';
			</c:forEach>
			$("#chall").empty();
			$("#chall").append(html);
		}
	});
});
</script>
<title>챌린지 목록</title>
</head>
<body>
	<%@include file="../layouts/header.jsp"%>
	<section class="pricing position-relative overflow-hidden">
		<div class="container position-relative">
			<img src="/resources/imgs/our-service/our-service-background.svg"
				class="shape position-absolute zz">
			<div class="row">
				<div
					class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
					<h2 class="text-black mt-5 mb-3">현재 진행중인 챌린지 목록입니다.</h2>
				</div>
				<div class="calendar">
					<select class="month" name="challList" id="challList"
						style="font-size: 1rem;">
						<option value="all">전체</option>
						<option value="ing">진행중인 챌린지</option>
						<option value="end">종료된 챌린지</option>
					</select>
				</div>
			</div>
			<div class="container position-relative">
				<div class="chall justify-content-center mt-5" id="chall">

				</div>
			</div>
		</div>
	</section>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>