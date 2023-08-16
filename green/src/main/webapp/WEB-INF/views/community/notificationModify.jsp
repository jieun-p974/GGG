<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/notification.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<script type="text/javascript">
	function cancleWrite() {
		location.href = "notificationList.do"
	}
</script>
<title>공지 수정</title>
</head>
<body>
<%@include file="../layouts/header.jsp"%>
<section class="pricing position-relative overflow-hidden">
	<div class="container position-relative">
		<div class="row">
			<div
				class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
				<h2 class="text-black mb-0 mt-5 mb-3">공지 수정</h2>
			</div>
		</div>
		<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
			<div class="card border-0 shadow">
				<div class="card-body">
					<div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
						<form action="updateNotification.do" method="post" enctype="multipart/form-data" class="row col-12">
							<input type="hidden" name="id" value="${userId}" />
							<input type="hidden" name="ann_no" value="${noti.ann_no}" />
							<div class="noti_write col-12 mb-3 p-3">
								<input type="hidden" name="id" value="${userId}" />
								<label for="ann_title" class="col-12 mb-1 text-start">공지 제목</label>
								<input type="text" name="ann_title" id="ann_title" class="form-control" value="${noti.ann_title}">
							</div>
							<div class="text">
								<label for="ann_content" class="col-12 mb-1 text-start">공지 내용</label>
								<textarea class="form-control" name="ann_content" id="ann_content" autofocus="autofocus" >${noti.ann_content}</textarea>
							</div>
							<div class="buttons d-flex justify-content-between mb-5 p-3">
								<button id="adding" type="submit" class="btn btn-white-back btn-hover-third">등록</button>
								<button id="cancel" type="button" onclick="cancleWrite()" class="btn btn-white-back btn-hover-third">취소</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<%@include file="../layouts/footer.jsp"%>
</body>
</html>