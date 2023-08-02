<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/cardRegist.css">
<title>간편결제 카드등록</title>
</head>
<body>
	<div class="container">
		<div class="card">
			<h1>간편결제 카드등록</h1>

			<button class="registBtn">등록</button>

			<div class="card_info">
				<div class="cardnoSec">
					<h3>카드번호</h3>
					<input type="text" name="cardno" class="cardno"
						placeholder=" 0000 - 0000 - 0000 - 0000">
				</div>

				<div class="exdateSec">
					<h3>유효기간</h3>
					<input type="month" name="exdate" class="exdate">
				</div>

				<div class="passSec">
					<h3>비밀번호 확인</h3>
					<input type="text" name="password" class="password"
						placeholder="카드비밀번호 앞 2자리">
				</div>

				<div class="cvcSec">
					<h3>CVC코드</h3>
					<input type="text" name="cvcnum" class="cvcnum"
						placeholder="카드 뒷면 3자리">
				</div>

				<div class="idnumSec">
					<h3 class="idnumTitle">
						소유자 생년월일
						</h>
						<input type="text" name="idnum" class="idnum"
							placeholder="주민번호 앞 6자리 또는 사업자번호">
				</div>

			</div>

		</div>
	</div>
</body>
</html>