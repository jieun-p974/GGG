<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/checkChallenge.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>챌린지 인증</title>
<script type="text/javascript">
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
	
	${""}
});
</script>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="my-challenge">
			<div class="challengeDetail">
				<img class="c_img" src="/resources/imgs/challImg/${chall.chal_img_addr}" />
				<div class="detail">
					<p class="c_title">챌린지: ${chall.chal_name}</p>
					<p class="gigan">기간: ${chall.chal_start_date} ~ ${chall.chal_end_date}</p>
					<p class="level" id="d_level">난이도: </p>
					<p class="content">
						${chall.chal_ex}
					</p>
				</div>
			</div>
			<div class="check_content">
				<c:if test="${counting eq chall.chal_check_su}">
					<p class="comment">챌린지를 성공하셨습니다🎊🎊	</p>			
				</c:if>
				<c:if test="${counting < chall.chal_check_su}">
				<c:set var="lefted" value="${chall.chal_check_su - counting}"/>
					<p class="comment">앞으로 <c:out value="${lefted}" />번 더 인증하시면 챌린지가 완료됩니다!</p>
				</c:if>
				<div class="status">
					<div class="sticker">
						<p class="s_txt">진행도(${counting}/${chall.chal_check_su})</p>
						<ul class="s_stickers">
						<c:forEach var="item" begin="1" end="${counting}">
							<li class="s_sticker">⭕</li>
						</c:forEach>
						<c:forEach var="item" begin="${lefted}" end="${chall.chal_check_su-1}">
							<li class="s_sticker">❌</li>
						</c:forEach>
						</ul>
					</div>
					<a href="challengeCertification.do?m_c_no=${check[0].m_c_no}"><button>인증하기</button></a>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>