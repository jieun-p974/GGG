<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<jsp:useBean id="now" class="java.util.Date" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="/resources/styles/table.css">
<link rel="stylesheet" href="/resources/styles/font.css">
<script type="text/javascript">

$(function() {   
   $("#donaList").change(function(){
      var selected = $("#donaList").val();
      var html = "";
      <%-- 오늘 날짜랑 비교 --%>
      <fmt:formatDate var="today" value="${now}" pattern="yyyy-MM-dd" />
      
      if (selected == 'ing') {
         console.log("진행중인 기부");
         <c:forEach items="${list}" var="dona">
         <c:if test="${dona.don_end_date > today}">
            html += '<tbody>';
            html += '<input type="hidden" name="don_no" id="don_no" value="${dona.don_no}"></input>';
            html += '<td>${dona.don_name}</td>';
            html += '<td>${dona.don_start_date}</td>';
            html += '<td>${dona.don_end_date}</td>';
            html += '<td><a class="btn btn-warning btn-hover-secondery"href="donationModify.do?don_no=${dona.don_no}">수정</a></td>';
            html += '<td><a class="btn btn-warning btn-hover-secondery" href="deleteDona.do?don_no=${dona.don_no}">삭제 </a></td>';
            html += '</tbody>';
         </c:if>
         </c:forEach>
         $("tbody").remove();
         $("#dona_list").append(html);
      } else if (selected == 'end') {
         console.log("종료된 기부");
         <c:forEach items="${list}" var="dona">
         <c:if test="${dona.don_end_date < today}">
            html += '<tbody>';
            html += '<input type="hidden" name="don_no" id="don_no" value="${dona.don_no}"></input>';
            html += '<td>${dona.don_name}</td>';
            html += '<td>${dona.don_start_date}</td>';
            html += '<td>${dona.don_end_date}</td>';
            html += '<td><a class="btn btn-warning btn-hover-secondery" href="donationModify.do?don_no=${dona.don_no}">수정</a></td>';
            html += '<td><a class="btn btn-warning btn-hover-secondery" href="deleteDona.do?don_no=${dona.don_no}">삭제 </a></td>';
            html += '</tbody>';
         </c:if>
         </c:forEach>
         $("tbody").remove();
         $("#dona_list").append(html);
      } else {
         console.log("기부처 전체");
         <c:forEach items="${list}" var="dona">
         
            html += '<tbody>';
            html += ' <input type="hidden" name="don_no" id="don_no" value="${dona.don_no}"></input>';
            html += '<td>${dona.don_name}</td>';
            html += '<td>${dona.don_start_date}</td>';
            html += '<td>${dona.don_end_date}</td>';
            html += '<td><a class="btn btn-warning btn-hover-secondery" href="donationModify.do?don_no=${dona.don_no}">수정</a></td>';
            html += '<td><a class="btn btn-warning btn-hover-secondery" href="deleteDona.do?don_no=${dona.don_no}">삭제 </a></td>';
            html += '</tbody>';
         
         </c:forEach>
         $("tbody").remove();
         $("#dona_list").append(html);
      }
   });
});
</script>
<title>관리자 기부처 리스트</title>
</head>
<body>
   <%@include file="../layouts/adminHeader.jsp"%>
   <section class="service position-relative overflow-hidden mt-5">
      <div class="container position-relative">
         <img src="/resources/imgs/service/dot-shape.png" class="shape position-absolute">
         <div class="row mt-5">
            <div class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
               <h2 class="text-black mb-0 mt-5 mb-3" style="font-size:2rem;text-align:left">📢기부처 리스트 관리</h2>
            </div>
         </div>
         <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
            <div class="calendar d-flex justify-content-between mb-5">
               <select class="month" name="donaList" id="donaList">
                  <option value="all">전체</option>
                  <option value="ing">진행중인 기부</option>
                  <option value="end">종료된 기부</option>
               </select> 
               <a class="btn btn-warning btn-hover-secondery" id="add" href="donationInsert.do">추가하기</a>
            </div>
            <div class="card border-0 shadow">
               <div class="card-body">
                  <div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
                     <table class="type09" id="dona_list">
                        <thead>
                           <th>기부처 명</th>
                           <th>기부 시작일</th>
                           <th>기부 종료일</th>
                           <th>수정</th>
                           <th>삭제</th>
                        </thead>
                        <c:forEach items="${list}" var="dona">
                           <tbody>
                              <input type="hidden" name="don_no" id="don_no" value="${dona.don_no}"></input>
                              <td>${dona.don_name}</td>
                              <td>${dona.don_start_date}</td>
                              <td>${dona.don_end_date}</td>
                              <td>
                                 <a class="btn btn-warning btn-hover-secondery" href="donationModify.do?don_no=${dona.don_no}"> 수정 </a>
                              </td>
                              <td>
                                 <a class="btn btn-warning btn-hover-secondery" href="deleteDona.do?don_no=${dona.don_no}">삭제 </a>
                              </td>
                           </tbody>
                        </c:forEach>
                     </table>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>
   <%@include file="../layouts/footer.jsp"%>
</body>
</html>