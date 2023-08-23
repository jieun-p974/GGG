<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/accountInput.css">
<title>계좌 정보 입력</title>
</head>
<body>
	<div class="container">
		<p class="title">계좌 결제 정보 입력</p>
		<div class="inputs">
			<div class="payKind">
				<select name="kind" id="kind">
					<option value="personal">개인</option>
					<option value="company">법인</option>
				</select>
			</div>
			<div class="personalInfo">
				<p class="text">주민번호(법인 담당자)</p>
				<div class="personal_input">
					<input type="text" class="personal_front" />-
					<input type="text" class="personal_last" />
				</div>
			</div>
			<div class="accounts">
				<p class="account_text">계좌 번호</p>
				<select name="banks" id="banks">
					<option value="nh">NH 농협은행</option>
					<option value="ibk">IBK 기업은행</option>
					<option value="kb">국민은행</option>
					<option value="uri">우리은행</option>
					<option value="sc">SC 제일은행</option>
					<option value="hana">KEB 하나은행</option>
					<option value="city">씨티은행</option>
					<option value="shinhan">신한은행</option>
					<option value="bnk_k">BNK 경남은행</option>
					<option value="bnk_b">BNK 부산은행</option>
					<option value="kwang">광주은행</option>
					<option value="junbuk">전북은행</option>
					<option value="deagu">대구은행</option>
					<option value="kakao">카카오뱅크</option>
					<option value="kbank">Kbank</option>
				</select> <input type="text" name="account_num" id="account_num" />
			</div>
			<div class="cash_recipt">
				<div class="checking">
					<p class="text" style="margin-right: 3%;">현금영수증</p>
					<input type="checkbox" name="not_shin" id="not_shin" checked>신청
					<input type="checkbox" name="shin" id="shin">미신청
				</div>
				<input type="text" name="recipt_num" id="recipt_num">
			</div>
			<div class="btn">
				<button class="payBtn">도전권 계좌 결제</button>
			</div>
		</div>
	</div>
</body>
</html>