<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/card.css">
<title>카드결제</title>
</head>
<body>
<div class="container">
    <p class="title">카드 결제 정보 입력</p>

    <div class="card_info">
      <p class="cardnum">카드번호</p>
      <div class="card_num">
        <input type="text" placeholder="0000" style="border:none" class="can1"></input>
        -
        <input type="text" placeholder="0000" style="border:none" class="can2"></input>
        -
        <input type="text" placeholder="0000" style="border:none" class="can3"></input>
        -
        <input type="text" placeholder="0000" style="border:none" class="can4"></input>
      </div>
      <div class="vaildation">
        <div class="gigan">
          <p class="txt">유효기간</p>
          <input type="text" placeholder="MMYY" style="border: none" class="gigan_input">
        </div>
        <div class="cvc">
          <p class="txt">CVC</p>
          <input type="text" placeholder="카드뒷면 3자리 숫자" style="border:none" class="cvc_input">
        </div>
      </div>
      <div class="pass">
        <p class="txt">카드 비밀번호</p>
        <input type="text" placeholder="앞 2자리 숫자" style="border:none" class="pass_input">
      </div>

      <div class="personal_info">
        <p class="txt">주민번호 앞6자리 또는 사업자번호</p>
        <input type="text" style="border:none" class="personal_input">
      </div>
    </div>

    <div class="btn">
      <button class="payBtn">도전권 카드 결제</button>
    </div>
  </div>

</body>
</html>