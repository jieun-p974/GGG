<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/donation.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>Insert title here</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
<div class="main">
      <p class="title">열심히 모은 포인트를 지구를 위해 사용해 보세요</p>
      <div class="gibu_list">
        <div class="gibu">
          <div class="rectangel">
            <a href="donationDetail.do">
            <img class="gibu_img" src="../../../resources/imgs/logo.png" /></a>
          </div>
          <div class="dona_text">
            <p class="dona">GGG</p>
            <div class="bar">
              <div class="totalBar1"></div>
              <div class="nowBar1"></div>
            </div>
            <div class="points">
              <p class="percent">80%</p>
              <p class="point">843216P</p>
            </div>
          </div>
        </div>

        <div class="gibu">
          <div class="rectangel">
            <img class="gibu_img" src="" />
          </div>
          <div class="dona_text">
            <p class="dona">그린피스</p>
          <div class="bar">
            <div class="totalBar2"></div>
            <div class="nowBar2"></div>
          </div>
          <div class="points">
            <p class="percent">22%</p>
          <p class="point">11242P</p>
          </div>
          </div>
        </div>
        <div class="gibu">
          <div class="rectangel">
            <img class="gibu_img" src="" />
          </div>
          <div class="dona_text">
            <p class="dona">시셰퍼드</p>
          <div class="bar">
            <div class="totalBar3"></div>
            <div class="nowBar3"></div>
          </div>
          <div class="points">
            <p class="percent">76%</p>
          <p class="point">44342P</p>
          </div>
          </div>
        </div>
        <div class="gibu">
          <div class="rectangel">
            <img class="gibu_img" src="" />
          </div>
          <div class="dona_text">
            <p class="dona">세계자연기금(WWF)</p>
          <div class="bar">
            <div class="totalBar4"></div>
            <div class="nowBar4"></div>
          </div>
          <div class="points">
            <p class="percent">13%</p>
          <p class="point">1122P</p>
          </div>
          </div>
        </div>
      </div>
    </div>
    <div class="dona_now">
      <div class="btn_txt">
        <button class="now" style="border:none;">참여현황</button>
        <p class="nowTxt">여러분의 참여로 이만큼 모였어요</p>
      </div>
      <div class="dona_now_txt">
        <p class="txt">총 기부 포인트 899,922P</p>
        <p class="txt">기부 참여 인원 11,521명</p>
      </div>
    </div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>