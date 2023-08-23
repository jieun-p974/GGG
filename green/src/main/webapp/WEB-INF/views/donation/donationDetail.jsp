<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<link href="../../../resources/styles/donationGak.css" rel="stylesheet" type="text/css">
<!-- 오늘 날짜 -->
<jsp:useBean id="now" class="java.util.Date" />

<title>Insert title here</title>
</head>_

<body>
   <%@include file="../layouts/header.jsp"%>
   <section class="service position-relative overflow-hidden">
      <div class="container position-relative">
         <div class="row">
            <div
               class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
               <h2 class="text-white mb-0">용기 있는 행동에 힘을 보태고 싶습니다.</h2>
            </div>
         </div>
         <div class="row d-flex flex-wrap justify-content-center step-row">
            <div
               class="col-xxl-8 col-xl-8 col-lg-8 col-md-6 col-sm-6 col-12 text-center">
               <div class="d-flex justify-content-between mb-5">  
                     <a href="" class="btn btn-warning btn-hover-secondery section-btn">모금함   소개</a> 
                     <fmt:formatDate value="${now}" pattern="yyyyMMdd" var="nowDate" />  
                      <fmt:formatDate var="don_start_date" value="${dona.don_start_date}" pattern="yyyyMMdd"/>
                      <fmt:formatDate var="don_end_date" value="${dona.don_end_date}" pattern="yyyyMMdd"/>
                     <c:if test="${don_start_date<nowDate && don_end_date>nowDate}">
                     <a href="goDonation.do?id=${userId}&don_no=${dona.don_no}" class="btn btn-warning btn-hover-secondery section-btn">기부하기</a>
                     </c:if>
                     </div>
               <div class="card">
                  <div class="card-body">
                     <div
                        class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
                        <div class="pross">
                           <div class="barUpper">
                              <!-- 포인트 퍼센트 -->
                              <fmt:formatNumber type="percent"
                                 value="${dona.don_point_sum/dona.don_goal}" var="percent"
                                 pattern="0%" />
                              <p class="nowPer">${percent}</p>
                              <!-- 디데이 계산 -->
                              <fmt:parseNumber value="${now.time / (1000*60*60*24)}"
                                 integerOnly="true" var="nowfmtTime" scope="request" />
                              <fmt:parseNumber
                                 value="${dona.don_end_date.time / (1000*60*60*24)}"
                                 integerOnly="true" var="dbDtParse" scope="request" />
                           <c:choose>
                           <c:when test="${dbDtParse - nowfmtTime + 1 >=0}">
                              <div class="d_day">D - ${dbDtParse - nowfmtTime + 1}</div>
                              </div>
                           </c:when>
                           <c:otherwise>
                           <div class="d_day">종료</div>
                              </div>
                           </c:otherwise>
                           </c:choose>
                           <!-- 프로그레스바 -->
                           <div class="bars">
                              <progress id=progress max=100 min=0
                                 value="${dona.don_point_sum/dona.don_goal*100}"></progress>
                           </div>
                           <div class="barDown">
                              <div class="donadate">${dona.don_start_date}~
                                 ${dona.don_end_date}까지</div>
                              <div class="nowpoint">${dona.don_point_sum }/
                                 ${dona.don_goal } Point</div>
                           </div>
                        </div>
                     </div>
                     <h3 class="fs-4 text-black" value="${dona.don_name }">${dona.don_ex}</h3>
                     <img class="img-fluid" src="/resources/imgs/donaImg/${dona.d_img1_addr}" alt="">
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   <%@include file="../layouts/footer.jsp"%>
</body>
</html>