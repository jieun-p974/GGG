<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/donationGak.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>Insert title here</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="alls">
			<div class="main">
				<div class="title">
					<p>용기 있는 행동에 힘을 보태고 싶습니다.</p>
					<button class="donaBtn">기부하기</button>
				</div>
				<div class="barUpper">
					<p class="nowPer">80%</p>
					<div class="d_day">D-75</div>
				</div>
				<div class="bars">
					<div class="totalbar"></div>
					<div class="nowbar"></div>
				</div>
				<div class="barDown">
					<div class="donadate">2023.07.20 ~ 2023.09.03까지</div>
					<div class="nowpoint">843,216/ 1,000,000 Point</div>
				</div>

				<div class="buttons">
					<button class="introduce">모금함 소개</button>
					<button class="news">소식</button>
				</div>
			</div>
			<div class="content">
				<div class="logo_intro">
					<img class="logos" src="../../../resources/imgs/logo4.png" />
					<h1 class="ggg">
						GGG는 작은 실천에서부터 지구, 환경, 동물을 지키자는 취지에서 시작된 단체입니다.<br />멸종위기동물과 함께하는
						환경보호 챌린지, 기부 연계 등을 주 사업으로 하고 있습니다.<br />모금된 금액은 플로깅을 정기적으로 실시하고
						있는 단체들에 지원될 예정입니다.
					</h1>
				</div>
				<img class="pic" src="" />
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>