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
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/dogamDetail.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>동물도감 | 상세보기</title>
</head>
<body>
<div class="container">
		<%@include file="../layouts/header.jsp"%>
		<c:forEach items="${list}" var="dogam">
		<div class="animal_explain">
		<input value="${dogam.do_no}" type="hidden"/>
      <h1 class="animal_title">멸종위기 동물 '${dogam.do_title}'을 소개합니다.</h1>
      <h3> 제 성장 과정이 궁금하세요?</h3>
	<div class="animal">
	
      <div class="animal_level">
      
        <img class="level_img1" src="/resources/imgs/dogam/${dogam.img1}">
        <img class="arrow1" src="../../../resources/imgs/arrow.png" />
        <a class=lv1>Lv.1</a>    
        <img class="level_img2" src="/resources/imgs/dogam/${dogam.img2}">
        <img class="arrow2" src="../../../resources/imgs/arrow.png" />
        <a class=lv2>Lv.2</a>
        <img class="level_img3" src="/resources/imgs/dogam/${dogam.img3}">
        <a class=lv3>Lv.3</a>
      </div>

    </div>

      <div class="animal_content">
       ${dogam.do_content}
      </div>
      <button class="dogamBtn" onclick="location.href='dogam.do'">도감보기</button>
      	<c:if test="${userId ne null}">
		<button class="getBtn">키우기</button>
		</c:if>
    </div>
    </c:forEach>
		</div>
</body>
</html>