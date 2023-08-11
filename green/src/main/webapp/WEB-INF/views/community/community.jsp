<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
	function insert() {
		location.href = "communityWrite.do"
	}
</script>
<title>그린 커뮤니티</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="content">
			<div class="community-wrap">

				<!-- DB board -->
				<c:forEach items="${list}" var="community">
					<div class="community">
						<div class="content_left">
							<div class="profile">
								<!-- member 테이블에서 m_img 가져오기 (프로필 사진) -->
								<img class="p_img" src="/resources/imgs/member/${community.m_img_addr}" />
							</div>
						</div>
						<div class="contents">
							<!-- 작성자, 좋아요 & 댓글보기 버튼s -->
							<div class="content_top">
								<p class="id">@${community.id}</p>
								<div class="emojis">
									<button class="heart">
										<a href="like.do?board_no=${community.board_no}&id=${sessionScope.userId}" class="heart">❤</a>
									</button>
									<button class="comment" type="button" onclick="getReplyList()">
										<input type="hidden" name="board_no" value="${community.board_no}" />
										<a class="comment">💬</a>
									</button>
									<div class="share">공유</div>
								</div>
							</div>
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
							<pre class="writing"><c:out value="${community.b_content}"/></pre>
						</div>
						<!-- 수정, 삭제 버튼 로그인한 회원의 글에만 show & 관리자 로그인에 삭제 버튼 show -->
						<div class="memButtons">
							<div class="memBtns">
								<c:if test="${sessionScope.userId == community.id}">
									<button class="edit">
										<a href="communityModify.do?board_no=${community.board_no}" class="btn">수정하기</a>
									</button>
								</c:if>
								<c:if test="${sessionScope.userId == community.id or sessionScope.userType == 2}">
									<button class="edit">
										<a href="deleteCommunity.do?board_no=${community.board_no}" class="btn">삭제하기</a>
									</button>
								</c:if>
							</div>
						</div>
						<!-- 댓글 달기 -->
						<div class="comments">
							<!-- 댓글작성 창 -->
							<form action="reply.do" method="post">
								<div class="replyWrite">
									<img class="reply_img" src="/resources/imgs/member/${sessionScope.userImgAddr}" />
									<p class="reply_id">@${sessionScope.userId}</p>
									<input type="hidden" name="id" value="${userId}" />
									<input type="hidden" name="board_no" value="${community.board_no}" />
									<input name="com_content" class="com_content" type="text" placeholder=" 댓글 입력">
									<button class="replyBtn" type="submit">댓글등록</button>
								</div>
							</form>
		
						</div>
					</div>
		<%-- 			
					<c:forEach items="${list}" var="reply">
							<div class="reply">
									<!-- member 테이블에서 m_img 가져오기 (프로필 사진) -->
									<img class="r_img" src="/resources/imgs/member/${reply.m_img_addr}" />
								<p class="rid">@${reply.id}</p>
									<p class="rcom_content"> ${reply.com_content}</p>
							</div>
					</c:forEach>
						 --%>
				</c:forEach>
			</div>
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
				<%-- 검색어 자동완성이 보여질 구역 --%>
				<div id="displayList" style="border: solid 1px gray; height: 100px; overflow: auto; margin-left: 77px; margin-top; -1px; border-top: 0px;">
				</div>
				
				<div class="ranks">
					1위 #환경보호(100,200회)<br />
					2위 #제로웨이스트(50,123회)<br />
					3위 #플로깅(10,500회)<br />
				</div>
			</div>

			</div>

		</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
<script>
$("#displayList").hide();
// 검색어의 길이가 바뀔 때마다 호출
var wordLength = $(this).val().trim().length;
if(wordLength == 0){
			$("#displayList").hide();
		} else {
			$.ajax({
				url:"/wordSearchShow.action",
				type:"get",
				data:{"searchType": $("#searchType").val(),
					  "searchWord": $("#searchWord").val() },
				dataType:"json",
				success:function(json){
					if(json.length > 0){
						// 검색된 데이터가 있는 경우
						var html = "";
						$.each(json, function(index, item){
							var word = item.word;
                            // 검색목록들과 검색단어를 모두 소문자로 바꾼 후 검색단어가 나타난 곳의 index를 표시.
							var index = word.toLowerCase().indexOf( $("#searchWord").val().toLowerCase() );
							// jaVa -> java
							var len = $("#searchWord").val().length;
							// 검색한 단어를 파랑색으로 표현
							var result = word.substr(0, index) + "<span style='color:blue;'>"+word.substr(index, len)+"</span>" + word.substr(index+len);
							html += "<span class='result' style='cursor:pointer;'>" + result + "</span><br>";
						});
						
						var input_width = $("#searchWord").css("width"); // 검색어 input 태그 width 알아오기
						$("#displayList").css({"width":input_width}); // 검색 결과의 width와 일치시키기
						$("#displayList").html(html);
						$("#displayList").show();
					}
					
				},
				error: function(request, status, error){
	                alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
	            }
				
			});

		}
        
        // 자동완성 목록을 클릭하면 검색하기
	$(document).on('click', ".result", function(){
		var word = $(this).text();
		$("#searchWord").val(word);
		goSearch(); // 검색기능
	});
</script>
</html>

