<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/adminMain.css" rel="stylesheet"
	type="text/css">
	
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>관리자 메인</title>
</head>
<body>
	<div class="container ">
		<h4 style="fontcolor=red"> ${userId} ${userName} ${sessionTime} 접속  </h4>
		<%@include file="../layouts/adminHeader.jsp"%>
		<div class="admin_main">
			<div class="main">
				<div class="gongji">공지</div>
				<div class="gongji_list">
					<table class="gongji_table">
						<thead>
							<th colspan="2">글목록</th>
						</thead>
						<tr>
							<td>2023.07.26</td>
							<td>기부처 추가 관련 공지</td>
						</tr>
						<tr>
							<td>2023.07.16</td>
							<td>기부처 추가 관련 공지</td>
						</tr>
						<tr>
							<td>2023.07.01</td>
							<td>기부처 추가 관련 공지</td>
						</tr>
						<tr>
							<td>2023.06.28</td>
							<td>기부처 추가 관련 공지</td>
						</tr>
					</table>
					<button class="post" onclick="location.href='../community/notification.do'">글 작성</button>
<<<<<<< HEAD
=======
				
					<button class="post" onclick="location.href='../dogam/dogamWrite.do'">도감추가</button>
				
				
>>>>>>> refs/remotes/origin/main
				</div>
			</div>
			<div class="main2">
				<div class="checkList">
					<p class="txt">인증관리</p>
					<div class="check_content">
						<table class="gongji_table">
							<thead>
								<th colspan="2">글목록</th>
							</thead>
							<tr>
								<td>2023.07.26</td>
								<td>기부처 추가 관련 공지</td>
							</tr>
							<tr>
								<td>2023.07.16</td>
								<td>기부처 추가 관련 공지</td>
							</tr>
							<tr>
								<td>2023.07.01</td>
								<td>기부처 추가 관련 공지</td>
							</tr>
							<tr>
								<td>2023.06.28</td>
								<td>기부처 추가 관련 공지</td>
							</tr>
						</table>
						<button class="post" onclick="location.href='../challenge/adminChallenge.do'">인증 관리</button>
					</div>
				</div>
				<div class="commuList">
					<p class="txt">게시글 목록</p>
					<div class="commu_content">
						<table class="gongji_table">
							<thead>
								<th colspan="2">글목록</th>
							</thead>
							<tr>
								<td>2023.07.26</td>
								<td>기부처 추가 관련 공지</td>
							</tr>
							<tr>
								<td>2023.07.16</td>
								<td>기부처 추가 관련 공지</td>
							</tr>
							<tr>
								<td>2023.07.01</td>
								<td>기부처 추가 관련 공지</td>
							</tr>
							<tr>
								<td>2023.06.28</td>
								<td>기부처 추가 관련 공지</td>
							</tr>
						</table>
						<button class="post" onclick="location.href='../community/community.do'">게시글 관리</button>
					</div>
				</div>
				<div class="newsList">
					<p class="txt">뉴스목록</p>
					<div class="news_content">
						<table class="gongji_table">
							<thead>
								<th colspan="2">글목록</th>
							</thead>
							<tr>
								<td>2023.07.26</td>
								<td>기부처 추가 관련 공지</td>
							</tr>
							<tr>
								<td>2023.07.16</td>
								<td>기부처 추가 관련 공지</td>
							</tr>
							<tr>
								<td>2023.07.01</td>
								<td>기부처 추가 관련 공지</td>
							</tr>
							<tr>
								<td>2023.06.28</td>
								<td>기부처 추가 관련 공지</td>
							</tr>
						</table>
						<button class="post" onclick="location.href='../news/newsWrite.do'">뉴스 작성</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>