<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="../../../resources/styles/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="../../../resources/styles/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="../../../resources/styles/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="../../../resources/styles/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="vendor/select2/select2.min.css">
<link rel="stylesheet" href="../../../resources/styles/signup.css">
<link rel="stylesheet" href="../../../resources/styles/util.css">
<!--===============================================================================================-->
<script
   src="../../../resources/styles/vendor/jquery/jquery-3.2.1.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<!--===============================================================================================-->
<script src="../../../resources/styles/vendor/bootstrap/js/popper.js"></script>
<script
   src="../../../resources/styles/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="../../../resources/styles/vendor/select2/select2.min.js"></script>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!--===============================================================================================-->
<link rel="stylesheet" href="/resources/styles/font.css">
<title>계좌 결제</title>
</head>


<body>
   <div class="limiter">
      <%@include file="../layouts/header.jsp"%>
      <div class="container-login100">
         <!--    <form name="cash_receipt" method="post">
            
            </form> -->
         <div class="wrap-login100">
            <form class="login100-form validate-form" id="form" method="post">
               <input type="hidden" name="id" value="${userId}"> 
               <input type="hidden" name="mem_acc_no" value="${memAc.mem_acc_no}"> 
               
               <input type="hidden" name="dogeon_pay_no" value="${forPay.dogeon_pay_no}" />
               <h4 class="mb-5">일반 계좌 결제</h4>
               <label class="d-block">
                  <div class="d-flex position-relative flex-wrap">
                     <p class="col-12 text-start ps-0">은행사</p>
                     <input class="input100 mt-2 mb-3" style="height: 50px;" name="bank" id="bank" value="${memAc.bank}"/>
                  </div>

                  <div class="wrap-input100 validate-input mt-5">
                     <p class="col-12 text-start ps-0">계좌번호</p>
                     <input type="text" name="acc_num" id="acc_num" value="${memAc.acc_num}" class="input100 mt-2 mb-3">
                  </div>
                  <p class="col-12 text-start ps-0">현금영수증</p> 
                  <input type="radio" name="receipt_type_no" id="receipt_type_no" value="1" checked="checked" onchange="setDisplay()">개인신청&nbsp;&nbsp;
                  <input type="radio" name="receipt_type_no" id="receipt_type_no" value="2" onchange="setDisplay()">사업자신청 &nbsp;&nbsp;
                  <div id="receiptN">
                     <input type="text" name="receipt_num" id="receipt_num" class="input100 mt-2 mb-3 col-12" style="width: 410px;" placeholder="하이픈(-) 포함해서 기입해주세요." minlength="19">
                  </div> 
                  <input type="radio" name="receipt_type_no" id="cash_receipt_YN" value="3" onchange="setDisplay()">미신청
                  <div class="container-login100-form-btn">
                     <button class="login100-form-btn" id="registBtn" type="submit">결제</button>
                  </div>
            </form>

            </label>


         </div>
      </div>
   </div>
   <%@include file="../layouts/footer.jsp"%>
   <script type="text/javascript">
      function setDisplay() {
         if ($('input:radio[id="cash_receipt_YN"]').is(':checked')) {
            $('#receipt_num').hide();
            
         } else {
            $('#receipt_num').show();
         }
      }
 
      window.onload = function() {
         document.getElementById('registBtn').onclick = receipt;
      }


       function receipt() {
         var cash = document.getElementsByName("receipt_type_no");

         if (cash[0].checked == true) {
            $("#form").attr("action", "receiptYes.do").submit();
            alert('결제 완료!');
         } else if (cash[1].checked == true) {
            $("#form").attr("action", "receiptYes.do").submit();
            alert('결제 완료!');
         } else if (cash[2].checked == true) {
            $("#form").attr("action", "receiptYes.do").submit();
            alert('결제 완료!');
         }
      }


   </script>
</body>
</html>