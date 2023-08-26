<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:if test="${userId == null }">
   <script>
      alert("로그인 하신 후 이용 가능합니다.");
      location.href = "../../index.jsp";
      
     
   </script>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link href="../../../resources/styles/donation.css" rel="stylesheet"
   type="text/css">
<link rel="stylesheet" href="/resources/styles/font.css">
<script type="text/javascript">
var msg= "<c:out value='${msg}' />"
		 var url= "<c:out value='${url}' />"

	 if(msg.length >0 && url.length >0){
	  		
	 alert(msg);
	 location.href=url;
	 }
</script>
<title>🌏my도감</title>
</head>
<body>
   <%@include file="../layouts/header.jsp"%>
   <section class="pricing position-relative">
      <div class="container position-relative">
         <div class="row">
            <div
               class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
               <h3 class="text-black mt-5 mb-5 text-center">🌏 ${userName}님의
                  캐릭터 목록입니다 🌏</h3>

               <a class="btn btn-warning btn-hover-secondery section-btn"
                  href="../dogam/dogam.do">전체도감</a>
            </div>
         </div>
         <div class="gibu_list">
            <c:forEach items="${mydogam}" var="mydogam">
               <c:set var="nochoice" value="${mydogam.do_choice_YN}" />        
               <c:if test="${nochoice eq 'N'}">
               <c:set var="nCount" value="${nCount+1}"/>
               </c:if>
               <div class="gibu">
                  <c:if test="${mydogam.do_choice_YN eq 'Y'}">
                     <div class="card bg-primary">
                        <h4 class="text-center mt-3">대표캐릭터</h4>
                  </c:if>
                  <c:if test="${mydogam.do_choice_YN ne 'Y' && mydogam.nowLv ne 3}">
                     <div class="card">
                        <h4 class="text-center text-white mt-3">캐릭터</h4>
                  </c:if>
                  <c:if test="${mydogam.do_choice_YN ne 'Y' && mydogam.nowLv eq 3}">
                     <div class="card bg-none">
                        <h4 class="text-center text-white mt-3">만렙달성</h4>
                  </c:if>
                  <div class="card-body" style="height: 420px;">
                     <div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
                        <a href="../dogam/myDogamDetail.do?do_no=${mydogam.do_no}&id=${userId}">
                           <div class="d_list_img">
                              <img class="d_img" alt="도감 사진"
                                 src="../resources/imgs/dogam/${mydogam.lv_img}">
                           </div>
                           <h4 class="d_list_title mb-3">${mydogam.do_title}</h4>
                           <c:if test="${mydogam.nowLv ne 3}">
                              <p class="fs-4">Lv ${mydogam.nowLv}</p>
                           </c:if>
                           <c:if test="${mydogam.nowLv eq 3 && mydogam.do_name ne null}">
<<<<<<< HEAD
                              <p class="fs-6">${userId}님의   ${mydogam.do_name}</p>
                           </c:if>
                           <c:if test="${mydogam.nowLv eq 3 && mydogam.goods_no eq 1}">
                           <p class="fs-7"> 만렙굿즈 신청완료💚 </p>
                           </c:if>
                            <c:if test="${mydogam.nowLv eq 3 && mydogam.do_name eq null}">
                              <p>  ${mydogam.do_title}가 모두 자랐어요. <br/>
                                       멋진 이름을 지어주세요.
=======
                              <p>${userId}님의
                                 ${mydogam.do_name}는<br /> 모두 자랐어요!
>>>>>>> refs/remotes/origin/seul
                              </p>
                           </c:if>
                            <c:if test="${mydogam.nowLv eq 3 && mydogam.do_name eq null}">
                              <p>  ${mydogam.do_title}가 모두 자랐어요. <br/>
                                  	멋진 이름을 지어주세요.
                              </p>
                           </c:if>
                        </a>
                     </div>
                  </div>
               </div>
            </div>
         </c:forEach>
         </div>
<<<<<<< HEAD
      	<c:if test="${nCount eq count}">
=======
      
         <c:if test="${nCount eq count}">
<<<<<<< HEAD
>>>>>>> refs/remotes/origin/gaeun
=======
>>>>>>> refs/remotes/origin/seul
         <div class="pickme align-items-center mt-3" >
               <img src="../resources/imgs/pickme.png">
            <div class="mb-3">
               <p class="pt-5 mt-5 ms-4 mb-4 fs-3 fw-bold">설정된 대표캐릭터가 없습니다!</p>
               <p class="ms-4 fs-5">대표 캐릭터를 설정해야 기부시 경험치가 부여됩니다.</p>
            </div>
         </div>
        </c:if>
      
      <c:if test="${res eq 2}">
      <div class="pickme mt-5 align-items-center" >
               <img src="../resources/imgs/pickme.png" style="width:60%;">
            <div class="mb-5">
               <p class="pt-5 mt-5 ms-4 mb-4 fs-3 fw-bold">나의 캐릭터가 없습니다!</p>
               <p class="ms-4 fs-5">대표 캐릭터를 설정해야 기부시 경험치가 부여됩니다.</p>
            </div>
         </div>
      </c:if>
      </div>
   </section>
   <%@include file="../layouts/footer.jsp"%>
</body>
</html>