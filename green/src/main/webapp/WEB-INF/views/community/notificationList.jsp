<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/styles/table.css">
<link rel="stylesheet" href="/resources/styles/font.css">
<title>관리자 공지 리스트</title>
</head>
<body>
	<%@include file="../layouts/adminHeader.jsp"%>
	<section class="service position-relative overflow-hidden mt-5">
		<div class="container position-relative">
			<img src="/resources/imgs/service/dot-shape.png"
				class="shape position-absolute">
			<div class="row mt-5">
				<div
					class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
					<h2 class="text-black mb-0 mt-5 mb-3">공지 관리 페이지</h2>
				</div>
			</div>
			<div
				class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
				<div class="calendar d-flex justify-content-between mb-5">
				<div></div>
					<a class="btn btn-warning btn-hover-secondery" id="add"
						href="notificationWrite.do">추가하기</a>
				</div>
				<div class="card border-0 shadow">
					<div class="card-body">
						<div
							class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
							<table class="type09" id="chall_list">
								<thead>
									<th>순서</th>
									<th>작성자</th>
									<th>작성일</th>
									<th>공지 제목</th>
									<th>수정</th>
									<th>삭제</th>
								</thead>
								<c:forEach items="${listNO}" var="noti" varStatus="noti2">
									<tbody>
										
										<td><a href="notificationDetail.do?ann_no=${noti.ann_no}">${listNO.size()-noti2.index}</a></td>
										<td><a href="notificationDetail.do?ann_no=${noti.ann_no}">${noti.id}</a></td>
										<td><a href="notificationDetail.do?ann_no=${noti.ann_no}">${noti.ann_date}</a></td>
										<td><a href="notificationDetail.do?ann_no=${noti.ann_no}">${noti.ann_title}</a></td>
										<td><a class="btn btn-warning btn-hover-secondery"
											href="notificationModify.do?ann_no=${noti.ann_no}"> 수정 </a></td>
										<td><a class="btn btn-warning btn-hover-secondery"
											href="deleteNotification.do?ann_no=${noti.ann_no}">삭제 </a></td>
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