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
<link href="../../../resources/styles/adminChall.css" rel="stylesheet"
   type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<script type="text/javascript">
   function insert() {
      location.href = "challengeInsert.do"
   }
</script>
<title>챌린지 관리</title>
</head>
<body>
   <div class="container">
      <%@include file="../layouts/header.jsp"%>
      <div class="admin_chall">
         <p class="admin_title">챌린지 리스트 관리</p>


         <div class="calendar">
            <select class="month" name="month" id="month">
               <option value="1">1월</option>
               <option value="2">2월</option>
               <option value="3">3월</option>
               <option value="4">4월</option>
               <option value="5">5월</option>
               <option value="6">6월</option>
               <option value="7">7월</option>
               <option value="8">8월</option>
               <option value="9">9월</option>
               <option value="10">10월</option>
               <option value="11">11월</option>
               <option value="12">12월</option>
            </select>
            <button class="add" id="add" onclick="insert()">추가하기</button>
         </div>
         <div class="chall_lists">
            <table class="list">
               <tr>
                  <th>순서</th>
                  <th>챌린지 명</th>
                  <th>챌린지 시작일</th>
                  <th>챌린지 종료일</th>
                  <th>수정</th>
               </tr>
               <c:forEach items="${list}" var="chall">
                  <tr>
                     <td>${chall.chal_no}</td>
                     <td>${chall.chal_name}</td>
                     <td>${chall.chal_start_date}</td>
                     <td>${chall.chal_end_date}</td>
                     <td><button class="modify">수정</button></td>
                  </tr>   
               </c:forEach>
            </table>
         </div>
      </div>
   </div>
   <%@include file="../layouts/footer.jsp"%>
</body>
</html>