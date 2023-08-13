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
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="/resources/js/custom.js"></script>
<link href="../../../resources/styles/cmnt.css" rel="stylesheet" type="text/css">
<!-- <link href="../../../resources/styles/community.css" rel="stylesheet" type="text/css"> -->
<script type="text/javascript">
	function insert() {
		location.href = "communityWrite.do"
	}
</script>
<style type="text/css">
.icon_links{
	width:2%;
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
	<%@include file="../layouts/header.jsp"%>
	<section class="pricing position-relative overflow-hidden">
		<div class="container position-relative">
			<div class="row justify-content-center">
				<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12">
					<div
						class="card position-relative shadow border-0 h-100 col-xxl-11 col-xl-8 col-lg-8 col-md-6 col-sm-6 col-12">
						<div
							class="col-xxl-12 col-xl-8 col-lg-8 col-md-6 col-sm-6 col-12 d-flex justify-content-center">
							<div
								class="col-xxl-11 col-xl-11 col-lg-11 col-md-6 col-sm-6 col-12">
								<c:forEach items="${list}" var="community">
									<ul class="list-unstyled mt-5">
										<li class="media d-flex justify-content-between">
											<div class="profile-picture row col-2 align-items-center">
												<img class="p_img"
													src="/resources/imgs/member/${community.m_img_addr}" />
													<c:if test="${sessionScope.userId == community.id}">
														<a
															href="communityModify.do?board_no=${community.board_no}"
															class="btn btn-warning btn-hover-secondery text-black">수정하기</a>
													</c:if>
													<c:if
														test="${sessionScope.userId == community.id or sessionScope.userType == 2}">
														<a
															href="deleteCommunity.do?board_no=${community.board_no}"
															class="btn btn-warning btn-hover-secondery text-black">삭제하기</a>

													</c:if>
											</div>
											<div class="media-body col-10">
												<div class="row">
													<div class="d-flex justify-content-between">
														<div class="media-title mt-0 mb-1 col-8">@${community.id}</div>
													</div>
													<div>
														<!-- 등록된 사진이 있을 시 출력 -->
														<div class="b_img">
															<c:if test="${community.b_img1_addr != null}">
																<img class="board_img"
																	src="/resources/imgs/communityImg/${community.b_img1_addr}" />
															</c:if>
															<c:if test="${community.b_img2_addr != null}">
																<img class="board_img"
																	src="/resources/imgs/communityImg/${community.b_img2_addr}" />
															</c:if>
															<c:if test="${community.b_img3_addr != null}">
																<img class="board_img"
																	src="/resources/imgs/communityImg/${community.b_img3_addr}" />
															</c:if>
														</div>
														<!-- 등록된 글 내용 -->
														<p class="writing">
															<c:out value="${community.b_content}" />
														</p>
													</div>
												</div>
												<hr style="margin:0.5rem" />
												<div class="media-feed-control d-flex justify-content-end">
													<a href="#" class="icon_links me-2"> <img class="sns_icon_like"
														src="/resources/imgs/heart.png" />
													</a> 
													<a href="getReply.do?board_no=${community.board_no}" class="icon_links me-2">
														<img class="sns_icon_comment"
														src="/resources/imgs/comment.png" />
													</a> 
													<a href="#" class="icon_links"> <img class="sns_icon_share me-2"
														src="/resources/imgs/share.png" />
													</a>
												</div>
												<hr style="margin:0.5rem" />
												<div class="media-body-reply-block">
													<!-- 댓글작성 창 -->
													<form action="reply.do" method="post">
														<div class="replyWrite d-flex align-items-center">
															<img class="r_img col-1" src="/resources/imgs/member/${sessionScope.userImgAddr}" />
															<p class="reply_id col-2 m-0">@${sessionScope.userId}</p>
															<input type="hidden" name="id" value="${userId}" /> 
															<input type="hidden" name="board_no" value="${community.board_no}" /> 
															<input name="com_content" class="com_content col-7" type="text" placeholder="댓글 입력">
															<button class="btn btn-warning btn-hover-secondery text-black col-2" type="submit">댓글등록</button>
														</div>
													</form>
													<ul class="list-unstyled">
														<!-- 게시 글에 달린 댓글 출력 댓글보기 버튼에 toggle -->
														<c:if test="${community.board_no != null}">
															<c:forEach items="${listRe}" var="community">
																<li class="media mt-4"><input type="hidden"
																	name="board_no" value="${community.board_no}" />
																	<div
																		class="profile-picture bg-gradient bg-primary mb-4">
																		<img class="p_img"
																			src="/resources/imgs/member/${community.m_img_addr}" />
																		<div class="media-body">
																			<div class="media-title mt-0 mb-1">
																				@${community.id}</div>
																			${community.com_content}
																		</div></li>
															</c:forEach>
														</c:if>
													</ul>
													<table align="center" width="500" border="1" id="rtb">
														<thead>
															<td colspan="4"><b id="rCount">댓글목록</b></td>
														</thead>
														<tbody>
														</tbody>
													</table>
												</div>
											</div>
										</li>
									</ul>
									<hr/>
								</c:forEach>
							</div>
						</div>
						<div
							class="col-xxl-2 col-xl-2 col-lg-2 col-md-6 col-sm-6 col-12 tabs">
							<div class="row">
								<div class="col-lg-12 mb-4">
									<a href="community.do?id=${sessionScope.userId}"
										class="btn btn-warning btn-hover-secondery ">내 피드</a> <a
										href="communityWrite.do"
										class="btn btn-warning btn-hover-secondery ">글쓰기</a>
								</div>
								<div class="col-sm-12">
									<input type="text" placeholder="search">
								</div>
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
		<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>
		<script type="text/javascript">
			function getReplyList() {
				var board = "${community.board_no}";
				$
						.ajax({
							url : "getReply.do",
							data : {
								"board_no" : board_no
							},
							type : "get",
							success : function(result) { //댓글목록 불러오는 함수
								var $tableBody = $('#rtb tbody'); //$는 의미없음 그냥 변수명 중 하나
								$tableBody.html(''); //tbody를 초기화 시켜야 댓글 목록의 중첩을 막을수 있음 아니면 등록할떄마다 append로 이어짐
								$('#rCount').text("댓글 (" + result.length + ")") //댓글수 출력
								if (result != null) {
									console.log(result);
									for ( var i in result) {
										var $tr = $("<tr>");
										var $rWriter = $("<td width='100'>")
												.text(result[i].replyWirter);
										var $rContent = $("<td>").text(
												result[i].replyContents);
										var $rCreatDate = $("<td width='100'>")
												.text(result[i].rCreateDate);
										var $btnArea = $("<td width='80'>")
												.append(
														"<a href='modifyreply(${community.board_no})'>수정</a>")
												.append("<a href='#'>삭제</a>");

										$tr.append($rWriter);
										$tr.append($rContent);
										$tr.append($rCreatDate);
										$tr.append($btnArea);
										$tableBody.append($tr);

									}
								}

							},
							error : function() {
								console.log("요청실패");

							}
						})
				var $tableBody = $('#rtb tbody');
				for ( var i in result) {
					var $tr = $("<tr>");
					var $rWriter = $("<td width='100'>").text(
							result[i].replyWirter);
					var $rContent = $("<td>").text(result[i].replyContents);
					var $rCreatDate = $("<td width='100'>").text(
							result[i].rCreateDate);
					var $btnArea = $("<td width='80'>")
							.append(
									"<a href='modifyreply(${community.board_no})'>수정</a>")
							.append("<a href='#'>삭제</a>");

					$tr.append($rWriter);
					$tr.append($rContent);
					$tr.append($rCreatDate);
					$tr.append($btnArea);
					$tableBody.append($tr);

				}

			}
		</script>
		<!-- Code injected by live-server -->
		<script>
			// <![CDATA[  <-- For SVG support
			if ('WebSocket' in window) {
				(function() {
					function refreshCSS() {
						var sheets = [].slice.call(document
								.getElementsByTagName("link"));
						var head = document.getElementsByTagName("head")[0];
						for (var i = 0; i < sheets.length; ++i) {
							var elem = sheets[i];
							var parent = elem.parentElement || head;
							parent.removeChild(elem);
							var rel = elem.rel;
							if (elem.href && typeof rel != "string"
									|| rel.length == 0
									|| rel.toLowerCase() == "stylesheet") {
								var url = elem.href.replace(
										/(&|\?)_cacheOverride=\d+/, '');
								elem.href = url
										+ (url.indexOf('?') >= 0 ? '&' : '?')
										+ '_cacheOverride='
										+ (new Date().valueOf());
							}
							parent.appendChild(elem);
						}
					}
					var protocol = window.location.protocol === 'http:' ? 'ws://'
							: 'wss://';
					var address = protocol + window.location.host
							+ window.location.pathname + '/ws';
					var socket = new WebSocket(address);
					socket.onmessage = function(msg) {
						if (msg.data == 'reload')
							window.location.reload();
						else if (msg.data == 'refreshcss')
							refreshCSS();
					};
					if (sessionStorage
							&& !sessionStorage
									.getItem('IsThisFirstTime_Log_From_LiveServer')) {
						console.log('Live reload enabled.');
						sessionStorage.setItem(
								'IsThisFirstTime_Log_From_LiveServer', true);
					}
				})();
			} else {
				console
						.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
			}
			// ]]>
		</script>
	</section>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>

