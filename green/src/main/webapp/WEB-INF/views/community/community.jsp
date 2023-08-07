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
<link href="../../../resources/styles/community.css" rel="stylesheet" type="text/css">
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
								<!-- member 테이블에서 m_img 가져오기 -->
							 	<img class="p_img" src="/resources/imgs/member/${community.m_img_addr}"/> 
							</div>
							<div class="memBtns">
								<c:if test="${sessionScope.userId == community.id}">
									<button class="edit" >
										<a href="communityModify.do?board_no=${community.board_no}" class="btn">수정하기</a>
									</button>
								</c:if>
								<c:if
									test="${sessionScope.userId == community.id or sessionScope.userType == 2}">
									<button class="edit" >
										<a href="deleteCommunity.do?board_no=${community.board_no}" class="btn">삭제하기</a>
									</button>
								</c:if>
							</div>

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
								<c:if test="${community.b_img1_addr != null}">
									<img class="board_img"
										src="/resources/imgs/communityImg/${community.b_img1_addr}"
										style="border: 1px solid black" />
								</c:if>
								<c:if test="${community.b_img2_addr != null}">
									<img class="board_img"
										src="/resources/imgs/communityImg/${community.b_img2_addr}"
										style="border: 1px solid black" />
								</c:if>
								<c:if test="${community.b_img3_addr != null}">
									<img class="board_img"
										src="/resources/imgs/communityImg/${community.b_img3_addr}"
										style="border: 1px solid black" />
								</c:if>
							</div>
							<pre class="writing"><c:out value="${community.b_content}" /></pre>

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
					<button class="myBtn" >
						<a href="community.do?id=${sessionScope.userId}" class="myBtn">내 피드</a>
					</button>
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

