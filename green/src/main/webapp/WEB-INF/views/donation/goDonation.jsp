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
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function donaPoint(pnt, min, unit) {
		//pnt:현재보유포인트,min:사용가능 최소포인트,unit:샤용단위
		var d_point = 0; //사용할 포인트
		if (pnt < min) {
			d_point = 0;
		} else {
			d_point = pnt - pnt % unit;
		}
		document.getElementById("givePoint").value = d_point;
		changePoint(pnt, min, unit);
	}
	function changePoint(pnt, min, unit) {
		var d_point = parseInt(document.getElementById("givePoint").value)
	}
</script>
<body>




	<div class="section1">
		<div class="memberInfo">
			<p class="info">아이디&nbsp&nbsp:&nbsp&nbsp${userId}</p>
			<p class="info">이름&nbsp&nbsp:&nbsp&nbsp${userName}</p>
			</div>
			<tr>
			<th>포 인 트</th>
			<td>사용가능 포인트 : <span name="left_pnt">${userPoint}</span>p <span>
			<input
					type="checkbox" id="chk_use"
					onclick="chkPoint(65000,7210,5000,100)">포인트 전체 사용</span>

		
			
			<span> <input type="number" name="use_pnt"
						id="use_pnt" min="10" max="65000"
						onchange="changePoint(65000,7210,5000,100)"></span> p <span>
						( 남은포인트 : </span><span name="left_pnt" id="left_pnt">620</span>p )
			</tr>

			<p class="info">
				기부할 포인트: <input type="text" name="givePoint" id="givePoint"
					placeholder="10포인트씩 사용가능합니다." />
			</p>

		</div>
		<div class="buttons">
			<button class="goDonaBtn" onclick="goDona()">기부하기</button>
		</div>


</body>
</html>