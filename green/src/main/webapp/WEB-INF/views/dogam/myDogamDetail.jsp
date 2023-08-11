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
<link href="../../../resources/styles/myDogamDetail.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>my동물도감 | 상세보기</title>
</head>
<body>
<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		
		<div class="animal">
      <div class="animal_exp">
        <div class="exp_level">${detail.level_no}</div>
        <div class="exp_point">(430/1500P)</div>
        <div class="exp_bar"></div>
        <div class="exp_gage"></div>
        <div class="exp_now">${detail.level_no}</div>
        <div class="exp_end">성체</div>
      </div>

      <div class="animal_info">
        <img class="img" src="${detail.img1}" />
        <p class="name">${detail.do_title}</p>
       <!--  <button class="changeBtn">개명</button> -->
      </div>

      <div class="animal_level">
        <img class="level_img1" src="" />
        <img class="arrow1" src="../../../resources/imgs/arrow.png" />
        <img class="level_img2" src="" />
        <img class="arrow2" src="../../../resources/imgs/arrow.png" />
        <img class="level_img3" src="" />

      </div>

    </div>

    <div class="animal_explain">
      <h1 class="animal_title">멸종위기 동물 '${detail.do_title}'을 소개합니다.</h1>


      <div class="animal_content">
       ${detail.do_content}
      </div>
      <button class="dogamBtn" onclick="location.href='dogam.do'">도감보기</button>
    </div>
  
     
		</div>
		
</body>
</html>