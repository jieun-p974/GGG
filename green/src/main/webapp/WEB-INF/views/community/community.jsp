<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link href="../../../resources/styles/cmnt.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
	<c:if test="${sessionScope.userId == null }">
		alert("로그인 하신 후 이용 가능합니다.");
		location.href = "../../index.jsp";
	</c:if>
</script>
<style type="text/css">
.icon_links {
	width: 2%;
}
.sns_icon_like {
	width: 100%;
}
.sns_icon_comment {
	width: 100%;
}
.sns_icon_share {
	width: 100%;
}
</style>
<title>그린 커뮤니티</title>
</head>
<body>
	<c:if test="${sessionScope.userType == 1}">
      <%@include file="../layouts/header.jsp"%>
   </c:if>
   <c:if test="${sessionScope.userType == 2}">
      <%@include file= "../layouts/adminHeader.jsp"%>
   </c:if>
   
	<section class="pricing position-relative overflow-hidden">
		<div class="container position-relative">
			<div class="row justify-content-center">
				<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12">
					<div class="card position-relative shadow border-0 h-100 col-xxl-11 col-xl-8 col-lg-8 col-md-6 col-sm-6 col-12">
						<div class="col-xxl-12 col-xl-8 col-lg-8 col-md-6 col-sm-6 col-12 d-flex justify-content-center">
							<div class="col-xxl-11 col-xl-11 col-lg-11 col-md-6 col-sm-6 col-12">
								<!-- DB board -->
								<c:forEach items="${list}" var="community">
									<ul class="list-unstyled mt-5">
										<li class="media d-flex justify-content-between">
									<div class=" col-2 ">
										<div class="d-flex justify-content-around align-items-end p-3">
											<c:if test="${sessionScope.userId == community.id}">
												<a href="communityModify.do?board_no=${community.board_no}" class="btn btn-warning btn-hover-secondery p-1">수정</a>
											</c:if>
											<c:if test="${sessionScope.userId == community.id or sessionScope.userType == 2}">
												<a href="deleteCommunity.do?board_no=${community.board_no}" class="btn btn-warning btn-hover-secondery p-1">삭제</a>
											</c:if>
										</div>
										<div class="profile-picture justify-content-center d-flex p-3">
											<img class="p_img " src="/resources/imgs/member/${community.m_img_addr}" >
										</div>
									</div>
										<div class="media-body col-10 ">
											<div class="row">
												<div class="d-flex justify-content-between">
													<div class="media-title mt-0 mb-1 col-8 fw-bold h4">@${community.id}</div>
												</div>
												<div>
													<!-- 등록된 사진이 있을 시 출력 -->
													<div class="b_img">
														<c:if test="${community.b_img1_addr != null}">
															<img class="board_img" src="/resources/imgs/communityImg/${community.b_img1_addr}" />
														</c:if>
														<c:if test="${community.b_img2_addr != null}">
															<img class="board_img" src="/resources/imgs/communityImg/${community.b_img2_addr}" />
														</c:if>
														<c:if test="${community.b_img3_addr != null}">
															<img class="board_img" src="/resources/imgs/communityImg/${community.b_img3_addr}" />
														</c:if>
													</div>
													<!-- 등록된 글 내용 -->
													<pre class="writing p-3 mt-3" ><c:out value="${community.b_content}" /></pre>
												</div>
											</div>
											<hr style="margin: 0.5rem" />
											<div class="media-feed-control d-flex justify-content-end">
												<a href="like.do?board_no=${community.board_no}&id=${sessionScope.userId}" class="icon_links me-2"> 
													<img class="sns_icon_like" src="/resources/imgs/heart.png" />${community.likecnt}
												</a>
												<input type="hidden" name="board_no" value="${community.board_no}" />
												<button class="icon_links me-2 p-0 showBtn" style="background: none; border: none;" id="showBtn">
													<img class="sns_icon_comment" src="/resources/imgs/comment.png" />
												</button>
												<a href="#" class="icon_links">
													<img class="sns_icon_share me-2" src="/resources/imgs/share.png" />
												</a>
											</div>
											<hr style="margin: 0.5rem" />
											<!-- 댓글 달기 -->
											<div class="media-body-reply-block comments">
												<!-- 댓글작성 창 -->
												<form action="reply.do" method="post">
													<div class="replyWrite d-flex align-items-center">
														<img class="r_img col-sm-0" src="/resources/imgs/member/${sessionScope.userImgAddr}" />
														<p class="reply_id col-2 m-0 ms-2">@${sessionScope.userId}</p>
														<input type="hidden" name="id" value="${userId}" /> 
														<input type="hidden" name="board_no" value="${community.board_no}" /> 
														<input name="com_content" class="com_content col-7" type="text" placeholder="댓글 입력">
														<button class="btn btn-warning btn-hover-secondery text-black col-2 replyBtn" type="submit">댓글등록</button>
													</div>
												</form>
												<hr style="margin: 0.5rem" />
												<div class="listRe">
													<div class="list" id="listRe">
														<c:forEach items="${listRe}" var="reply">
															<c:if test="${community.board_no == reply.board_no}">
																<div class="reply d-flex align-items-center m-1 p-1" style="border: 1px solid black; border-radius: 15px">
																	<div class="r_profile d-flex col-3 align-items-center p-2">
																		<!-- member 테이블에서 m_img 가져오기 (프로필 사진) -->
																		<img class="r_p_img col-sm-0-1" src="/resources/imgs/member/${reply.m_img_addr}" />
																		<p class="reply_id col-7 m-0 ms-2">@${reply.id}</p>
																	</div>
																	<input type="hidden" name="com_no" value="${reply.com_no}" />
																	<div class="re col-6">
																		<!-- 등록된 글 내용 -->
																		<div class="reWriting" id="reWriting" type="text" contentEditable="false">${reply.com_content}</div>
																	</div>
																	<!-- 수정, 삭제 버튼 로그인한 회원의 글에만 show & 관리자 로그인에 삭제 버튼 show -->
																	<div class="memButtons col-3">
																		<div class="memBtns">
																			<c:if test="${sessionScope.userId == reply.id}">
																				<input type="button" class="edit btn btn-warning btn-hover-secondery text-black" onclick="reEdit()" value="수정" id="reEditBtn" />
																			</c:if>
																			<c:if test="${sessionScope.userId == reply.id or sessionScope.userType == 2}">
																				<a href="deleteReply.do?com_no=${reply.com_no}" class="btn btn-warning btn-hover-secondery text-black">삭제</a>
																			</c:if>
																		</div>
																	</div>
																</div>
															</c:if>
														</c:forEach>
													</div>
												</div>
											</div>
										</div>
									</li>
								</ul>
								<hr />
							</c:forEach>
						</div>
					</div>
						
						
						
						
						
						
<%-- 						
									<!-- 오른쪽 고정  -->
			<div class="tabs">
				<div class="buttons">
					<button class="myBtn">
						<a href="community.do?id=${sessionScope.userId}" class="myBtn">내 피드</a>
					</button>
					<button class="myBtn">
						<a href="community.do" class="myBtn">전체 피드</a>
					</button>
					<button class="writeBtn" id="writeBtn" onclick="insert()">글쓰기</button>
				</div>
				
				<form action="community.do" class="search">
					<select name="searchOption" class="searchOption">
						<option value="id">ID</option>
						<option value="hashTag">hashTag</option>
					</select>
					<input class="searchText" type="text" name="id" placeholder=" 검색어 입력" id="autoComplete">
					<button class="searching">검색</button>
				</form>
				
				<div class="ranks">
					1위 #환경보호(100,200회)<br />
					2위 #제로웨이스트(50,123회)<br />
					3위 #플로깅(10,500회)<br />
				</div>
			</div>

			</div>
			 --%>
			
			
			
			
			
			
			
			
			
					<div class="col-xxl-2 col-xl-2 col-lg-2 col-md-6 col-sm-6 col-12 tabs">
						<div class="row">
							<div class="col-lg-12 mb-5">
								<a href="community.do?id=${sessionScope.userId}" class="btn btn-white-back btn-hover-third">내 피드</a> 
								<a href="community.do" class="btn btn-white-back btn-hover-third" ">전체 피드</a>
								<a href="communityWrite.do" class="btn btn-white-back btn-hover-third">글쓰기</a>
							</div>
							<form action="community.do" class="search">
							<div class="col-sm-12 mb-4" >
							<select name="searchOption" class="searchOption">
								<option value="id">ID</option>
								<option value="hashTag">hashTag</option>
							</select>
								<input class="searchText" type="text" name="id" placeholder=" 검색어 입력" id="autoComplete">
								<button class="btn btn-white-back btn-hover-third">검색</button>
							</div>
							</form>
							<div class="col-sm-12">
								1위 #환경보호(100,200회)<br /> 2위 #제로웨이스트(50,123회)<br /> 3위
								#플로깅(10,500회)<br />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<%@include file="../layouts/footer.jsp"%>
<script src="/resources/js/custom.js"></script>
<script type="text/javascript">
	$(function() {
		$(".showBtn").click(function() {
			console.log("버튼 클릭");
			$(this).closest(".hey").find(".reply").addClass("dd");
			/* $(this).closest(".hey").find(".list").show();
			$(".reply").show(); */
		});
	});
</script>
</body>
</html>