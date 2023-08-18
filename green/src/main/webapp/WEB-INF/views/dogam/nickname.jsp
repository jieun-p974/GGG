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
<script
	src="../../../resources/styles/vendor/bootstrap/js/bootstrap.min.js"></script>
<title>my도감 | 이름 지어주기</title>
</head>
<body>
<% 
	request.setCharacterEncoding("UTF-8");
	int do_no = Integer.parseInt(request.getParameter("do_no")); 
	System.out.println("jsp"+do_no);
%>

	<%@include file="../layouts/header.jsp"%>
	<section class="pricing position-relative">
		<div class="container position-relative">
			<p> 그동안 키워주셔서 감사해요. <br /> 성장을 마친 제게 멋진 이름을 지어주세요!</p>
			<form action="/dogam/givename.do" method="post">
				<input type="text" name="do_name">
				<input type="hidden" name="do_no" value="<%=do_no%>">
				<input type="hidden" name="id" value="${userId}">
				<button type="submit"> 확인 </button>
			</form>
			</div>
	</section>
</body>
</html>