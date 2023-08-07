<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link href="../../../resources/styles/challengeInsert.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<script type="text/javascript">
	$(function(){
		var checkedValue = "${chall.difficulty}";
		 $.datepicker.setDefaults($.datepicker.regional['ko']);
		 $("#chal_start_date").datepicker({
			 changeMonth: true, 
             changeYear: true,
             nextText: '다음 달',
             prevText: '이전 달', 
             dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
             dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
             monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
             monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
             dateFormat: "yy-mm-dd",
             maxDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
             onClose: function( selectedDate ) {    
                  //시작일(startDate) datepicker가 닫힐때
                  //종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                 $("#endDate").datepicker( "option", "minDate", selectedDate );
             }    
		 });
		 $("#chal_end_date").datepicker({
			 changeMonth: true, 
             changeYear: true,
             nextText: '다음 달',
             prevText: '이전 달', 
             dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
             dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
             monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
             monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
             dateFormat: "yy-mm-dd",
             maxDate: 50,                       // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가)
             onClose: function( selectedDate ) {    
                 // 종료일(endDate) datepicker가 닫힐때
                 // 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
                 $("#startDate").datepicker( "option", "maxDate", selectedDate );
             }    
		 });
		 $("#difficulty").val(checkedValue);
	});
</script>
<title>챌린지 수정</title>
</head>
<body>
	<div class="container">
		<%@include file="../layouts/adminHeader.jsp"%>
		<div class="chall_insert">
            <div class="insert_box">
            <p class="title">챌린지 수정</p>
                <form action="updateChallenge.do" method="post">
                	<input name="chal_no" type="hidden" value="${chall.chal_no}">
                    <div class="chal_name">
                        <label for="chal_name">챌린지명</label>
                    <input type="text" name="chal_name" id="chal_name" value="${chall.chal_name}">
                    </div>
                    <div class="chal_start_date">
						<label for="chal_start_date">챌린지 시작일</label> 
						<input type="text" name="chal_start_date" id="chal_start_date" value="${chall.chal_start_date}" autocomplete="off" >
					</div>
					<div class="chal_end_date">
						<label for="chal_end_date">챌린지 종료일</label> 
						<input type="text" name="chal_end_date" id="chal_end_date" value="${chall.chal_end_date}" autocomplete="off" >
					</div>
                    <div class="chal_ex">
                        <label for="chal_ex">챌린지 설명</label>
                        <textarea name="chal_ex" id="chal_ex" placeholder="챌린지 설명을 적어주세요">${chall.chal_ex}</textarea>
                    </div>
                     <div class="chal_check_method">
                        <label for="chal_check_method">챌린지 설명</label>
                        <textarea name="chal_check_method" id="chal_check_method" placeholder="챌린지 인증방법을 적어주세요">${chall.chal_check_method}</textarea>
                    </div>
                    <div class="difficulty">
                        <label for="difficulty">챌린지 난이도</label>
                        <select name="difficulty" id="difficulty" value="${chall.difficulty}">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div>
                    <div class="chal_img">
                        <label for="chal_img">챌린지 이미지</label>
                        <input type="file" name="chal_img" id="chal_img">
                    </div>
                    <div class="buttons">
                        <button id="adding" type="submit">수정하기</button>
                        <button id="cancel" type="button" onclick="cancel()">취소</button>
                    </div>
                </form>
            </div>
        </div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>