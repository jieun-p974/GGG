<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="../../../resources/styles/challengeInsert.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
   function cancleInsert() {
      location.href = "adDonationList.do"
   }
</script>
<link rel="stylesheet" href="/resources/styles/font.css">
<title>기부처 수정</title>
</head>
<body>
<%@include file="../layouts/adminHeader.jsp"%>
<section class="service position-relative overflow-hidden mt-5">
   <div class="container position-relative">
      <div class="row mt-5">
         <div class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
            <h2 class="text-black mb-0 mt-5 mb-3">기부처 수정</h2>
         </div>
      </div>
      <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
         <div class="card border-0 shadow">
            <div class="card-body">
               <div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
                  <form action="updateDona.do" method="post" enctype="multipart/form-data" class="row col-12">
                     <input name="don_no" type="hidden" value="${dona.don_no}">
                     <div class="don_name col-12 mb-3 p-3">
                        <label for="don_name" class="col-12 mb-1 text-start">기부처명</label> 
                        <input type="text" name="don_name" id="don_name"class="form-control" value="${dona.don_name}">
                     </div>
                     <div class="don_start_date col-6 mb-3 p-3">
                        <label for="don_start_date" class="col-12 mb-1 text-start">기부 시작일</label>
                        <input type="date" name="don_start_date" id="don_start_date" autocomplete="off" class="form-control"value="${dona.don_start_date}">
                     </div>
                     <div class="don_end_date col-6 mb-3 p-3">
                        <label for="don_end_date" class="col-12 mb-1 text-start">기부 종료일</label>
                        <input type="date" name="don_end_date" id="don_end_date" autocomplete="off" class="form-control"value="${dona.don_end_date}">
                     </div>
                     <div class="don_goal col-12 mb-3 p-3">
                        <label for="don_goal" class="col-12 mb-1 text-start">목표 포인트</label>
                        <input type="text" name="don_goal" class="form-control"id="don_goal" value="${dona.don_goal}">
                     </div>
                     <div class="don_ex col-12 mb-3 p-3">
                        <label for="don_ex" class="col-12 mb-1 text-start">기부 내용</label>
                        <textarea name="don_ex" id="don_ex"class="form-control" placeholder="기부처 소개와 내용을 적어주세요">${dona.don_ex}</textarea>
                     </div>
                     <div class="don_summary col-12 mb-3 p-3">
                        <label for="don_summary" class="col-12 mb-1 text-start">기부 간단소개</label>
                        <textarea name="don_summary" id="don_summary"class="form-control" placeholder="기부처의 간단소개를 적어주세요.">${dona.don_summary}</textarea>
                     </div>
                     <div class="d_img1_nn col-12 mb-3 p-3">
                        <label for="d_img1_nn" class="col-12 mb-1 text-start">기부처 이미지</label>
                        <input type="file" name="file" id="file" class="col-12" value="/resources/imgs/donaImg/${dona.d_img1_addr}">
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