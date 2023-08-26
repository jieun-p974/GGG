<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="../../../resources/styles/vendor/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/resources/styles/font.css">
<link rel="stylesheet" href="/resources/styles/signup.css">

<title>🌏my도감 | 작명소</title>
</head>
<body>
<% 
   request.setCharacterEncoding("UTF-8");
   int do_no = Integer.parseInt(request.getParameter("do_no")); 
   System.out.println("jsp"+do_no);
%>
	<%@include file="../layouts/header.jsp"%>
	<section class="pricing position-relative mt-5">
	<div class="container position-relative mt-5" style="height:50px;"></div>
		<div class="container position-relative mt-5" style="width:70%;">
		 <h2 class="mb-5">그동안 키워주셔서 감사해요💚</h2> 
			<div class="d-flex text-align-center me-5 mb-5">
			<h3 class="mb-3">성장을 마친 제게 멋진 이름을 지어주세요!</h3>
			<form action="/dogam/givename.do" method="post">
				<div class="d-flex text-align-center ms-5 mt-1 ">
				<input class="input100 col-9" type="text" name="do_name">
				<input type="hidden" name="do_no" value="<%=do_no%>">
				<input type="hidden" name="id" value="${userId}">
				<button class="login100-form-btn col-3" type="submit"> 확인 </button>
				</div>
			</form>
			</div>
			<div class="container position-relative mt-5" style="height:70px;"></div>
			<img class="mt-5" style='width:80%;' src="../resources/imgs/thankyou.png" onclick="location.href='../dogam/myDogam.do?id=${userId}'"/> 
		</div>
		
		
		
	</section>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>