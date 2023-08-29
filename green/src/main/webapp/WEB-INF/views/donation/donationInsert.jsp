<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- jQuery UI CSS파일 -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<!-- jQuery 기본 js파일 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<!-- jQuery UI 라이브러리 js파일 -->
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script type="text/javascript">
   window.onload = function() {
      document.getElementById('adding').onclick = check;
   }
   function cancleInsert() {
      location.href = "adDonationList.do"
   }
   function check() {
      if (document.form.don_name.value == "") {
         alert("기부처 명을 입력하세요.")
         document.form.don_name.focus();
         return false;
      }

      if (document.form.don_start_date.value == "") {
         alert("기부처 시작일을 입력하세요.")
         document.form.don_start_date.focus();
         return false;
       }

      if (document.form.don_end_date.value == "") {
      alert("기부처 종료일을 입력하세요.")
      document.form.don_end_date.focus();
         return false;
      }

      if (document.form.don_ex.value == "") {
         alert("기부처 설명을 입력하세요.")
         document.form.don_ex.focus();
         return false;
      }

      if (document.form.don_summary.value == "") {
         alert("기부처 간단소개를 입력하세요.")
         document.form.don_summary.focus();
         return false;
      }

      document.form.submit(); //전송

   }
</script>
<link rel="stylesheet" href="/resources/styles/font.css">
<title>기부처 등록</title>
</head>
<body>
<%@include file="../layouts/adminHeader.jsp"%>
   <section class="service position-relative overflow-hidden mt-5">
   <div class="container position-relative">
      <div class="row mt-5">
         <div class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
            <h2 class="text-black mb-0 mt-5 mb-3"style="font-size:2rem;text-align:left">📢기부 등록</h2>
         </div>
      </div>
      <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
         <div class="card border-0 shadow">
            <div class="card-body">
               <div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
                  <form action="save.do" method="post" enctype="multipart/form-data" class="row col-12">
                     <div class="don_name col-12 mb-3 p-3">
                        <label for="don_name" class="col-12 mb-1 text-start">기부처명</label> 
                        <input type="text" name="don_name" id="don_name"class="form-control" placeholder="기부처명">
                     </div>
                     <div class="don_start_date col-6 mb-3 p-3">
                        <label for="don_start_date" class="col-12 mb-1 text-start">기부 시작일</label>
                        <input type="date" name="don_start_date" id="don_start_date" autocomplete="off" class="form-control">
                     </div>
                     <div class="don_end_date col-6 mb-3 p-3">
                        <label for="don_end_date" class="col-12 mb-1 text-start">기부 종료일</label>
                        <input type="date" name="don_end_date" id="don_end_date" autocomplete="off" class="form-control">
                     </div>
                     <div class="don_goal col-12 mb-3 p-3">
                        <label for="don_goal" class="col-12 mb-1 text-start">목표 포인트</label>
                        <input type="text" name="don_goal" class="form-control"id="don_goal">
                     </div>
                     <div class="don_ex col-12 mb-3 p-3">
                        <label for="don_ex" class="col-12 mb-1 text-start">기부 내용</label>
                        <textarea name="don_ex" id="don_ex"class="form-control" placeholder="기부처 소개와 내용을 적어주세요"></textarea>
                     </div>
                     <div class="don_summary col-12 mb-3 p-3">
                        <label for="don_summary" class="col-12 mb-1 text-start">기부 간단소개</label>
                        <textarea name="don_summary" id="don_summary"class="form-control" placeholder="기부처의 간단소개를 적어주세요."></textarea>
                     </div>
                     <div class="d_img1_nn col-12 mb-3 p-3">
                        <label for="d_img1_nn" class="col-12 mb-1 text-start">챌린지 이미지</label>
                        <input type="file" name="file" class="col-12">
                     </div>
                     <div class="buttons d-flex justify-content-between mb-5 p-3">
                        <button class="btn btn-white-back btn-hover-third" id="adding" type="submit">등록</button>
                        <button class="btn btn-white-back btn-hover-third" id="cancel" type="reset" onclick="cancleInsert()">취소</button>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>
<%@include file="../layouts/footer.jsp"%>
</body>
</html>