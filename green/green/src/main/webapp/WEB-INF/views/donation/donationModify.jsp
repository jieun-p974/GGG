<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- jQuery UI CSS파일 -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<!-- jQuery 기본 js파일 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<!-- jQuery UI 라이브러리 js파일 -->
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/challengeInsert.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<script type="text/javascript">
	function cancleInsert() {
		location.href = "adDonationList.do"
	}
	$(function() {
		$.datepicker.setDefaults($.datepicker.regional['ko']);
		$("#don_start_date").datepicker(
				{
					changeMonth : true,
					changeYear : true,
					nextText : '다음 달',
					prevText : '이전 달',
					dayNames : [ '일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일' ],
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
					monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ],
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ],
					dateFormat : "yy-mm-dd",
					maxDate : 50, // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
					onClose : function(selectedDate) {
						//시작일(startDate) datepicker가 닫힐때
						//종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
						$("#endDate").datepicker("option", "minDate", selectedDate);
					}
				});
		$("#don_end_date").datepicker({
					changeMonth : true,
					changeYear : true,
					nextText : '다음 달',
					prevText : '이전 달',
					dayNames : [ '일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일' ],
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
					monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ],
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월' ],
					dateFormat : "yy-mm-dd",
					maxDate : 50, // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가)
					onClose : function(selectedDate) {
						// 종료일(endDate) datepicker가 닫힐때
						// 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
						$("#startDate").datepicker("option", "maxDate", selectedDate);
					}
				});
			}); 
</script>
<title>기부처 등록</title>
</head>
<body>
	<div class="container">
		<%@include file="../layouts/adminHeader.jsp"%>
		<div class="dona_insert">
			<div class="insert_box">
				<p class="title">기부처 수정</p>
				<form action="updateDona.do" method="post" enctype="multipart/form-data">
				<input name="don_no" type="hidden" value="${dona.don_no}">
					<div class="don_name">
						<label for="don_name">기부처명</label> 
						<input type="text" name="don_name" id="don_name" value="${dona.don_name}">
					</div>
					<div class="don_start_date">
						<label for="don_start_date">기부 시작일</label>
						<input type="text" name="don_start_date" id="don_start_date" value="${dona.don_start_date}" autocomplete="off">
					</div>
					<div class="don_end_date">
						<label for="don_end_date">기부 종료일</label>
						<input type="text" name="don_end_date" id="don_end_date" value="${dona.don_end_date}" autocomplete="off">
					</div>
					<div class="don_goal">
						<label for="don_goal">목표 포인트</label>
						<input type="text" name="don_goal" id="don_goal" value="${dona.don_goal}" >
					</div>
					<div class="don_ex">
						<label for="don_ex">기부 내용</label>
						<textarea name="don_ex" id="don_ex" placeholder="기부처 소개와 내용을 적어주세요">${dona.don_ex}</textarea>
					</div>
					<div class="don_summary">
						<label for="don_summary">기부 간단소개</label>
						<textarea name="don_summary" id="don_summary" placeholder="기부처의 간단소개를 적어주세요.">${dona.don_summary}</textarea>
					</div>
					<div class=d_img1_nn">
						<label for="d_img1_nn">챌린지 이미지</label>
						<input type="file" name="file" >
					</div>
					<div class="buttons">
						<button id="adding" type="submit">수정하기</button>
						<button id="cancel" type="button" onclick="cancleInsert()">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>