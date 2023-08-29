<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="/resources/styles/font.css">
<title>Insert title here</title>
<script type="text/javascript">
var msg= "<c:out value='${msg}' />"
var url= "<c:out value='${url}' />"

if(msg.length >0 && url.length >0){
   
   alert(msg);
   location.href=url;
}
</script>
</head>
<body>
<%@include file="../layouts/header.jsp"%>
<section class="service position-relative overflow-hidden">
   <div class="container position-relative">
      <div class="row mt-5">
         <div
            class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
            <h2 class="text-black mb-0 mt-5 mb-3" style="font-size:2rem;text-align:left">📢기부하기</h2>
         </div>
      </div>
      <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
         <div class="card border-0 shadow">
            <div class="card-body">
               <div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
                  <form action="goDona.do" method="post" enctype="multipart/form-data" class="row col-12">
                     <div class="don_name col-12 mb-3 p-3">
                        <h4 class="info">${meminfo.name}님의 소중한 기부로 지구에 놀라운 변화가 일어납니다.</h4>
                        <input type="hidden" value="${meminfo.id}" name="id" id="id">
                        <input type="hidden" value="${don_no}" name="don_no" id="don_no">
                     </div>
                     <div class="don_goal col-12 mb-3 p-3">
                        <h4 class="info">보유 포인트 : ${meminfo.remainder_point} P</h4>
                        <p>(포인트는 최소 100p부터 10p단위로 사용 가능합니다.)</p>
                     </div>
                     <div class="don_summary col-12 mb-3 p-3">
                        <input type="number" name="don_point" step="10" id="don_point" min="100" max="${meminfo.remainder_point}" onchange="changePoint(${meminfo.remainder_point},100,10)"> P
                        <input type="checkbox" id="chk_use" onclick="chkPoint(${meminfo.remainder_point},100,10)"> 포인트 전체 사용
                        <p>( 남은 포인트 : ${meminfo.remainder_point}p)</p>
                     </div>
                     <div class="buttons d-flex justify-content-between mb-5 p-3">
                        <div></div>
                        <button class="btn btn-white-back btn-hover-third" type="submit">기부하기</button>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
<%@include file="../layouts/footer.jsp"%>
<script type="text/javascript">

   function chkPoint(pnt,min,unit) {
      //input값을 전체 마일리지로 설정 > minusPoint 
      //amt : 최초 결제 금액 / pnt : 사용가능,남은 포인트 / min : 사용 가능 최소 포인트 / unit : 사용단위
      
      var v_point = 0; //사용할 포인트 (input 입력값)

      if (document.getElementById("chk_use").checked) {
         if (pnt < min) //최소 사용 단위보다 작을 때
         {
            v_point = 0;
         } else {
            v_point = pnt - pnt % unit; //사용할 포인트 = 전체 마일리지 중 최소단위 이하 마일리지를 뺀 포인트
         }
      }
      document.getElementById("don_point").value = v_point; //input 값 설정
      changePoint(pnt,min,unit) ;
   }

   function changePoint(pnt,min,unit) {
      //input값을 불러옴 > left_pnt 변경 > 최종결제 변경
      // pnt : 사용가능,남은 포인트 / min : 사용 가능 최소 포인트 / unit : 사용단위
      var v_point = parseInt(document.getElementById("don_point").value); //사용할 포인트 (input 입력값)
      if (v_point > pnt) //입력값이 사용가능 포인트보다 클때
      {
         v_point = pnt;
         document.getElementById("don_point").value = v_point; //input 값 재설정
      }

      if (v_point < min) //최소 사용 단위보다 작을 때
      {
         alert("포인트를 올바르게 입력하세요");
         v_point = 0;
         document.getElementById("don_point").value = v_point; //input 값 재설정
      } else {
         v_point = v_point - v_point%unit; //사용할 포인트 = 사용할 마일리지 중 최소단위 이하 마일리지를 뺀 포인트
      }

      var v_left = document.getElementsByName("left_pnt"); //사용가능 마일리지, 남은 포인트 값 설정
      for (var i = 0; i < v_left.length; i++) {
         v_left[i].innerHTML = pnt-v_point; //= 전체 포인트 중에 사용할 포인트빼고 남은 포인트
      }
   
   }

</script>
</body>
</html>