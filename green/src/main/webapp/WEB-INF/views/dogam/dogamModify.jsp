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
<link rel="stylesheet" href="/resources/styles/font.css">
<style type="text/css">
textarea{
   resize: vertical;
   height: 15rem;
}
</style>
<title>관리자 | 도감 관리</title>
</head>
<body>
<%@include file="../layouts/adminHeader.jsp"%>
	<section class="pricing position-relative overflow-hidden">
	<div class="container position-relative">
		<div class="row">
			<div
				class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
				<h2 class="text-black mb-0 mt-5 mb-3" style="font-size:2rem;text-align:left">🐾도감 수정 페이지</h2>
			</div>
		</div>
		<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
			<div class="card border-0 shadow">
				<div class="card-body">
					<div class="col-12 overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
						<form action="modifyDogam.do" method="post" id="dogamInput" enctype="multipart/form-data" class="row col-12">
							<input name="do_no" type="hidden" value="${dogam.do_no}" />
							<div class="col-12 mb-3 p-3">
								<label for="do_name" class="col-12 mb-1 text-start">동물 이름</label> 
								<input class="form-control" type="text" id="do_title" name="do_title" value="${dogam.do_title}"/>
							</div>
							<div class="col-12 mb-3 p-3">
								<label for="do_yoyak" class="col-12 mb-1 text-start">요약정보</label> 
								<input type="text" id="do_yoyak" name="do_yoyak" value="${dogam.do_yoyak}" class="form-control">
							</div>
							<div class="col-12 mb-3 p-3">		
								<label for="do_name" class="col-12 mb-1 text-start">동물 설명</label> 
								<textarea type="text" id="do_content" name="do_content" class="form-control">${dogam.do_content}</textarea>
							</div>
							<div class="col-12 mb-3 p-3 text-start">
								<label for="file2">사진첨부</label> 
								<input type="file" id="file2" name="file2"/>
							</div>
							
							<div class="buttons d-flex justify-content-between mb-5 p-3">
								<button class="btn btn-white-back btn-hover-third" type="reset">취소</button>
								<button class="btn btn-white-back btn-hover-third" id="write" type="submit">수정하기</button>
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