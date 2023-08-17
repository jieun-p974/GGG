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
<title>챌린지 인증</title>
<style type="text/css">
.c_img {
	width: 30%;
}

.s_stickers {
	list-style-type: none;
	padding-left: 0;
	display: flex;
	justify-content: space-evenly;
	width: 30%;
	background-color: #8AB6A9;
	padding: 1% 3%;
	border-radius: 15px;
	font-size: 3rem;
	margin-top: 1%;
	margin-bottom: 0;
}
</style>
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
});
</script>
</head>
<body>
	<%@include file="../layouts/header.jsp"%>
	<section class="pricing position-relative overflow-hidden">
		<div class="container position-relative">
			<div class="d-flex justify-content-center mt-5">
				<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6">
					<div class="card position-relative shadow border-0 h-100">
						<div class="card-body p-3 d-flex">
							<img class="c_img"
								src="/resources/imgs/challImg/${chall.chal_img_addr}" />
							<div class="ms-3 row align-content-between">
								<div class="chall_detail">
									<div class="detail_content">
										<p class="d_title">챌린지: ${chall.chal_name}</p>
										<p class="d_gigan">기 간: ${chall.chal_start_date} ~
											${chall.chal_end_date}</p>
										<p class="d_chal_check_su">인증 횟수 : ${chall.chal_check_su}</p>
										<p class="d_level" id="d_level">난이도 :</p>
										<p class="d_content">${chall.chal_ex}</p>
									</div>
									<c:if test="${counting eq chall.chal_check_su}">
										<p class="comment">챌린지를 성공하셨습니다🎊🎊</p>
									</c:if>
									<c:if test="${counting ne chall.chal_check_su}">
										<c:if test="${counting < chall.chal_check_su}">
											<c:set var="lefted" value="${chall.chal_check_su - counting}" />
											<p class="comment">
												앞으로
												<c:out value="${lefted}" />
												번 더 인증하시면 챌린지가 완료됩니다!
											</p>
								</div>

								<div class="checking_content">
									<c:if test="${lefted eq chall.chal_check_su}">
										<div class="status">
											<div class="sticker">
												<p class="s_txt">진행도(${counting}/${chall.chal_check_su})</p>
												<ul class="s_stickers">
													<c:forEach var="xx" begin="1" end="${chall.chal_check_su}">
														<li class="s_sticker">❌</li>
													</c:forEach>
												</ul>
											</div>
									</c:if>
									<c:if test="${lefted ne chall.chal_check_su}">
										<div class="status">
											<div class="sticker">
												<p class="s_txt">진행도(${counting}/${chall.chal_check_su})</p>
												<ul class="s_stickers">
													<c:forEach var="ooo" begin="1" end="${counting}">
														<li class="s_sticker">⭕</li>
													</c:forEach>
													<c:forEach var="xxx" begin="1" end="${lefted}">
														<li class="s_sticker">❌</li>
													</c:forEach>
												</ul>
											</div>
									</c:if>
									</c:if>
									</c:if>
								</div>
								<div class="check_btn d-flex justify-content-between">
									<div></div>
									<a href="challengeCertification.do?m_c_no=${check[0].m_c_no}"
										class="btn btn-white-back2 btn-hover-secondery text-capitalize">인증하기</a>
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
>
</html>