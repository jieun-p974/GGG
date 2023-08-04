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
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link rel="stylesheet"
	href="../../../resources/styles/challengeList.css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
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
	html2 += '<div class="c_list">';
	html2 += '<div class="c_list_img"><img alt="챌린지 사진" src="${chall.chal_img}"></div>';
	html2 += '<p class="c_list_txt">${chall.chal_name}</p>';
	html2 += '<p class="c_list_date">기간 : ${chall.chal_start_date} ~ ${chall.chal_end_date}</p>';
	html2 += '<p class="c_list_lv">난이도 : ';
	html2 += star2;
	html2 += '</p>';
	html2 += '</div>';
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
				html += '<div class="c_list">';
				html += '<div class="c_list_img"><img alt="챌린지 사진" src="${chall.chal_img}"></div>';
				html += '<p class="c_list_txt">${chall.chal_name}</p>';
				html += '<p class="c_list_date">기간 : ${chall.chal_start_date} ~ ${chall.chal_end_date}</p>';
				html += '<p class="c_list_lv">난이도 : ';
				html += star;
				html += '</p>';
				html += '</div>';
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
				html += '<div class="c_list">';
				html += '<div class="c_list_img"><img alt="챌린지 사진" src="${chall.chal_img}"></div>';
				html += '<p class="c_list_txt">${chall.chal_name}</p>';
				html += '<p class="c_list_date">기간 : ${chall.chal_start_date} ~ ${chall.chal_end_date}</p>';
				html += '<p class="c_list_lv">난이도 : ';
				html += star;
				html += '</p>';
				html += '</div>';
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
				html += '<div class="c_list">';
				html += '<div class="c_list_img"><img alt="챌린지 사진" src="${chall.chal_img}"></div>';
				html += '<p class="c_list_txt">${chall.chal_name}</p>';
				html += '<p class="c_list_date">기간 : ${chall.chal_start_date} ~ ${chall.chal_end_date}</p>';
				html += '<p class="c_list_lv">난이도 : ';
				html += star;
				html += '</p>';
				html += '</div>';
			</c:forEach>
			$("#chall").empty();
			$("#chall").append(html);
		}
	});
});
</script>
<title>뉴스 목록</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="challenge">
			<p class="challenge_txt">현재 진행중인 챌린지 목록입니다.</p>
		</div>
		<div class="calendar" style="margin: 1%;">
			<select class="month" name="challList" id="challList"
				style="font-size: 1rem;">
				<option value="all">전체</option>
				<option value="ing">진행중인 챌린지</option>
				<option value="end">종료된 챌린지</option>
			</select>
		</div>
		<div class="chall" id="chall">
			
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>