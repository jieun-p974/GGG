<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	window.onload = function() {
		document.getElementById('write').onclick = check;
	}

	function check() {
		if (document.form.cat_no.value == ""
				|| document.form.cat_no.value == "all") {
			alert("카테고리를 선택해주세요.");
			return false;
		}

		if (document.form.n_title.value == "") {
			alert("제목을 입력해주세요.")
			document.form.n_title.focus();
			return false;
		}

		if (document.form.n_content.value == "") {
			alert("내용을 입력해주세요.")
			document.form.n_content.focus();
			return false;
		}

		document.form.submit(); //전송

	}
</script>
<title>뉴스 작성</title>
</head>
<body>
	<%@include file="../layouts/adminHeader.jsp"%>
	<section class="pricing position-relative overflow-hidden">
		<div class="container position-relative">
			<div class="row">
				<div class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
					<h2 class="text-black mb-0 mt-5 mb-3">관리자 뉴스 작성 페이지</h2>
				</div>
			</div>
			<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
				<div class="card border-0 shadow">
					<div class="card-body">
						<div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
							<form action="saveNews.do" class="row" method="post" id="newsInput" name="form" enctype="multipart/form-data">
								<div class="difficulty col-3 mb-3 p-3">
									<label for="cat_no" class="col-12 text-start mb-1">카테고리</label>
									<select class="form-select" name="cat_no" id="cat_no">
										<option value="all">전체</option>
										<option value=1>동물</option>
										<option value=2>문화</option>
										<option value=3>사회</option>
										<option value=4>미디어</option>
										<option value=5>과학</option>
										<option value=6>정치</option>
									</select>
								</div>
								<div class="id_manager col-12 mb-3 p-3">
									<label for="id_manager" class="col-12 mb-1 text-start">작성자</label>
									<input type="text" name="id_manager" id="id_manager" class="form-control" value="${userId}" readonly>
								</div>
								<div class="n_title col-12 mb-3 p-3">
									<label for="n_title" class="col-12 mb-1 text-start">기사 제목</label>
									<input type="text" name="n_title" id="n_title" class="form-control">
								</div>
								<div class="n_content mb-3 col-12 mb-3 p-3">
									<label for="n_content" class="col-12 mb-1 text-start">기사 내용</label>
									<textarea name="n_content" id="n_content" class="form-control" placeholder="기사 내용"></textarea>
								</div>
								<div class="news_img mb-3 col-3 p-3">
									<label for="news_img" class="col-12 mb-1 text-start">뉴스 이미지</label>
									<input type="file" name="file" id="file" class="col-12">
								</div>
								<div class="calendar d-flex justify-content-between mb-5 p-3">
									<button class="btn btn-white-back btn-hover-third" type="button" id="write">등록</button>
									<button class="btn btn-white-back btn-hover-third" type="reset">취소</button>
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