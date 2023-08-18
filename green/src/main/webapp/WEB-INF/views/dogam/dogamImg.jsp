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
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/newsWrite.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">

<title>도감 사진추가</title>
</head>
<body>
<<<<<<< HEAD
<%@include file="../layouts/adminHeader.jsp"%>
<section class="pricing position-relative overflow-hidden">
	<div class="container position-relative">
		<div class="row">
			<div
				class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
				<h2 class="text-black mb-0 mt-5 mb-3">도감 사진 첨부 페이지</h2>
			</div>
		</div>
		<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
			<div class="card border-0 shadow">
				<div class="card-body">
					<div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
						<form action="saveImgDogam.do" method="post" id="dogamInput" enctype="multipart/form-data" class="row">
							<input name="do_no" type="hidden" value="${dogam.do_no}" />
							<div class="col-3 mb-3 p-3">		
								<label for="do_lev" class="col-12 mb-1 text-start">레벨</label> 
								<select name="do_lev" id="do_lev" class="form-select">
								<option value=1> 1 </option>
								<option value=2> 2 </option>
								<option value=3> 3 </option>
								</select>	
							</div>
							<div class="col-12 mb-3 p-3">
								<label for="do_name" class="col-12 mb-1 text-start">동물 이름</label> 
								<input class="form-control" type="text" id="do_title" value="${dogam.do_title}" readonly/>
							</div>
							
							<div class="col-12 mb-3 p-3">
								<label for="file" class="col-12 mb-1 text-start">레벨 이미지</label> 
								<input class="col-12" type="file" id="file" name="file"/>
							</div>
								
							<div class="buttons d-flex justify-content-between mb-5 p-3">
								<button class="btn btn-white-back btn-hover-third" type="reset">취소</button>
								<button class="btn btn-white-back btn-hover-third" id="write" type="submit">수정하기</button>
							</div>
						</form>
=======
	<div class="container" >
	<%-- 	<%@include file="../layouts/adminHeader.jsp"%> --%>
		<div class="newsWriting" style="top:500px;">
            <div class="title">도감 사진 첨부 페이지</div>
			<div class="writing">
				<form action="saveImgDogam.do" method="post" id="dogamInput" enctype="multipart/form-data">
				<input name="do_no" type="hidden" value="${dogam.do_no}" />
			
				<label for="do_name">동물 이름</label> 
					<input type="text" id="do_title" value="${dogam.do_title}" readonly/>
						
				<label for="do_lev">레벨</label> 
				<select name="do_lev" id="do_lev">
				<option value=1> 1 </option>
				<option value=2> 2 </option>
				<option value=3> 3 </option>
				</select>	
					<input type="file" id="file" name="file"/>
					<div class="buttons" style="margin-top:2%">
						<button type="reset">취소</button>
						<button id="write" type="submit">수정하기</button>
>>>>>>> refs/remotes/origin/gaeun
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<%@include file="../layouts/footer.jsp"%>
</body>
</html>