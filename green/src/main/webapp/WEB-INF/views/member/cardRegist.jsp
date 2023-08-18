<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../../../resources/styles/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../../../resources/styles/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../../../resources/styles/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="../../../resources/styles/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<link rel="stylesheet" href="../../../resources/styles/signup.css">
<link rel="stylesheet" href="../../../resources/styles/util.css">
<!--===============================================================================================-->
<script
	src="../../../resources/styles/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="../../../resources/styles/vendor/bootstrap/js/popper.js"></script>
<script
	src="../../../resources/styles/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="../../../resources/styles/vendor/select2/select2.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!--===============================================================================================-->

<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>결제수단관리 | 카드등록</title>
</head>
<script type="text/javascript">
window.onload = function() {
	document.getElementById('registBtn').onclick = check;
}
function check() {
	if ($(".cardno").val() == "") {
		alert("카드번호를 입력해주세요.");
		$(".cardno").focus();
		return false;
	}
	if ($(".card_company").val() == "") {
		alert("카드사를 선택해주세요.");
		$(".card_company").focus();
		return false;
	}
	if ($(".exdate").val() == "") {
		alert("유효기간을 선택해주세요.");
		$(".exdate").focus();
		return false;
	}
	if ($(".cvcnum").val() == "") {
		alert("CVC코드를 입력해주세요.");
		$(".cvcnum").focus();
		return false;
	}
	if ($(".password").val() == "") {
		alert("비밀번호 앞 2자리를 입력해주세요.");
		$(".password").focus();
		return false;
	}
	document.form.submit();
	alert('결제수단이 추가되었습니다.');
}

	
</script>

<body>
	<div class="limiter">
		<%@include file="../layouts/header.jsp"%>
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" name="form"
					action="cardSave.do"  method="post">
					<input type="hidden" name="id" value="${userId}"/>
					<h4 class="mb-5">간편결제 계좌등록</h4>
					<label class="d-block">
					<div class="d-flex position-relative flex-wrap">
							<p class="col-12 text-start ps-0">카드사</p>
							<select name=card_company id="card_company" class="card_company mt-2 mb-3 me-3" style="height:40px;">
								<option value="" selected>-카드사 선택 -</option>
								<option value='KB국민카드'>KB국민카드</option>
								<option value='삼성카드'>삼성카드</option>
								<option value='롯데카드'>롯데카드</option>
								<option value='우리카드'>우리카드</option>
								<option value='신한카드'>신한카드</option>
								<option value='현대카드'>현대카드</option>
								<option value='BC바로카드'>BC바로카드</option>
								<option value='NH농협카드'>NH농협카드</option>
								<option value='IBK기업카드'>IBK기업카드</option>
								<option value='하나카드'>하나카드</option>
							</select>
						</div>
						
						<div>
						<p>카드번호</p>
						<input type="text" name="card_num" id="cardno" class="input100 mt-2 mb-3" style="width:410px;"
							placeholder="하이픈(-) 포함해서 기입해주세요." minlength="19">
						</div>
					</label>
					
					<label class="d-block">
					<div class="d-flex position-relative">
					<div class="exdateSec">
						<p>유효기간</p>
						<input type="month" name="expire_date" id="exdate" class="input100 mt-2 mb-3 me-2" style="width:200px;">
					</div>
					
					<div class="passSec">
						<p>비밀번호 확인</p>
						<input type="text" name="pass_two" id="password" class="input100 mt-2 mb-3 me-2" style="width:180px;"
							placeholder="앞 2자리" minlength="2">
					</div>
					
										<div class="cvcSec">
						<p>CVC코드</p>
						<input type="text" name="CVC" id="cvcnum" class="input100 mt-2 mb-3 me-2" style="width:180px;"
							placeholder="CVC코드" minlength="3">
					</div>
					</div>
					</label>
						<div class="container-login100-form-btn">
						<button class="login100-form-btn" id="registBtn">등록</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<%@include file="../layouts/footer.jsp"%>
</body>
</html>