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
<script type="text/javascript">
var msg= "<c:out value='${msg}' />"
var url= "<c:out value='${url}' />"

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
	
	${""}
});
</script>
<title>챌린지 상세</title>
</head>
<body>
	<%@include file="../layouts/header.jsp"%>
	<section class="pricing position-relative overflow-hidden">
		<div class="container position-relative">
			<div class="row justify-content-center mt-5">
			<h3 class="mb-5" style="font-weight: bold;">‘${chall.chal_name}’</span>를 선택하셨군요!</h3>
				<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12">
					<div class="card position-relative shadow border-0 h-100">
						<div class="card-body p-3">
							<div class="chall_detail">
								<img class="detail_img col-12"
									src="/resources/imgs/challImg/${chall.chal_img_addr}" />
								<div class="detail_content mt-5">
									<p class="d_title">챌린지: ${chall.chal_name}</p>
									<p class="d_gigan">기 간: ${chall.chal_start_date} ~
										${chall.chal_end_date}</p>
									<p class="d_level" id="d_level">난이도 :</p>
									<p class="d_content">${chall.chal_ex}</p>
								</div>
							</div>
							<div class="checking">
								<div class="checking_content">
									<p class="span_t check">&lt;인증횟수&gt;</p>
									<p>챌린지를 진행하는 동안 총 ${chall.chal_check_su} 회 인증하셔야 합니다.</p>
									<c:forEach var="word" items="${keywordArr}">
										${word}<br />
										<br />
									</c:forEach>
								</div>
								<div class="check_btn d-flex justify-content-between">
									<div></div>
									<a href="sinchung.do?chal_no=${chall.chal_no}&userId=${sessionScope.userId}"
										class="btn btn-white-back2 btn-hover-secondery text-capitalize">신청하기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<%@include file="../layouts/footer.jsp"%>
</body>
</html>
