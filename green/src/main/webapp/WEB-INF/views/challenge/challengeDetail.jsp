<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/challengeDetail.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<script type="text/javascript">
var msg= "<c:out value='${msg}' />"
var url= "<c:out value='${url}' />"

console.log(msg);
console.log(url);
if(msg.length >0 && url.length >0){
	
	alert(msg);
	location.href=url;
}

$(function(){
	var html2 = "";
	var star2 = "";
	
	for(var i = 0; i < ${chall.difficulty}; i++){
		star2 += "★";
	}
	for(var i = 0; i < 5-${chall.difficulty}; i++){
		star2 += "☆";
	}
	$("#d_level").append(star2);
});
</script>
<title>뉴스 상세</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="c_details">
			<div class="challenge_title">
				<p>
					<span class="span_t">‘${chall.chal_name}’</span>를 선택하셨군요!
				</p>
			</div>

			<div class="chall_detail">
				<img class="detail_img" src="" />
				<div class="detail_content">
					<p class="d_title">챌린지: ${chall.chal_name}</p>
					<p class="d_gigan">기 간: ${chall.chal_start_date} ~ ${chall.chal_end_date}</p>
					<p class="d_level" id="d_level">난이도 : </p>
					<p class="d_content">
						${chall.chal_ex}
					</p>
				</div>
			</div>

			<div class="checking">
				<div class="checking_content">
					<p class="span_t check">&lt;인증방법&gt;</p>
					<c:set var="methods" value="${chall.chal_check_method}"/>
					<c:set var="keywordArr" value="${fn:split(methods,'.')}"/>
					<c:forEach var="word" items="${keywordArr}">
						${word}<br/><br/>
					</c:forEach>
				</div>
				<div class="check_btn">
					<button><a href="sinchung.do?chal_no=${chall.chal_no}&userId=${sessionScope.userId}">신청하기</a></button>
					<!-- <button onclick="sinchung()">신청하기</button> -->
				</div>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>