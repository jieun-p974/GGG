<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link href="../../../resources/styles/myDogamDetail.css"rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/resources/styles/font.css">
<script type="text/javascript">
var msg= "<c:out value='${msg}' />"
var url= "<c:out value='${url}' />"

if(msg.length >0 && url.length >0){
		
	alert(msg);
	location.href=url;
}
</script>
<style type="text/css">
.tabs{
	position: fixed;
	left:14%;
	top:15.5%;
}
pre {
   width: 100%;
   white-space: pre-wrap;
   word-wrap: break-word;
 
</style>
<title>동물도감 | 상세보기</title>
</head>
<body>
		<%@include file="../layouts/header.jsp"%>
		<section class="pricing position-relative overflow-hidden">
	<c:forEach items="${list}" var="dogam">
	<div class="container position-relative">
		<div class="row justify-content-center mt-5">
			<div class="col-xxl-2 col-xl-2 col-lg-2 col-md-6 col-sm-6 col-12 tabs">
				<div class="card position-relative shadow border-0 h-100">
					<div class="card-body p-3">
						<div class="animal_info mt-3">
							<input value="${dogam.do_no}" type="hidden"/>
							<h4 class="mb-1">제 성장 과정이 궁금하세요?</h3>
						</div>
						<div class="animal_level_d pt-5">
							<div class="row">
								<img class="level_img1_d" src="../resources/imgs/dogam/${dogam.img1}" /> 
								<p class="text-black text-center">Lv.1</p>
							</div>
							<img class="arrow1" src="../../../resources/imgs/arrow.png" /> 
							<div class="row">
								<img class="level_img2_d" src="../resources/imgs/dogam/${dogam.img2}" />
								<p class="text-black text-center">Lv.2</p>
							</div>
							<img class="arrow2" src="../../../resources/imgs/arrow.png" />
							<div class="row">
								<img class="level_img3_d" src="../resources/imgs/dogam/${dogam.img3}" />
								<p class="text-black text-center">Lv.3</p>
							</div>
						</div>
						<div class="card-action text-center pb-xxl-5 pb-xl-5 pb-lg-5 pb-md-4 pb-sm-4 pb-4 mt-5">
						<c:if test="${userId ne null}">
							<a href="sinchung.do?do_no=${dogam.do_no}&userId=${userId}" class="btn btn-warning btn-hover-secondery text-capitalize">키우기</a>
						</c:if>
					</div>
					</div>
				</div>
			</div>
			<div class="col-xxl-8 col-xl-8 col-lg-8 col-md-6 col-sm-6 col-12">
				<div class="card position-relative shadow border-0 h-100">
					<div class="card-body pb-4">
					<h3 class="mb-5" style="font-weight: bold;">멸종위기 동물<br/> '${dogam.do_title}'을 소개합니다.</h2>
						<pre class="text-start" style="line-height: 2rem">${dogam.do_content}</pre>
						<img class="col-12" src="/resources/imgs/dogam/${dogam.do_realimg_addr}" /> 
					</div>
					<div class="card-action text-end pb-xxl-5 pb-xl-5 pb-lg-5 pb-md-4 pb-sm-4 pb-4 me-5">
						<a href="dogam.do" class="btn btn-warning btn-hover-secondery text-capitalize">도감보기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</c:forEach>
</section>
<%@include file="../layouts/footer.jsp"%>
</body>
</html>