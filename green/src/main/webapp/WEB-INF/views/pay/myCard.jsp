<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="../../../resources/styles/cardRegist.css">
<title>간편결제 카드등록</title>
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
	<div class="container">
		<%@include file="../layouts/header.jsp"%>
		<form method="post" action="cardSave.do" name="cardInput"
			id="cardInput">

			<div class="card">
				<h1>간편결제 카드등록</h1>

				<input type="hidden" name="id" value="${userId}">

				<div class="card_info">
					<div class="cardnoSec">
						<h3>카드번호</h3>
						<input type="text" name="card_num" id="cardno" class="cardno"
							value="${memCard.card_num}" minlength="19">

						<div class="company">
							<h3>카드사</h3>
							<select name=card_company id="card_company" class="card_company">
								<option value="" selected>-- 선택 --</option>
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
					</div>

					<div class="exdateSec">
						<h3>유효기간</h3>
						<input type="month" name="expire_date" id="exdate" class="exdate">
						
					</div>

					<div class="passSec">
						<h3>비밀번호 확인</h3>
						<input type="text" name="pass_two" id="password" class="password"
							placeholder="카드비밀번호 앞 2자리" minlength="2">
					</div>

					<div class="cvcSec">
						<h3>CVC코드</h3>
						<input type="text" name="CVC" id="cvcnum" class="cvcnum"
							placeholder="카드 뒷면 3자리" minlength="3">
					</div>
					<button class="registBtn" id="registBtn" type="submit">등록</button>
				</div>

			</div>
		</form>
	</div>
</body>
</html>