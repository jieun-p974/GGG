<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:if test="${userAddr == null }">
	<script>
		alert("주소 정보 입력 후 이용 가능 합니다. \n\n * 회원정보를 수정했는데도 접속이 안될 경우 재로그인 해주세요." );
		location.href = "../../member/mypage.do?id=${userId}";
	</script>
</c:if>
<c:if test="${userTel == null }">
	<script>
		alert("연락처 정보 입력 후 이용 가능 합니다. \n\n * 회원정보를 수정했는데도 접속이 안될 경우 재로그인 해주세요.");
		location.href = "../../member/mypage.do?id=${userId}";
	</script>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="../../../resources/styles/vendor/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/resources/styles/font.css">
<link rel="stylesheet" href="/resources/styles/signup.css">		
<title>🌏my도감 | 굿즈신청</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	int do_no = Integer.parseInt(request.getParameter("do_no"));
	System.out.println("jsp" + do_no);
	%>
	<%@include file="../layouts/header.jsp"%>
	<section class="pricing position-relative mt-5">
	
		<div class="container position-relative mt-5"></div>
		<div class="container position-relative mt-5" style="width: 70%;">
			<h2 class="mb-5"style="font-size:2rem;text-align:left">🐾만렙 달성 기념으로 굿즈를 보내드려요💚</h2>
			<form action="goodsSinchung.do" method="post">
				<input name="do_no" hidden="hidden" value="<%=do_no%>">
				<input name="id"  hidden="hidden"  value="${userId}">
			<div class="d-flex text-align-center me-5 mb-1">
				<h3 class="mb-3 me-5">원하시는 굿즈를 하나 골라주세요.</h3>
				<a class="btn btn-white-back btn-hover-third"
					style="cursor: pointer" id="okbtn" onclick="sinchung()" type="submit">신청</a>
			</div>
		</form>
				<h6 class="text-warning mb-5"> * 하단의 이미지는 참고용입니다. 실제 굿즈는 만렙 달성 캐릭터로 제작됩니다.</h6>
			<div class="d-flex text-align-center me-5 mb-5">
				<input class="radios me-3" type="radio" name="goods" id="keyring" />
				<label for="keyring"><img class="me-5"
					src="../resources/imgs/dogam/goods1.png" /> </label> <input
					class="radios me-3 ms-5" type="radio" name="goods" id="notepen" />
				<label for="notepen"><img
					src="../resources/imgs/dogam/goods2.png" /> </label>
			</div>
			<div class="d-flex text-align-center me-5 mb-5">
				<input class="radios me-3" type="radio" name="goods" id="cup" /> <label
					for="cup"><img class="me-5"
					src="../resources/imgs/dogam/goods3.png" /> </label> <input
					class="radios me-3 ms-5" type="radio" name="goods" id="bag" /> <label
					for="bag"><img src="../resources/imgs/dogam/goods4.png" />
				</label>
			</div>
			<div class="container position-relative mt-5" style="height: 70px;"></div>
			<img class="mt-5" style='width: 80%;'
				src="../resources/imgs/thankyou.png" onclick="location.href='../dogam/myDogam.do?id=${userId}'"/>

		</div> 
	</section>
	<%@include file="../layouts/footer.jsp"%>

	<script type="text/javascript">
		window.onload = function() {
			document.getElementById('okbtn').onclick = sinchung;
		}

		function sinchung() {

			if ($("input[type=radio][name=goods]:checked").is(':checked')) {
				//alert('굿즈 신청이 완료되었습니다!');
				location.href="/dogam/goodsSinchung.do?id=${userId}&do_no=<%=do_no%>";
				
			} else {
				alert('굿즈를 선택해주세요.');
			}
			
			
		}
		
		
			
	</script>
</body>
</html>