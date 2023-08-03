<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/newsCheck.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>뉴스 관리</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="newsCheckList">
			<div class="title">뉴스 관리 페이지</div>
			<div class="list">
				<table class="news">
					<thead>
						<th>순서</th>
						<th>썸네일</th>
						<th>뉴스 제목</th>
						<th>작성일</th>
						<th>수정</th>
						<th>삭제</th>
					</thead>
					<tr>
						<td>1</td>
						<td><img src="" alt="" class="thumnail"></td>
						<td>기후 위기가 바꿔 놓은 우리네 식탁</td>
						<td>2023.07.06</td>
						<td><button>수정</button></td>
						<td><button>삭제</button></td>
					</tr>
					<tr>
						<td>2</td>
						<td><img src="" alt="" class="thumnail"></td>
						<td>푸바오로 보는 동물 외교의 현실</td>
						<td>2023.07.11</td>
						<td><button>수정</button></td>
						<td><button>삭제</button></td>
					</tr>
					<tr>
						<td>3</td>
						<td><img src="" alt="" class="thumnail"></td>
						<td>이마트, 플라스틱 분리배출 경험 공간 마련</td>
						<td>2023.07.14</td>
						<td><button>수정</button></td>
						<td><button>삭제</button></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>