<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../../../resources/styles/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../../../resources/styles/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../../../resources/styles/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="../../../resources/styles/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<link rel="stylesheet" href="../../../resources/styles/signup.css">
<link rel="stylesheet" href="../../../resources/styles/util.css">
<!--===============================================================================================-->
<script src="../../../resources/styles/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="../../../resources/styles/vendor/bootstrap/js/popper.js"></script>
<script src="../../../resources/styles/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="../../../resources/styles/vendor/select2/select2.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!--===============================================================================================-->
<link rel="stylesheet" href="/resources/styles/font.css">
<title>결제수단관리 | 계좌등록</title>
</head>
<script type="text/javascript">
   window.onload = function() {
      document.getElementById('registBtn').onclick = check;
   }
   function check() {

      if ($("#bank").val() == "") {
         alert("은행을 선택해주세요.");
         $("#bank").focus();
         return false;
      }

      if ($("#acc_num").val() == "") {
         alert("계좌번호를 입력해주세요.");
         $("#acc_num").focus();
         return false;
      }
      document.form.submit();
      alert('결제수단이 추가되었습니다.');

   }
</script>

<body>
   <div class="limiter">
      <%@include file="../layouts/header.jsp"%>
      <div class="container-login100">
         <div class="wrap-login100">
            <form class="login100-form validate-form" name="form" action="accSave.do" method="post">
               <input type="hidden" name="id" value="${userId}">
               <h4 class="mb-5">간편결제 | 계좌등록</h4>
               <label class="d-block">
                  <div class="d-flex position-relative flex-wrap">
                     <p class="col-12 text-start ps-0">은행사</p>
                     <select class="bankinfo mt-2 me-3" style="height: 45px;" name="bank" id="bank">
                        <option value="" selected>- 은행선택 -</option>
                        <option value='KB국민은행'>KB국민은행</option>
                        <option value='신한은행'>신한은행</option>
                        <option value='우리은행'>우리은행</option>
                        <option value='하나은행'>하나은행</option>
                        <option value='신한은행'>신한은행</option>
                        <option value='SC제일은행'>SC제일은행</option>
                        <option value='씨티은행'>씨티은행</option>
                        <option value='산업은행'>산업은행</option>
                        <option value='NH농협은행'>NH농협은행</option>
                        <option value='수협은행'>수협은행</option>
                        <option value='케이뱅크'>케이뱅크</option>
                        <option value='카카오뱅크'>카카오뱅크</option>
                        <option value='토스뱅크'>토스뱅크</option>
                     </select>
                  </div>

                  <div class="wrap-input100 validate-input mt-5">
                     <p class="col-12 text-start ps-0">계좌번호</p>
                     <input type="text" name="acc_num" id="acc_num" class="input100 mt-2 mb-3">
                  </div>
               </label>
               <div class="container-login100-form-btn">
                  <button class="login100-form-btn" id="registBtn">등록</button>
               </div>
            </form>
         </div>
      </div>
   </div>
   <%@include file="../layouts/footer.jsp"%>
</body>
</html>