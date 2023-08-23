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
<link rel="stylesheet" href="/resources/styles/table.css">
<script type="text/javascript">
	function insert() {
		location.href = "dogamWrite.do"
	}
</script>
<title>도감 관리</title>
</head>
<body>
	<%@include file="../layouts/adminHeader.jsp"%>
	<section class="service position-relative overflow-hidden">
		<div class="container position-relative">
			<img src="/resources/imgs/service/dot-shape.png"
				class="shape position-absolute">
			<div class="row">
				<div
					class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
					<h2 class="text-black mt-3 mb-0 mt-5 mb-3">도감 관리 페이지</h2>
				</div>
			</div>
			<div
				class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
				<div class="calendar d-flex justify-content-between mb-5">
				<p class="text-warning fw-500 mt-3">* 상세 내용을 보려면 행을 클릭하세요.</p>
					<a class="btn btn-white-back btn-hover-third" href="dogamWrite.do">동물추가하기
					</a>
					
				</div>
				<div class="card border-0 shadow">
					<div class="card-body">
						<div
							class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
							<table class="type09" id="chall_list">
								<thead>
									<th class="do-th-2">이름</th>
									<th class="do-th-3">미리보기</th>
									<th class="do-th-btn">사진</th>
									<th class="do-th-btn">수정</th>
									<th class="do-th-btn">삭제</th>
								</thead>
								<c:forEach items="${list}" var="dogam">
									<tbody>
										<input type="hidden" name="do_no" id="do_no"
											value="${dogam.do_no}">
										<td><a href="dogamCheckImg.do?do_no=${dogam.do_no}">${dogam.do_title}</a></td>
										<td style="width:45%">
											<a href="dogamCheckImg.do?do_no=${dogam.do_no}">${dogam.do_yoyak}</a>
										</td>
										<td><a class="btn btn-white-back2 btn-hover-secondery"
											href="dogamImg.do?do_no=${dogam.do_no}">추가</a></td>
										<td><a class="btn btn-white-back2 btn-hover-secondery"
											href="dogamModify.do?do_no=${dogam.do_no}">수정</a></td>
										<td><a class="btn btn-white-back2 btn-hover-secondery"
											href="deleteDogam.do?do_no=${dogam.do_no}">삭제</a></td>
									</tbody>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>