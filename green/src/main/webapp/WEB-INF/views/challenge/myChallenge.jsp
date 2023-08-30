<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
.now_lists{
    list-style-type: none;
    padding-left: 0;
}
.now_list{
    padding: 1%;
    margin-bottom: 1%;
}
</style>
<title>도전중인 챌린지</title>
</head>
<body>
	<%@include file="../layouts/header.jsp"%>
	<section class="pricing position-relative overflow-hidden">
		<div class="container position-relative">
			<div class="row">
				<div
					class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
					<h2 class="text-black mb-0 mt-5 mb-3" style="background: #fff">내 도전목록</h2>
				</div>
			</div>
			<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 mt-4">
				<div class="overflow-hidden position-relative mx-auto">
					<h3 class="text-black mb-0 mt-5 mb-3">진행중인 챌린지</h2>
					<ul class="now_lists" style="background: #fff">
						<c:forEach items="${myChall}" var="c">
						<a href="checkChallenge.do?chal_no=${c.chal_no}&id=${userId}">
							<li class="now_list">
								${c.chal_name}
							</li>
							</a>
							<hr style="margin:0" />
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 mt-4">
				<div class="overflow-hidden position-relative mx-auto">
					<h3 class="text-black mb-0 mt-5 mb-3">진행중인 챌린지</h2>
					<ul class="now_lists" style="background: #fff">
						<c:forEach items="${complete}" var="com">
							<li class="now_list">${com.chal_name}</li>
							<hr style="margin:0" />
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>