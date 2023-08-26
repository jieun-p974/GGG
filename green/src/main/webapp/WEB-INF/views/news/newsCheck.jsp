<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="/resources/styles/table.css">
<link rel="stylesheet" href="/resources/styles/font.css">
<title>뉴스 관리</title>
<style type="text/css">
.thumnail {
   width: 40%;
}
</style>
<script type="text/javascript">
   $(function() {
      $("#category").change(
      function() {
         var selected = $("#category").val();
         var html = "";

         if (selected == "1") {
            <c:forEach items="${list}" var="news">
            <c:if test="${news.cat_no == 1}">
            html += '<tbody>';
            html += '<input type="hidden" name="news_no" value="${news.news_no}"></input>';
            html += '<td style="width: 30%;"><img src="/resources/imgs/newsImg/${news.n_img1_addr}" alt="뉴스 썸네일" class="thumnail"></td>';
            html += '<td> ${news.n_title}</td>';
            html += '<td> ${news.n_reg_date}</td>';
            html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="newsModify.do?news_no=${news.news_no}"> 수정 </a></td>';
            html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="deleteNews.do?news_no=${news.news_no}">삭제 </a></td>';
            html += '</tbody>';

            </c:if>
            </c:forEach>
            $("tbody").remove();
            $("#newsList").append(html);
         } else if (selected == "2") {
            <c:forEach items="${list}" var="news">
            <c:if test="${news.cat_no == 2}">
            html += '<tbody>';
            html += '<input type="hidden" name="news_no" value="${news.news_no}"></input>';
            html += '<td style="width: 30%;"><img src="/resources/imgs/newsImg/${news.n_img1_addr}" alt="뉴스 썸네일" class="thumnail"></td>';
            html += '<td> ${news.n_title}</td>';
            html += '<td> ${news.n_reg_date}</td>';
            html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="newsModify.do?news_no=${news.news_no}"> 수정 </a></td>';
            html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="deleteNews.do?news_no=${news.news_no}">삭제 </a></td>';
            html += '</tbody>';

            </c:if>
            </c:forEach>
            $("tbody").remove();
            $("#newsList").append(html);
         } else if (selected == "3") {
            <c:forEach items="${list}" var="news">
            <c:if test="${news.cat_no == 3}">
            html += '<tbody>';
            html += '<input type="hidden" name="news_no" value="${news.news_no}"></input>';
            html += '<td style="width: 30%;"><img src="/resources/imgs/newsImg/${news.n_img1_addr}" alt="뉴스 썸네일" class="thumnail"></td>';
            html += '<td> ${news.n_title}</td>';
            html += '<td> ${news.n_reg_date}</td>';
            html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="newsModify.do?news_no=${news.news_no}"> 수정 </a></td>';
            html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="deleteNews.do?news_no=${news.news_no}">삭제 </a></td>';
            html += '</tbody>';

            </c:if>
            </c:forEach>
            $("tbody").remove();
            $("#newsList").append(html);
         } else if (selected == "4") {
            <c:forEach items="${list}" var="news">
            <c:if test="${news.cat_no == 4}">
            html += '<tbody>';
            html += '<input type="hidden" name="news_no" value="${news.news_no}"></input>';
            html += '<td style="width: 30%;"><img src="/resources/imgs/newsImg/${news.n_img1_addr}" alt="뉴스 썸네일" class="thumnail"></td>';
            html += '<td> ${news.n_title}</td>';
            html += '<td> ${news.n_reg_date}</td>';
            html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="newsModify.do?news_no=${news.news_no}"> 수정 </a></td>';
            html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="deleteNews.do?news_no=${news.news_no}">삭제 </a></td>';
            html += '</tbody>';

            </c:if>
            </c:forEach>
            $("tbody").remove();
            $("#newsList").append(html);
         } else if (selected == "5") {
            <c:forEach items="${list}" var="news">
            <c:if test="${news.cat_no == 5}">
            html += '<tbody>';
            html += '<input type="hidden" name="news_no" value="${news.news_no}"></input>';
            html += '<td style="width: 30%;"><img src="/resources/imgs/newsImg/${news.n_img1_addr}" alt="뉴스 썸네일" class="thumnail"></td>';
            html += '<td> ${news.n_title}</td>';
            html += '<td> ${news.n_reg_date}</td>';
            html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="newsModify.do?news_no=${news.news_no}"> 수정 </a></td>';
            html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="deleteNews.do?news_no=${news.news_no}">삭제 </a></td>';
            html += '</tbody>';

            </c:if>
            </c:forEach>
            $("tbody").remove();
            $("#newsList").append(html);
         } else if (selected == "6") {
            <c:forEach items="${list}" var="news">
            <c:if test="${news.cat_no == 6}">
            html += '<tbody>';
            html += '<input type="hidden" name="news_no" value="${news.news_no}"></input>';
            html += '<td style="width: 30%;"><img src="/resources/imgs/newsImg/${news.n_img1_addr}" alt="뉴스 썸네일" class="thumnail"></td>';
            html += '<td> ${news.n_title}</td>';
            html += '<td> ${news.n_reg_date}</td>';
            html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="newsModify.do?news_no=${news.news_no}"> 수정 </a></td>';
            html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="deleteNews.do?news_no=${news.news_no}">삭제 </a></td>';
            html += '</tbody>';

            </c:if>
            </c:forEach>
            $("tbody").remove();
            $("#newsList").append(html);
         } else {
            <c:forEach items="${list}" var="news">
            html += '<tbody>';
            html += '<input type="hidden" name="news_no" value="${news.news_no}"></input>';
            html += '<td style="width: 30%;"><img src="/resources/imgs/newsImg/${news.n_img1_addr}" alt="뉴스 썸네일" class="thumnail"></td>';
            html += '<td> ${news.n_title}</td>';
            html += '<td> ${news.n_reg_date}</td>';
            html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="newsModify.do?news_no=${news.news_no}"> 수정 </a></td>';
            html += '<td><a class="btn btn-white-back2 btn-hover-secondery" href="deleteNews.do?news_no=${news.news_no}">삭제 </a></td>';
            html += '</tbody>';

            </c:forEach>
            $("tbody").remove();
            $("#newsList").append(html);
         }
      });
   });
</script>
</head>
<body>
<%@include file="../layouts/adminHeader.jsp"%>
   <section class="service position-relative overflow-hidden mt-5">
      <div class="container position-relative">
         <img src="/resources/imgs/service/dot-shape.png" class="shape position-absolute">
         <div class="row mt-5">
            <div class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
               <h2 class="text-black mt-3 mb-0 mt-5 mb-3">뉴스 관리 페이지</h2>
            </div>
         </div>
         <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
            <div class="calendar d-flex justify-content-between mb-5">
               <select name="category" id="category" class="category">
                  <option value="all">전체</option>
                  <option value="1">동물</option>
                  <option value="2">문화</option>
                  <option value="3">사회</option>
                  <option value="4">미디어</option>
                  <option value="5">과학</option>
                  <option value="6">정치</option>
               </select>
               <a class="btn btn-white-back btn-hover-third" id="add" href="newsWrite.do">추가하기</a>
            </div>
            <div class="card border-0 shadow">
               <div class="card-body">
                  <div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
                     <table class="type09" id="newsList">
                        <thead>
                           <th>썸네일</th>
                           <th>뉴스 제목</th>
                           <th>작성일</th>
                           <th>수정</th>
                           <th>삭제</th>
                        </thead>
                        <c:forEach items="${list}" var="news">
                           <tbody>
                              <input type="hidden" name="news_no" value="${news.news_no}"></input>
                              <td style="width: 30%;">
                                 <img src="/resources/imgs/newsImg/${news.n_img1_addr}" alt="뉴스 썸네일" class="thumnail">
                              </td>
                              <td>${news.n_title}</td>
                              <td>${news.n_reg_date}</td>
                              <td>
                                 <a class="btn btn-white-back2 btn-hover-secondery" href="newsModify.do?news_no=${news.news_no}"> 수정 </a>
                              </td>
                              <td>
                                 <a class="btn btn-white-back2 btn-hover-secondery" href="deleteNews.do?news_no=${news.news_no}">삭제 </a>
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