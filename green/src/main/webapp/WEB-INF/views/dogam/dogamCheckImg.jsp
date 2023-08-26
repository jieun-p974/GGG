<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="/resources/styles/table.css">
<link rel="stylesheet" href="/resources/styles/font.css">
<script type="text/javascript">
	function insert() {
		location.href = "dogamWrite.do"
	}
</script>
<style type="text/css">
img{
	width: 60%;
}
</style>
<title>관리자 | 도감 관리</title>
</head>
<body>
<%@include file="../layouts/adminHeader.jsp"%>
<section class="service position-relative overflow-hidden">
	<div class="container position-relative">
		<div class="row">
			<div class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
				<h2 class="text-black mt-3 mb-0 mt-5 mb-3">도감 관리 페이지</h2>
				<button class="btn btn-white-back2 btn-hover-secondery" id="add" onclick="location.href='dogamCheck.do'">뒤로</button>
			</div>
		</div>
		<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
			<div class="card border-0 shadow">
				<div class="card-body">
					<div
						class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
						<table class="type09" id="chall_list">
							<thead>
								<th class="do-th-1">NO</th>
								<th class="do-th-2">이름</th>
								<th class="do-th-3">실제사진</th>
								<th class="do-th-3">레벨1</th>
								<th class="do-th-3">레벨2</th>
								<th class="do-th-3">레벨3</th>
							</thead>
							<c:forEach items="${list}" var="dogam">
							<c:set var="content" value="${dogam.do_content}"/>
								<tbody >
									<td style="border-bottom:none;"> ${dogam.do_no} </td>
									<td style="border-bottom:none;"> ${dogam.do_title} </td>
									<td style="border-bottom:none;"> <img src="/resources/imgs/dogam/${dogam.do_realimg_addr}"> </td>
									<td style="border-bottom:none;"> <img src="/resources/imgs/dogam/${dogam.img1}"> </td>
									<td style="border-bottom:none;"> <img src="/resources/imgs/dogam/${dogam.img2}"> </td>
									<td style="border-bottom:none;"> <img src="/resources/imgs/dogam/${dogam.img3}"> </td>
								</tbody>
							</c:forEach>
						</table>
					</div>
					<div>
							<table class="type09 col-12" id="chall_list">
							<thead>
								<th>설명</th>
								</thead>
								<tbody>
									<td style="border-bottom:none;"> ${content} </td>
								</tbody>
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