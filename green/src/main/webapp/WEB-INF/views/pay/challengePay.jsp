<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
   crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
<link rel="stylesheet" href="https://allyoucan.cloud/cdn/icofont/1.0.1/icofont.css"
   integrity="sha384-jbCTJB16Q17718YM9U22iJkhuGbS0Gd2LjaWb4YJEZToOPmnKDjySVa323U+W7Fv"
   crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
   integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
   crossorigin="anonymous"></script>
<link rel="stylesheet" href="/resources/styles/font.css">
<style type="text/css">
.payMethod {
   margin: 10px;
   padding: 10px;
   text-align: center;
   text-transform: uppercase;
   transition: 0.5s;
   background-size: 200% auto;
   color: white;
   background-image: linear-gradient(to right, #f6d365 0%, #fda085 51%, #f6d365 100%);
   box-shadow: 0 0 20px #eee;
   border-radius: 10px;
}
.method{
   display: grid;
   grid-template-columns: 1fr 1fr 1fr;
}
.bg-gray{
   background-color: #F1F1F5;
   border-radius: 15px;
}
</style>

<title>도전권 결제</title>
</head>
<body>
   <%@include file="../layouts/header.jsp"%>
   <section class="service position-relative overflow-hidden">
      <div class="container position-relative">
         <div class="row">
            <div class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
               <h2 class="text-black mt-5 mb-3">결제 페이지</h2>
            </div>
         </div>
      <form class="jjj" id="jjj" method="post">
       	<input type="hidden" name="id" value="${userId}" />

         <div class="mem_info">
            <h4>결제자</h4>
            <h6>${userName}(${userTel})</h6>
         </div>

         <div class="kind mt-4">
            <h4 class="txt">결제권 종류</h4>
            <select name="dogeon_no" id="dogeon_no">
               <option name="dogeon_name" value="1">3회 도전권 (3,000원)</option>
               <option name="dogeon_name" value="2">7회 도전권 (5,000원)</option>
               <option name="dogeon_name" value="3">무제한 도전권 (10,000원)</option>
            </select>
         </div>

         <div class="pay_method mt-4">
            <h4>결제수단</h4><!-- pay_method_no -->
            <div class="selecting">
               <div class="accordion" id="accordionExample">
                  <div class="accordion-item">
                     <h2 class="accordion-header " id="headingOne">
                        <button class="accordion-button collapsed" type="button"
                           data-bs-toggle="collapse" data-bs-target="#collapseOne"
                           aria-expanded="false" aria-controls="collapseOne">간편 계좌</button>
                     </h2>
                     <div id="collapseOne" class="accordion-collapse collapse"
                        aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                           <div class="accounts">
                              <div class="method">
                                 <c:forEach items="${list}" var="payb">
                                    <a class="">
                                    <div class="payMethod">
                                       <p hidden="hidden">${payb.mem_acc_no}</p>
                                       <p class="mt-2 mb-5 text-white fw-bold">${payb.bank}</p>
                                       <p class="text-white fw-bold">${payb.acc_num}</p>
                                       </div>
                                    </a>
                                 </c:forEach>
                              </div>
                              <div class="d-flex justify-content-between">
                                 <div></div>
                                 <a class="btn btn-white-back btn-hover-third" href="../member/accountRegist.do?userId=${userId}">간편계좌 추가 등록</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="accordion-item">
                     <h2 class="accordion-header" id="headingTwo">
                        <button class="accordion-button collapsed" type="button"
                           data-bs-toggle="collapse" data-bs-target="#collapseTwo"
                           aria-expanded="false" aria-controls="collapseTwo">간편 카드</button>
                     </h2>
                     <div id="collapseTwo" class="accordion-collapse collapse"
                        aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                           <div class="cards">
                           <div class="method">
                              <c:forEach items="${list2}" var="payc">
                                 <a class="">
                                 <div class="payMethod">
                                    <p hidden="hidden">${payc.mem_card_no}</p>
                                    <p class="mt-2 mb-5 text-white fw-bold">${payc.card_company}</p>
                                    <p class="text-white fw-bold">${payc.card_num}</p>
                                    <p class="text-white fw-bold">${payc.expire_date}</p>
                                    </div>
                                 </a>
                              </c:forEach>
                              </div>
                              <div class="d-flex justify-content-between">
                                 <div></div>
                                 <a class="btn btn-white-back btn-hover-third" href="../member/cardRegist.do?userId=${userId}">간편카드 추가등록</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="mt-3 m-0 row col-12">
                  <button class="bg-gray p-4" id="aBtn" onclick="accGo()"name="pay_meth_no" value="1">일반 결제</button> 
                  <button class="mt-3 bg-gray p-4" id="cBtn" onclick="cardGo()" name="pay_meth_no" value="2">일반 카드</button>
               </div>

            </div>
         </div>
      </form>
      <label>※ 공지: 챌린지 기간은 결제일로부터 30일 까지 입니다.</label>
      </div>
   </section>
   <%@include file="../layouts/footer.jsp"%>
   <script type="text/javascript">
   $(function(){
	   $("#cBtn").on("click",function(){
		  $("#jjj").attr("action","card.do").submit();
	   });
	   
	   $("#aBtn").on("click",function(){
			  $("#jjj").attr("action","account.do").submit();
		   });
   });
   </script>
</body>
</html>