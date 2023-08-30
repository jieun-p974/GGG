<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- jQuery 기본 js파일 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="/resources/styles/font.css">
<style type="text/css">
textarea{
   resize: vertical;
   height: 20rem; 
}
</style>
<title>챌린지 등록</title>
</head>
<body>
	<%@include file="../layouts/adminHeader.jsp"%>
	<section class="pricing position-relative overflow-hidden">
		<div class="container position-relative">
			<div class="row">
				<div
					class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
					<h2 class="text-black mb-0 mt-5 mb-3" style="font-size:2rem;text-align:left">📢챌린지 수정</h2>
				</div>
			</div>
			<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
				<div class="card border-0 shadow">
					<div class="card-body">
						<div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
							<form action="updateChallenge.do" method="post" class="row" name="form" id="form" enctype="multipart/form-data">
								<input name="chal_no" type="hidden" value="${chall.chal_no}">
								<div class="difficulty col-3 mb-3 p-3">
									<label for="difficulty" class="col-12 text-start mb-1">챌린지 난이도</label>
									<select class="form-select" name="difficulty" id="difficulty" value="${chall.difficulty}">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
									</select>
								</div>
								<div class="chal_check_su col-12 mb-3 p-3">
									<label for="chal_check_su" class="col-12 mb-1 text-start">인증횟수</label> 
									<input type="number" name="chal_check_su" id="chal_check_su" class="form-control" value="${chall.chal_check_su}" placeholder="인증횟수" required="">
								</div>
								<div class="chal_name col-12 mb-3 p-3">
									<label for="chal_name" class="col-12 mb-1 text-start">챌린지명</label> 
									<input type="text" name="chal_name" id="chal_name" class="form-control" value="${chall.chal_name}" placeholder="챌린지명" required="">
								</div>
								<div class="chal_start_date col-6 mb-3 p-3">
									<label for="chal_start_date" class="col-12 mb-1 text-start">챌린지 시작일</label> 
									<input type="date" class="form-control" name="chal_start_date" id="chal_start_date"value="${chall.chal_start_date}" placeholder="챌린지 시작일" required=""autocomplete="off">
								</div>
								<div class="chal_end_date col-6 mb-3 p-3">
									<label for="chal_end_date" class="col-12 mb-1 text-start">챌린지 종료일</label> 
									<input type="date" class="form-control" name="chal_end_date" id="chal_end_date"value="${chall.chal_end_date}"placeholder="챌린지 종료일" required="" autocomplete="off">
								</div>
								<div class="chal_ex mb-3 col-12 mb-3 p-3">
									<label for="chal_ex" class="col-12 mb-1 text-start">챌린지 설명</label>
									<textarea name="chal_ex" id="chal_ex" class="form-control" placeholder="챌린지 설명을 적어주세요">${chall.chal_ex}</textarea>
								</div>
								<div class="chal_img mb-3 col-3 p-3">
									<label for="chal_img" class="col-12 mb-1 text-start">챌린지 이미지</label> 
									<input type="file" name="file" id="file" class="col-12" value="/resources/imgs/challImg/${chall.chal_img_addr}">
								</div>
								<div class="calendar d-flex justify-content-between mb-5 p-3">
									<button class="btn btn-white-back btn-hover-third" type="submit">수정</button>
									<a class="btn btn-white-back btn-hover-third" href="/challenge/adminChallenge.do" type="reset">취소</a>
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