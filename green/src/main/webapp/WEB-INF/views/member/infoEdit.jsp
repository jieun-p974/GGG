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
<!--===============================================================================================-->
<script src="../../../resources/styles/vendor/bootstrap/js/popper.js"></script>
<script
   src="../../../resources/styles/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="../../../resources/styles/vendor/select2/select2.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!--===============================================================================================-->
<!-- 주소 api 추가 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="/resources/styles/font.css">
<title>회원정보수정</title>
</head>

<body>
   <div class="limiter">
      <%@include file="../layouts/header.jsp"%>
      <div class="container-login100">
         <div class="wrap-login100">
            <form class="login100-form validate-form mt-5" name="form" action="editSave.do" method="post" enctype="multipart/form-data">
               <p class="d-flex fs-4 mb-5 justify-content-center"> 🌏&nbsp ${meminfo.id}님의 회원정보&nbsp🌏 </p   >
               <p class=input_title>아이디</p>
               <div class="wrap-input100 validate-input">
                   <input class="input100 mt-2 mb-3" type="text" name="id" id="id" value="${meminfo.id}" readonly="readonly">
               </div>
               
               <p class=input_title>비밀번호</p>
               <div class="wrap-input100 validate-input"
                  data-validate="비밀번호를 입력하세요." onkeyup="enter()">
                   <input class="input100 mt-2 mb-3" type="password"
                     name="password" id="password" placeholder="비밀번호를 입력하세요."
                     onkeyup="enter()">
                     <span class="focus-input100"></span>
               </div>
               
               <p class=input_title> 비밀번호 확인 </p>
               <div class="wrap-input100 validate-input"
                  data-validate="비밀번호를 입력하세요." onkeyup="enter()">
                   <input class="input100 mt-2 mb-3" type="password"
                     name="passCheck" id="passCheck" placeholder="비밀번호를 입력하세요."
                     onkeyup="enter()"> 
                     <span class="focus-input100"></span>
               </div>
               
               <p class=input_title> 이름</p>
               <div class="wrap-input100 validate-input">
                   <input class="input100 mt-2 mb-3" type="text" name="name" id="name" value="${meminfo.name}" readonly="readonly">
               </div>
               
               <p class=input_title> 이메일주소</p>
               <div class="wrap-input100 validate-input">
                   <input class="input100 mt-2 mb-3" type="email" name="email"
                     id="email" placeholder="이메일주소를 입력하세요." value="${meminfo.email}" readonly="readonly">
               </div>
               
               <p class=input_title> 전화번호</p>
               <div class="wrap-input100 validate-input">
                   <input class="input100 mt-2 mb-3" type="text" name="tel"
                     id="tel" value="${meminfo.tel}" onkeyup="enter()">
                     <span class="focus-input100"></span>
               </div>
               
               <p class=input_title> 주소 </p>
               <div class="wrap-input100 validate-input">
                  <div class="d-flex col-12 p-0 flex-wrap">
                   <input class="input100 mt-2 mb-3 col-4" type="text" name="address" id="address1" readonly="readonly" placeholder="우편번호">
                   <input class="input100 mt-2 mb-3 col-8" type="text" name="address" id="address2" readonly="readonly" placeholder="주소"> 
                   </div>
                      <div class="d-flex col-12 p-0 flex-wrap">
                      <input class="input100 mt-2 mb-3 col-9" type="text" name="address" id="address3" readonly="readonly" placeholder="상세주소">
                     <a class="login100-form-btn mt-2 mb-3 col-3 address_button text-center" onclick="execution_daum_address()">주소찾기</a>
                     </div>
               </div>
         
               <p class=input_title> 프로필사진(선택)</p>
               <div class="wrap-input100 validate-input">
                   <input class="input100 mt-2 mb-3" type="file" name="file" id="file"/>
                  <span class="focus-input100"></span>
               </div>


               <div class="container-login100-form-btn">
                  <button class="login100-form-btn" type="submit" id="editBtn">수정</button>
               </div>

            </form>
         </div>
      </div>
   </div>

   <script type="text/javascript">
   $(document).ready(function() {
      
      var address = "${meminfo.address}";
      var addr = address.split(',',3);
         for ( var i in addr ) {
              var addr1 = addr[0];
             document.getElementById("address1").value=addr1;
             var addr2 = addr[1];
             document.getElementById("address2").value=addr2;
             var addr3 =  addr[2];
             document.getElementById("address3").value=addr3;
           }
      
      $("#editBtn").on("click", function() {
         
         if ($("#password").val() == "") {
            alert("비밀번호를 입력해주세요.");
            $("#password").focus();
            return false;
         }
         
         if ($("#passCheck").val() == "") {
            alert("비밀번호 확인란을 입력해주세요.");
            $("#passCheck").focus();
            return false;
         }
         
         if($("#password").val()!=$("#passCheck").val()){
            alert("비밀번호가 일치하지 않습니다.");
            $("#passCheck").focus();
            return false;
         }
                
         document.form.submit();//전송
         alert("회원정보가 수정되었습니다.");
         
      });
   });
      //* 다음 주소 연동 */
       function execution_daum_address(){
          new daum.Postcode({
                 oncomplete: function(data) {
                     // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.      
                    
                      // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                      // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                      var addr = ''; // 주소 변수
                      var extraAddr = ''; // 참고항목 변수
       
                      //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                      if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                          addr = data.roadAddress;
                      } else { // 사용자가 지번 주소를 선택했을 경우(J)
                          addr = data.jibunAddress;
                      }
       
                      // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                      if(data.userSelectedType === 'R'){
                          // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                          // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                          if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                              extraAddr += data.bname;
                          }
                          // 건물명이 있고, 공동주택일 경우 추가한다.
                          if(data.buildingName !== '' && data.apartment === 'Y'){
                              extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                          }
                          // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                          if(extraAddr !== ''){
                              extraAddr = ' (' + extraAddr + ')';
                          }
                          // 조합된 참고항목을 해당 필드에 넣는다.
                          document.getElementById("address1").value = extraAddr;
                      
                      } else {
                         addr += ' ';
                      }
       
                      // 우편번호와 주소 정보를 해당 필드에 넣는다.
                        $("#address1").val(data.zonecode);
                        $("#address2").val(addr);
               
                      // 커서를 상세주소 필드로 이동한다.
                        $("#address3").attr("readonly",false);
                        $("#address3").focus();
                 }
             }).open();    
          
         }
</script>
   <%@include file="../layouts/footer.jsp"%>
</body>
</html>