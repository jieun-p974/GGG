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
<link href="../../../resources/styles/donation.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/resources/styles/font.css">
<<<<<<< HEAD
<title>🌏캐릭터도감</title>
=======
<title>도감</title>
>>>>>>> refs/remotes/origin/seul
</head>
<body>
	<%@include file="../layouts/header.jsp"%>
	<section class="pricing position-relative">
		<div class="container position-relative">
			<div class="row">
				<div
					class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center mt-5 mb-5">
					<h2 class="text-white mb-0">캐릭터 도감 목록입니다.</h2>
					<c:if test="${userId ne null}">
						<a class="btn btn-white-back btn-hover-third" href="../dogam/myDogam.do?id=${userId}">나의도감</a>
					</c:if>
				</div>
			</div>
			<div class="gibu_list">
				<c:forEach items="${list}" var="dogam">
					<div class="dogam">
						<div class="card">
							<div class="card-body" style="height: 400px;">
								<div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
									<a href="../dogam/dogamDetail.do?do_no=${dogam.do_no}">
										<div class="d_list_img">
											<img class="d_img" alt="도감 사진"
												src="../resources/imgs/dogam/${dogam.do_img_addr}">
										</div>
										<p class="d_list_title">${dogam.do_title}</p>
									</a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>