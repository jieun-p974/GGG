<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="../../../resources/styles/notification.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/resources/styles/font.css">
<title>공지작성</title>
</head>
<body>
<%@include file= "../layouts/adminHeader.jsp"%>
<section class="pricing position-relative overflow-hidden">
		<div class="container position-relative">
			<div class="row">
				<div
					class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
					<h2 class="text-black mb-0 mt-5 mb-3">공지 등록</h2>
				</div>
			</div>
			<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
				<div class="card border-0 shadow">
					<div class="card-body">
						<div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
							<form action="saveNoti.do" method="post" enctype="multipart/form-data" id="here" class="row col-12">
								<div class="noti_write col-12 mb-3 p-3">
									<input type="hidden" name="id" id="id" value="${userId}" />
									<label for="ann_title" class="col-12 mb-1 text-start">공지 제목</label>
									<input type="text" name="ann_title" id="ann_title" class="form-control" placeholder="공지  제목을 작성해주세요.">
								</div>
								<div class="text">
									<label for="ann_content" class="col-12 mb-1 text-start">공지 내용</label>
									<textarea class="form-control" name="ann_content" id="ann_content" autofocus="autofocus" placeholder="공지  내용을 입력해주세요."></textarea>
								</div>
								<div class="buttons d-flex justify-content-between mb-5 p-3">
									<button class="btn btn-white-back btn-hover-third" id="adding" type="submit" >등록</button>
									<button class="btn btn-white-back btn-hover-third" id="cancel" type="button" onclick="cancleWrite()">취소</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
<%@include file="../layouts/footer.jsp"%>
<script type="text/javascript">
	function cancleWrite() {
		location.href = "notificationList.do"
	}
</script>
</body>
</html>