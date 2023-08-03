<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:if test="${sessionScope.userId == null }">
	<script>
		alert("로그인 하신 후 이용 가능합니다.");
		location.href = "../../index.jsp";
	</script>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/community.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<script type="text/javascript">
	function insert() {
		location.href = "communityWrite.do"
	}
</script>
<title>커뮤니티</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="content">
			<div class="community-wrap">

				<c:forEach items="${list}" var="community">
					<div class="community">
						<div class="content_left">
							<div class="profile">
								<img src="" alt="" class="p_img" />
								<!-- member 테이블에서 m_img 가져오기 -->

							</div>
							<c:if test="${sessionScope.userId == community.id}">
								<div class="memBtns">
									<button class="editBtn" id="editBtn">수정</button>
									<button class="deleteBtn" id="deleteBtn">삭제</button>
								</div>
							</c:if>

						</div>
						<div class="contents">
							<div class="content_top">
								<p class="id">@${community.id}</p>
								<div class="emojis">
									<div class="heart">❤</div>
									<div class="comment">💬</div>
									<div class="share">공유</div>
								</div>
							</div>
							<div class="b_img">
								<img class="board_img" src="${community.b_img1}" /> <img
									class="board_img" src="${community.b_img2}" /> <img
									class="board_img" src="${community.b_img3}" />
							</div>
							<a class="writing">${community.b_content}</a>

							<div class="comments">
								<!-- 반목문 돌려서 가져오기 -->
								ㄴ@geegeegee 무조건 합니다~
								<!-- board_no 따서 reply 테이블에서 id,com_content 가져오기 -->
							</div>


						</div>
					</div>
				</c:forEach>

			</div>

			<div class="tabs">
				<div class="buttons">
					<button class="myBtn">내 피드</button>
					<button class="writeBtn" id="writeBtn" onclick="insert()">글쓰기</button>
				</div>
				<div class="searching">
					<input type="text" placeholder="search">
				</div>
				<div class="ranks">
					1위 #환경보호(100,200회)<br /> 2위 #제로웨이스트(50,123회)<br /> 3위
					#플로깅(10,500회)<br />
				</div>
			</div>

		</div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>

