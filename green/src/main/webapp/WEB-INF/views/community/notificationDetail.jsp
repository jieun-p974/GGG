<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="../../../resources/styles/notification.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/resources/styles/font.css">
<script type="text/javascript">
   function cancleWrite() {
      location.href = "notificationList.do"
   }
</script>
<title>공지 확인</title>
</head>
<body>
   <c:if test="${sessionScope.userType == 1 }"> 
      <%@include file="../layouts/header.jsp"%>
   </c:if>
   <c:if test="${sessionScope.userType == 2}">
      <%@include file="../layouts/adminHeader.jsp"%>
   </c:if>
<section class="pricing position-relative overflow-hidden">
   <div class="container position-relative">
      <div class="row">
         <div
            class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
            <h2 class="text-black mb-0 mt-5 mb-3" style="font-size:2rem;text-align:left">📢공지 확인</h2>
         </div>
      </div>
      <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
         <div class="card border-0 shadow">
            <div class="card-body">
               <div class="overflow-hidden position-relative mx-auto ">
                  <div class="col-12 p-3 pb-0 text-start">
                     <p>공지 제목 : ${noti.ann_title}</p>
                  </div>
                  <div class="col-12 p-3 pb-0 text-start">
                     <p>작성자 : ${noti.id}</p>
                  </div>
                  <div class="col-12 mb-3 p-3 pb-0 text-start">
                     <p>작성일 : ${noti.ann_date}</p>
                  </div>
                  <div class="col-12 mb-3 p-3 text-start">
                     <p>[공지 내용]</p>
                     <pre>${noti.ann_content}</pre>
                  </div>
               </div>
            </div>
            <c:if test="${sessionScope.userType == 1}">
               <div class="d-flex justify-content-between p-3">
                        <div></div>
                        <a href="/community/notificationListUser.do" class="btn btn-white-back btn-hover-third">목록보기</a>
                     </div>
             </c:if>
             <c:if test="${sessionScope.userType == 2}">
                <div class="d-flex justify-content-between p-3">
                        <div></div>
                        <a href="/community/notificationList.do" class="btn btn-white-back btn-hover-third">목록보기</a>
                     </div>
             </c:if>
         </div>
      </div>
   </div>
</section>
<%@include file="../layouts/footer.jsp"%>
</body>
</html>