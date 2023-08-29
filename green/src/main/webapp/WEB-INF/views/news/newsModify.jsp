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
<script type="text/javascript">
	$(function() {
		var checkCate = "${news.cat_no}";
		$("#cat_no").val(checkCate);
	});
</script>
<link rel="stylesheet" href="/resources/styles/font.css">
<title>뉴스 수정</title>
</head>
<body>
	<%@include file="../layouts/adminHeader.jsp"%>
	<section class="pricing position-relative overflow-hidden">
		<div class="container position-relative">
			<div class="row">
				<div class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
					<h2 class="text-black mb-0 mt-5 mb-3" style="font-size:2rem;text-align:left">📰관리자 뉴스 수정 페이지</h2>
				</div>
			</div>
			<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
				<div class="card border-0 shadow">
					<div class="card-body">
						<div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
							<form action="modifyNews.do" method="post" class="row" name="form" id="form" enctype="multipart/form-data">
								<input name="news_no" type="hidden" value="${news.news_no}" />
								<div class="cat_no col-3 mb-3 p-3">
									<label for="cat_no" class="col-12 text-start mb-1">카테고리</label>
									<select class="form-select" name="cat_no" id="cat_no" value="${news.cat_no}">
										<option value="all">전체</option>
										<option value=1>동물</option>
										<option value=2>문화</option>
										<option value=3>사회</option>
										<option value=4>미디어</option>
										<option value=5>과학</option>
										<option value=6>정치</option>
									</select>
								</div>
								<div class="id_manager12 col-12 mb-3 p-3">
									<label for="id_manager" class="col-12 mb-1 text-start">작성자</label>
									<input type="text" name="id_manager" id="id_manager" value="${news.id_manager}" class="form-control" readonly="readonly">
								</div>
								<div class="n_title col-12 mb-3 p-3">
									<label for="n_title" class="col-12 mb-1 text-start">기사 제목</label>
									<input type="text" name="n_title" id="n_title" value="${news.n_title}" class="form-control" required="">
								</div>
								<div class="n_content col-12 mb-3 p-3">
									<label for="n_content" class="col-12 mb-1 text-start">기사 내용</label>
									<textarea name="n_content" id="n_content" class="form-control">${news.n_content}</textarea>
								</div>
								<div class="n_img mb-3 col-3 p-3">
									<label for="n_img" class="col-12 mb-1 text-start">뉴스 썸네일</label>
									<input type="file" name="file" id="file" class="col-12" value="/resources/imgs/newsImg/${news.n_img1_addr}">
								</div>
								<div class="d-flex justify-content-between mb-5 p-3">
									<button class="btn btn-white-back btn-hover-third" type="submit">등록</button>
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