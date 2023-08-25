<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
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
<title>회원가입</title>
<style type="text/css">
.logo{
   position: fixed;
   top:4%;
   left:38%;
   width: 6%;
}
</style>
</head>

<body>
   <div class="limiter">
      <div class="container-login100">
         <div class="wrap-login100">
            <form class="login100-form validate-form mt-3 mb-3" name="form" action="signupSave.do" method="post" enctype="multipart/form-data">
                  <img class="col-3 p-0 logo" src="../../../resources/imgs/logo4.png"
                  onclick="location.href='../index.jsp'"> 
               <div class="d-flex align-items-center mb-3">
                  <p class="login100-form-title mt-5 mb-3"> 회원가입 </p>
               </div>
               <div class="d-flex">
                  <p class="input_title">아이디</p>
                  <p class="input_title text-warning fs-6">&nbsp;*</p>
               </div>
               <div class="wrap-input100 validate-input">
                   <input class="input100 mt-2 mb-3" type="text" name="id"
                     id="id" placeholder="영문과 숫자 조합하여  5~10자만 가능"/> 
                  <span id="idCheckResult" style="font-size: 0.9rem;"></span>
               </div>
               
               <div class="d-flex">
                  <p class="input_title">비밀번호</p>
                  <p class="input_title text-warning fs-6">&nbsp;*</p>
               </div>
               <div class="wrap-input100 validate-input">
                   <input class="input100 mt-2 mb-3" type="password"
                     name="password" id="password" placeholder="영문+숫자+특수문자 조합하여 8~16자리만 가능">
                  <span id="pwCheckResult" style="font-size: 0.9rem;"></span>
               </div>
               
               <div class="d-flex">
                  <p class="input_title">비밀번호 확인 </p>
                  <p class="input_title text-warning fs-6">&nbsp;*</p>
               </div>
               <div class="wrap-input100 validate-input">
                   <input class="input100 mt-2 mb-3" type="password"
                      id="passCheck">
                  <span id="pwCheckResult2" style="font-size: 0.9rem;"></span>
               </div>
               
               <div class="d-flex">
                  <p class="input_title">이름 </p>
                  <p class="input_title text-warning fs-6">&nbsp;*</p>
               </div>
               <div class="wrap-input100 validate-input">
                   <input class="input100 mt-2 mb-3" type="text" name="name" id="name">
               </div>
               
               <div class="d-flex">
               <p class=input_title> 이메일주소</p>
               <p class="input_title text-warning fs-6">&nbsp;*</p>
               </div>
               <div class="wrap-input100 validate-input">
                   <input class="input100 mt-2 mb-3" type="email" name="email" id="email">
                   <span id="emailCheckResult" style="font-size: 0.9rem;"></span>
               </div>

               <div class="d-flex">
               <p class=input_title> 이메일 인증</p>
               <p class="input_title text-warning fs-6">&nbsp;*</p>
               </div>
               <div class="wrap-input100 validate-input">
                  <div class="d-flex col-12 p-0 flex-wrap">
                     <input class="input100 mt-2 mb-3 mail-check-input col-10" type="text" id="injeung"
                         placeholder="인증번호 입력" disabled="disabled">
                     <input class="login100-form-btn mt-2 mb-3 ms-2 col-2" id="mail-Check-Btn" type="button" value="발송">
                     <span class="col-12 text-start p-0" id="mail-check-warn" style="font-size: 0.9rem;"></span>
                  </div>
               </div>
               
               
               <p class=input_title> 전화번호 </p>
               <div class="wrap-input100 validate-input">
                   <input class="input100 mt-2 mb-3" type="text" name="tel"
                     id="tel" placeholder="하이픈(-) 포함해서 입력">
                  <span id="telCheckResult" style="font-size: 0.9rem;"></span>
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
                     <input class="login100-form-btn mt-2 mb-3 ms-2 col-3 address_button text-center" value="주소찾기" onclick="execution_daum_address()">
                     </div>
               </div>
               
               <p class=input_title> 프로필사진</p>
               <div class="wrap-input100 validate-input">
                   <input class="input100 mt-2 mb-3" type="file" name="file" id="file"
                  />
                  <span class="focus-input100"></span>
               </div>


               <div class="container-login100-form-btn">
                  <button class="login100-form-btn" type="button" id="confirm">회원가입</button>
               </div>

               <div class="text-center p-t-12 mt-3">
                  <a class="txt2" href="../member/searchID.do"> 아이디 찾기 </a> <a>&nbsp&nbsp|&nbsp&nbsp</a>
                  <a class="txt2" href="../member/searchPass.do"> 비밀번호 찾기 </a>
               </div>
               
               <div class="text-center p-t-70">
                  <a class="txt2" href="../member/login.do">
                     이미 멤버이신가요?
                  </a>
               </div>
            </form>
         </div>
      </div>
   </div>

   <script type="text/javascript">
 
   window.onload = function() {
      document.getElementById('confirm').onclick = check;
      document.getElementById('mail-Check-Btn').onclick = emailAuth;
   }
   function check() {
      if ($("#id").val() == "" || $("#password").val() == "" || $("#passCheck").val() == ""
            || $("#name").val() == "" || $("#email").val() == "" || $("#emailCheck").val() == "") {
         alert("필수값을 모두 입력해주세요.");
         return false;
      }
      
      document.form.submit();
      alert(form.id.value + "님, 회원가입을 축하드립니다.\n선물로 100포인트를 지급해드렸어요.\n도감에서 대표캐릭터 지정하고, 기부에도 참여해보세요!" );
   }

   // 아이디 중복체크
    $('#id').keyup(function() {
      // 로그인 프로세스 호출
      $.ajax({
         type : 'post', // 전송방식
         async : true, // 비동신통신
         url : 'idCheck.do', // **** 요청
         contentType : 'application/x-www-form-urlencoded;charset=UTF-8', // 한글
         data : "id=" + $("#id").val(), // 클라이언트에서 보내는 데이타
         success : function(resultData) { // 성공하면 함수연결
            $('#idCheckResult').html(resultData);
         }
      });
   }); 
   
   // 아이디 형식 체크
   $("#id").blur(function() {
       let idCheck = /^[a-zA-Z0-9]{5,10}$/;
       
       if(!idCheck.test($("#id").val())) {
            $("#idCheckResult").css("color", "red");
            $("#idCheckResult").text("ID 형식이 올바르지 않습니다.");
            id = false;
       }else {
          $("#idCheckResult").css("color", "blue");
          $("#idCheckResult").text("ID 사용 가능합니다.");
          id = true;
       }
    });
   
   // 비밀번호 형식 체크
    $("#password").blur(function() {
       let pwdCheck= /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;
       
   if (!pwdCheck.test($("#password").val())) {
            $("#pwCheckResult").css("color", "red");
           $("#pwCheckResult").text("비밀번호 형식이 올바르지 않습니다.");
           password = false;
         }else {
            $("#pwCheckResult").css("color", "blue");
           $("#pwCheckResult").text("사용 가능한 비밀번호 입니다. 아래에 한번 더 입력하세요.");
           password = true;
         }
    });
   
   // 비밀번호 일치 체크
    $("#passCheck").blur(function() {
      
      if ($("#passCheck").val() != $("#password").val()) {
         $("#pwCheckResult2").css("color", "red");
           $("#pwCheckResult2").text("비밀번호가 일치하지 않습니다.");
      } else {
          $("#pwCheckResult2").css("color", "blue");
           $("#pwCheckResult2").text("비밀번호 일치합니다.");
   }
      });
      
   
   // 이메일 형식 체크
    $("#email").blur(function() {
       let emailCheck= /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
       
   if (!emailCheck.test($("#email").val())) {
            $("#emailCheckResult").css("color", "red");
           $("#emailCheckResult").text("이메일 형식이 올바르지 않습니다.");
           email = false;
         }else {
            $("#emailCheckResult").css("color", "blue");
           $("#emailCheckResult").text("사용 가능한 이메일 주소입니다. 인증을 진행하세요.");
           email = true;
         }
    });
   
    function emailAuth() {
         const email = $('#email').val(); // 이메일 주소값 얻어오기!
         console.log('완성된 이메일 : ' + email); // 이메일 오는지 확인
         const checkInput = $('.mail-check-input') // 인증번호 입력하는곳 
         
         $.ajax({
            type : 'get',
            url : '<c:url value ="/member/mailCheck.do?email="/>'+email, // GET방식이라 Url 뒤에 email을 뭍힐수있다.
            success : function (data) {
               console.log("data : " +  data);
               checkInput.attr('disabled',false);
               code = data;
               alert('인증번호가 전송되었습니다.');
               $('#mail-Check-Btn').attr('type', 'hidden');
               $('#injeung').removeClass('col-10');
               $('#injeung').addClass('col-12');
            }, error:function(){
            }      
         }); // end ajax
      }; // end send email
      
   // 인증번호 비교 
   // blur -> focus가 벗어나는 경우 발생
   $('.mail-check-input').blur(function () {
      const inputCode = $(this).val();
      const $resultMsg = $('#mail-check-warn');
      
      if(inputCode === code){
         $resultMsg.html('인증번호가 일치합니다.');
         $resultMsg.css('color','blue');
         $('#mail-Check-Btn').attr('disabled',true);
         $('#email').attr('readonly',true);
      }else{
         $resultMsg.html('인증번호가 불일치 합니다. 다시 확인해주세요!');
         $resultMsg.css('color','red');
      }
   });
         
      // 전화번호 형식 체크
       $("#tel").blur(function() {
          let telCheck= /^[0-9]{3}-[0-9]{4}-[0-9]{4}$/;
          
      if (!telCheck.test($("#tel").val())) {
               $("#telCheckResult").css("color", "red");
              $("#telCheckResult").text("전화번호 형식이 올바르지 않습니다.");
              tel = false;
            }else {
               $("#telCheckResult").css("color", "blue");
              $("#telCheckResult").text("사용 가능한 전화번호입니다.");
              tel = true;
            }
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
</body>
</html>