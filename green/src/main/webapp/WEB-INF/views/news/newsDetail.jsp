<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/resources/styles/font.css">
<style type="text/css">
.img {
	width: 70%;
}
pre {
   width: 100%;
   white-space: pre-wrap;
   word-wrap: break-word;
 }
</style>
<title>뉴스 상세</title>
</head>
<body>
	<%@include file="../layouts/header.jsp"%>
	<section class="our-service position-relative overflow-hidden">
		<div class="container position-relative">
			<img src="/resources/imgs/our-service/our-service-background.svg"
				class="shape position-absolute zz">
			<div class="container position-relative">
				<div class="row justify-content-center mt-5">
					<div
						class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12">
						<div class="card position-relative shadow border-0 h-100">
							<div class="card-body p-5">
								<h3>제목 : ${news.n_title}</h3>
								<div class="animal_level_d pt-5 d-flex">
									<p class="writer m-0 p-0 me-5">작성자 : ${news.id_manager}</p>
									<p class="date m-0 p-0">작성일 : ${news.n_reg_date}</p>
								</div>
								<div
									class="card-action text-center pb-xxl-5 pb-xl-5 pb-lg-5 pb-md-4 pb-sm-4 pb-4 mt-5">
									<img src="/resources/imgs/newsImg/${news.n_img1_addr}" alt="사진"
										class="img">
									<pre class="content mt-5 text-start" style="line-height: 2rem">${news.n_content}</pre>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>