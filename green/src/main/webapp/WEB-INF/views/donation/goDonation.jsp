<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>Insert title here</title>
</head>
<script type="text/javascript">

	function chkPoint(pnt,min,unit) {
		//input값을 전체 마일리지로 설정 > minusPoint 
		//amt : 최초 결제 금액 / pnt : 사용가능,남은 포인트 / min : 사용 가능 최소 포인트 / unit : 사용단위
		
		var v_point = 0; //사용할 포인트 (input 입력값)

		if (document.getElementById("chk_use").checked) {
			if (pnt < min) //최소 사용 단위보다 작을 때
			{
				v_point = 0;
			} else {
				v_point = pnt - pnt % unit; //사용할 포인트 = 전체 마일리지 중 최소단위 이하 마일리지를 뺀 포인트
			}
		}
		document.getElementById("don_point").value = v_point; //input 값 설정
		changePoint(pnt,min,unit) ;
	}

	function changePoint(pnt,min,unit) {
		//input값을 불러옴 > left_pnt 변경 > 최종결제 변경
		// pnt : 사용가능,남은 포인트 / min : 사용 가능 최소 포인트 / unit : 사용단위
		var v_point = parseInt(document.getElementById("don_point").value); //사용할 포인트 (input 입력값)
		if (v_point > pnt) //입력값이 사용가능 포인트보다 클때
		{
			v_point = pnt;
			document.getElementById("don_point").value = v_point; //input 값 재설정
		}

		if (v_point < min) //최소 사용 단위보다 작을 때
		{
			alert("포인트를 올바르게 입력하세요");
			v_point = 0;
			document.getElementById("don_point").value = v_point; //input 값 재설정
		} else {
			v_point = v_point - v_point%unit; //사용할 포인트 = 사용할 마일리지 중 최소단위 이하 마일리지를 뺀 포인트
		}

		var v_left = document.getElementsByName("left_pnt"); //사용가능 마일리지, 남은 포인트 값 설정
		for (var i = 0; i < v_left.length; i++) {
			v_left[i].innerHTML = pnt-v_point; //= 전체 포인트 중에 사용할 포인트빼고 남은 포인트
		}
	
	}
	//비동기로 goDona한테 id랑 사용한 point넘기기 
/* function donabtn(){
	$.ajax({
		type:'post', // 전송방식
		async:true, // 비동신통신
	url:'goDona.do', // **** 요청
	contentType:'application/x-www-form-urlencoded;charset=UTF-8',
	data:{
		id: $("#id").val(),
		don_point:$("#don_point").val(),
		don_no:${don_no}
	},
	success : function(resultData) { // 성공하면 함수연결
		// alert("resultData = "+resultData)
		//$('#idCheckResult').html(resultData);
			}
		});  
	} */
	
</script>
<body>
	<form action="goDona.do">
		<table class="tbl_edit01">
			<colgroup>
				<col width="90px" />
				<col width="*" />
			</colgroup>
			<tbody>
				<div class="memberInfo">
					<p class="info" id="userID" name="userID">아이디&nbsp&nbsp:&nbsp&nbsp${meminfo.id}</p>
					<input type="hidden" value="${meminfo.id}" name="id" id="id">
					<input type="hidden" value="${don_no}" name="don_no" id="don_no">
					<p class="info">이름&nbsp&nbsp:&nbsp&nbsp${meminfo.name}</p>
				</div>

				<tr>
					<th>포 인 트</th>
					<td>보유 포인트 : 
						<span name="left_pnt" id="left_pnt">${meminfo.remainder_point} </span>p 
						<span>
							<input type="checkbox" id="chk_use" onclick="chkPoint(${meminfo.remainder_point},100,10)"> 포인트 전체 사용
						</span>
						<span style="float: right">포인트는 최소 100p부터 10p단위로 사용 가능합니다.</span>
					</td>
				</tr>
				<tr>
					<td>
						<span>
							<input type="number" name="don_point" step="10" id="don_point" min="100" max="${meminfo.remainder_point}" onchange="changePoint(${meminfo.remainder_point},100,10)"></span>p
						<span> ( 남은 포인트 : </span>
						<span name="left_pnt" id="left_pnt">${meminfo.remainder_point}</span>p)
					</td>
				</tr>
			</tbody>
		</table>
		<button type="submit">기부하기</button>
	</form>

</body>
</html>