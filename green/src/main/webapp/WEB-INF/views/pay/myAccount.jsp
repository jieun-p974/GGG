<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="../../../resources/styles/accountRegist.css">
<link rel="stylesheet" href="/resources/styles/font.css">
<title>간편결제 계좌등록</title>
</head>
<script type="text/javascript">
	/* 	window.onload = function() {
	 document.getElementById('registBtn').onclick = check;
	 }
	 function check() {

	 if ($(".bankinfo").val() == "") {
	 alert("은행을 선택해주세요.");
	 $(".bankinfo").focus();
	 return false;
	 }

	 if ($(".accountnum").val() == "") {
	 alert("계좌번호를 입력해주세요.");
	 $(".accountnum").focus();
	 return false;
	 }
	 document.form.submit();
	 alert('결제수단이 추가되었습니다.');
	
	 } */
</script>
<body>
	<div class="container">
		<%@include file="../layouts/header.jsp"%>
		<form method="post" action="accSave.do" name="accountInput" id="accountInput">
			<div class="account">
				<h1>간편결제 계좌</h1>
				<input type="hidden" name="id" value="${userId}">
				<div class="accountSec">
					<h3 class="idnumTitle">계좌정보</h3>
					<select class="bankinfo" name="bank">
						<option value="" selected>-- 선택 --</option>
						<option value='KB국민은행'>KB국민은행</option>
						<option value='신한은행'>신한은행</option>
						<option value='우리은행'>우리은행</option>
						<option value='하나은행'>하나은행</option>
						<option value='신한은행'>신한은행</option>
						<option value='SC제일은행'>SC제일은행</option>
						<option value='씨티은행'>씨티은행</option>
						<option value='산업은행'>씨티은행</option>
						<option value='NH농협은행'>씨티은행</option>
						<option value='수협은행'>씨티은행</option>
						<option value='케이뱅크'>케이뱅크</option>
						<option value='카카오뱅크'>카카오뱅크</option>
						<option value='토스뱅크'>토스뱅크</option>
					</select>
					<input type="text" name="acc_num" class="accountnum" placeholder="하이픈(-) 포함해서 기입해주세요." minlength="11">
					<button class="registBtn" id="registBtn" type="submit">결제</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>