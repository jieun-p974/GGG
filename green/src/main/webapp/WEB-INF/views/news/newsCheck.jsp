<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/newsCheck.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<script type="text/javascript">
	function insert() {
		location.href = "newsWrite.do"
	}
	$(function(){
		$("#category").change(function(){
			var selected = $("#category").val();
			var html = "";
			
			if(selected == "1"){
				<c:forEach items="${list}" var="news">
					<c:if test="${news.cat_no == 1}">
						html += '<tbody>';
						html += '<td>${news.news_no}</td>';
						html += '<td><img src="${news.n_img1_nn}" alt="뉴스 썸네일" class="thumnail"></td>';
						html += '<td> ${news.n_title}</td>';
						html += '<td> ${news.n_reg_date}</td>';				
						html += '<td><button><a href="newsModify.do?news_no=${news.news_no}">수정</a></button></td>';
						html += '<td><button><a href="deleteNews.do?news_no=${news.news_no}">삭제</a></button></td>';
						html += '</tbody>';
					</c:if>
				</c:forEach>
				$("tbody").remove();
				$("#newsList").append(html);
			}else if(selected == "2"){
				<c:forEach items="${list}" var="news">
				<c:if test="${news.cat_no == 2}">
					html += '<tbody>';
					html += '<td>${news.news_no}</td>';
					html += '<td><img src="${news.n_img1_nn}" alt="뉴스 썸네일" class="thumnail"></td>';
					html += '<td> ${news.n_title}</td>';
					html += '<td> ${news.n_reg_date}</td>';				
					html += '<td><button><a href="newsModify.do?news_no=${news.news_no}">수정</a></button></td>';
					html += '<td><button><a href="deleteNews.do?news_no=${news.news_no}">삭제</a></button></td>';
					html += '</tbody>';
				</c:if>
			</c:forEach>
			$("tbody").remove();
			$("#newsList").append(html);
			}else if(selected == "3"){
				<c:forEach items="${list}" var="news">
				<c:if test="${news.cat_no == 3}">
					html += '<tbody>';
					html += '<td>${news.news_no}</td>';
					html += '<td><img src="${news.n_img1_nn}" alt="뉴스 썸네일" class="thumnail"></td>';
					html += '<td> ${news.n_title}</td>';
					html += '<td> ${news.n_reg_date}</td>';				
					html += '<td><button><a href="newsModify.do?news_no=${news.news_no}">수정</a></button></td>';
					html += '<td><button><a href="deleteNews.do?news_no=${news.news_no}">삭제</a></button></td>';
					html += '</tbody>';
				</c:if>
			</c:forEach>
			$("tbody").remove();
			$("#newsList").append(html);
			}else if(selected == "4"){
				<c:forEach items="${list}" var="news">
				<c:if test="${news.cat_no == 4}">
					html += '<tbody>';
					html += '<td>${news.news_no}</td>';
					html += '<td><img src="${news.n_img1_nn}" alt="뉴스 썸네일" class="thumnail"></td>';
					html += '<td> ${news.n_title}</td>';
					html += '<td> ${news.n_reg_date}</td>';				
					html += '<td><button><a href="newsModify.do?news_no=${news.news_no}">수정</a></button></td>';
					html += '<td><button><a href="deleteNews.do?news_no=${news.news_no}">삭제</a></button></td>';
					html += '</tbody>';
				</c:if>
			</c:forEach>
			$("tbody").remove();
			$("#newsList").append(html);
			}else if(selected == "5"){
				<c:forEach items="${list}" var="news">
				<c:if test="${news.cat_no == 5}">
					html += '<tbody>';
					html += '<td>${news.news_no}</td>';
					html += '<td><img src="${news.n_img1_nn}" alt="뉴스 썸네일" class="thumnail"></td>';
					html += '<td> ${news.n_title}</td>';
					html += '<td> ${news.n_reg_date}</td>';				
					html += '<td><button><a href="newsModify.do?news_no=${news.news_no}">수정</a></button></td>';
					html += '<td><button><a href="deleteNews.do?news_no=${news.news_no}">삭제</a></button></td>';
					html += '</tbody>';
				</c:if>
			</c:forEach>
			$("tbody").remove();
			$("#newsList").append(html);
			}else if(selected == "6"){
				<c:forEach items="${list}" var="news">
				<c:if test="${news.cat_no == 6}">
					html += '<tbody>';
					html += '<td>${news.news_no}</td>';
					html += '<td><img src="${news.n_img1_nn}" alt="뉴스 썸네일" class="thumnail"></td>';
					html += '<td> ${news.n_title}</td>';
					html += '<td> ${news.n_reg_date}</td>';				
					html += '<td><button><a href="newsModify.do?news_no=${news.news_no}">수정</a></button></td>';
					html += '<td><button><a href="deleteNews.do?news_no=${news.news_no}">삭제</a></button></td>';
					html += '</tbody>';
				</c:if>
			</c:forEach>
			$("tbody").remove();
			$("#newsList").append(html);
			}else{
				<c:forEach items="${list}" var="news">
					html += '<tbody>';
					html += '<td>${news.news_no}</td>';
					html += '<td><img src="${news.n_img1_nn}" alt="뉴스 썸네일" class="thumnail"></td>';
					html += '<td> ${news.n_title}</td>';
					html += '<td> ${news.n_reg_date}</td>';				
					html += '<td><button><a href="newsModify.do?news_no=${news.news_no}">수정</a></button></td>';
					html += '<td><button><a href="deleteNews.do?news_no=${news.news_no}">삭제</a></button></td>';
					html += '</tbody>';
			</c:forEach>
			$("tbody").remove();
			$("#newsList").append(html);
			}
		});
	});
</script>
<title>뉴스 관리</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/adminHeader.jsp"%>
		<div class="newsCheckList">
			<div class="title">뉴스 관리 페이지</div>
			<div class="top">
			<select name="category" id="category" class="category">
					<option value="all">전체</option>
					<option value="1">동물</option>
					<option value="2">문화</option>
					<option value="3">사회</option>
					<option value="4">미디어</option>
					<option value="5">과학</option>
					<option value="6">정치</option>
			</select>
			<button class="add" id="add" onclick="insert()">추가하기</button>
			</div>
			<div class="list">
				<table class="news" id="newsList">
					<thead>
						<th>순서</th>
						<th>썸네일</th>
						<th>뉴스 제목</th>
						<th>작성일</th>
						<th>수정</th>
						<th>삭제</th>
					</thead>
					<c:forEach items="${list}" var="news">
					<tbody>
						<td>${news.news_no}</td>
						<td><img src="${news.n_img1_nn}" alt="뉴스 썸네일" class="thumnail"></td>
						<td> ${news.n_title}</td>
						<td> ${news.n_reg_date}</td>
						<td><button><a href="newsModify.do?news_no=${news.news_no}">수정</a></button></td>
						<td><button><a href="deleteNews.do?news_no=${news.news_no}">삭제</a></button></td>
					</tbody>
					</c:forEach>
					
				</table>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>