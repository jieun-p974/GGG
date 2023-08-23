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
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
<script src="${pageContext.request.contextPath}/resources/libs/OwlCarousel-2/dist/owl.carousel.min.js"></script>
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
													<a href="communityModify.do?board_no=75&amp;userId=seul" class="btn btn-warning btn-hover-secondery text-capitalize " style="padding: 15px;">수정</a>
												</c:if>
												<c:if test="${sessionScope.userId == community.id or sessionScope.userType == 2}">
													<a href="deleteCommunity.do?board_no=75&amp;userId=seul" class="btn btn-warning btn-hover-secondery text-capitalize " style="padding: 15px;">삭제</a>
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
											<!-- 좋아요 버튼 -->
											<div class="media-feed-control d-flex justify-content-end align-items-center" style="height:1rem">
												<c:if test="${community.likechk < 1}">
													<a href="like.do?board_no=${community.board_no}&id=${sessionScope.userId}&userId=${userId}" class="icon_links d-flex me-5"> 
														<img class="sns_icon_like me-1" src="/resources/imgs/heart.png" /> ${community.likecnt}
													</a>
												</c:if>
												<c:if test="${community.likechk > 0}">
													<a href="unlike.do?board_no=${community.board_no}&id=${sessionScope.userId}&userId=${userId}" class="icon_links d-flex me-5"> 
														<img class="sns_icon_like me-1" src="/resources/imgs/hearted.png" /> ${community.likecnt}
													</a>
												</c:if>
												<!-- 댓글 버튼  -->
												<input type="hidden" id="board_no" name="board_no" value="${community.board_no}" />
												<button class="icon_links me-5 p-0 d-flex showBtn" style="background: none; border: none;" id="showBtn">
													<img class="sns_icon_comment me-1" src="/resources/imgs/comment.png" /> ${community.replycnt}
												</button>
												<!-- 공유 버튼 -->
												<a href="#" class="icon_links">
													<img class="sns_icon_share me-2" src="/resources/imgs/share.png" />
												</a>
											</div>
											<hr style="margin: 0.5rem" />
											<!-- 댓글 달기 -->
											<div class="media-body-reply-block comments">
												<!-- 댓글작성 창 -->
												<form action="reply.do?userId=${userId}" method="post">
													<div class="replyWrite d-flex align-items-center">
														<img class="r_img col-sm-0" src="/resources/imgs/member/${sessionScope.userImgAddr}" />
														<p class="reply_id col-2 m-0 ms-2">@${userId}</p>
														<input type="hidden" id="idd" name="id" value="${userId}" /> 
														<input type="hidden" id="usert" name="mem_type_no" value="${userType}" /> 
														<input type="hidden" name="board_no" value="${community.board_no}" /> 
														<input name="com_content" class="com_content col-7" type="text" placeholder="댓글 입력">
														<button class="ms-4 btn btn-warning btn-hover-secondery text-capitalize " type="submit" style="padding: 15px;" >댓글등록</button>
													</div>
												</form>
												<hr style="margin: 0.5rem" />
												<div class="listRe">
													<div class="list" id="listRe">
														<!-- 댓글 달리는 위치 -->
                                          
													</div>
												</div>
											</div>
										</div>
									</li>
								</ul>
								<hr style="margin: 0.5rem" />
							</c:forEach>
						</div>
					</div>
						
						
						
						
			
			
					<div class="col-xxl-2 col-xl-2 col-lg-2 col-md-6 col-sm-6 col-12 tabs">
						<div class="row justify-content-center mt-5">
							<div class="col-lg-12 mb-4 d-flex justify-content-around">
								<a href="community.do?id=${userId}&userId=${userId}" class="btn btn-white-back btn-hover-third" style="padding:15px" >내 피드</a> 
								<a href="community.do?userId=${userId}" class="btn btn-white-back btn-hover-third" style="padding:15px" >전체 피드</a>
								<a href="communityWrite.do" class="btn btn-white-back btn-hover-third" style="padding:15px">글쓰기</a>
							</div>
							<form action="community.do" class="search">
								<div class="col-sm-12 mb-4 d-flex justify-content-around" >
									<select name="searchOption" class="searchOption">
										<option value="id">ID</option>
										<option value="hashTag">hashTag</option>
									</select>
									<input class="searchText col-7" type="text" name="id" placeholder=" 검색어 입력" id="autoComplete" />
									<input type="hidden" name="userId" value="${userId}" /> 
									<button class="btn btn-white-back btn-hover-third" style="padding:15px" >검색</button>
								</div>
							</form>
							<div class="col-sm-12">
								1위 #환경보호(100,200회)<br /> 
								2위 #제로웨이스트(50,123회)<br /> 
								3위 #플로깅(10,500회)<br />
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
		var dd = $(".showBtn").closest(".media-body").find("#listRe");
		$(".showBtn").click(function() {
			  $(".list").toggle();
			var board_no = $(this).closest(".media-body").find("#board_no").val();
			var here = $(this).closest(".media-body").find("#listRe");
			var userId = $("#idd").val();
			var userType = $("#usert").val();
			dd.html('');
		$.ajax({
			type : "post",
			url : "getReply.do",
			data : {
				"board_no" : board_no
			},
			success:function(rs){
               
				$(rs).each(function(){
					if(userId == this.id) {
						var html ='';
						html += '<div class="reply d-flex align-items-center m-1 p-1 justify-content-around" style="border: 1px solid black; border-radius: 15px">';
						html += '<div class="r_profile d-flex col-2 align-items-center ps-2">';
						html += '<img class="r_p_img col-sm-0-1" src="/resources/imgs/member/'+this.m_img_addr+'" />';
						html += '<p class="reply_id col-7 m-0 ms-2">@'+this.id+'</p></div>';
						html += '<input type="hidden" name="com_no" value="'+this.com_no+'" />';
						html += '<div class="re col-8">';
						html += '<div class="reWriting" id="reWriting" type="text" contentEditable="false">'+this.com_content+'</div>';
						html += '</div><div class="memButtons col-2 "><div class="memBtns d-flex justify-content-evenly  align-items-center">';
						html += '<input type="button" class="btn btn-warning btn-hover-secondery text-capitalize " style="padding: 10px;" onclick="reEdit()" value="수정" id="reEditBtn" />';
						html += '<a href="deleteReply.do?com_no='+this.com_no+'" class="btn btn-warning btn-hover-secondery text-capitalize " style="padding: 10px;">삭제</a>';
						html += '</div></div></div>';
                     
						here.append(html);
					} else if(userType == 2){
						var html ='';
						html += '<div class="reply d-flex align-items-center m-1 p-1 justify-content-around" style="border: 1px solid black; border-radius: 15px">';
						html += '<div class="r_profile d-flex col-2 align-items-center ps-2">';
						html += '<img class="r_p_img col-sm-0-1" src="/resources/imgs/member/'+this.m_img_addr+'" />';
						html += '<p class="reply_id col-7 m-0 ms-2">@'+this.id+'</p></div>';
						html += '<input type="hidden" name="com_no" value="'+this.com_no+'" />';
						html += '<div class="re col-8">';
						html += '<div class="reWriting" id="reWriting" type="text" contentEditable="false">'+this.com_content+'</div>';
						html += '</div><div class="memButtons col-2"><div class="memBtns d-flex justify-content-evenly  align-items-center">';
						html += '<a href="deleteReply.do?com_no='+this.com_no+'" class="btn btn-warning btn-hover-secondery text-capitalize " style="padding: 10px;">삭제</a>';
						html += '</div></div></div>';
                        
						here.append(html);
					} else {
						var html ='';
						html += '<div class="reply d-flex align-items-center m-1 p-1 justify-content-around" style="border: 1px solid black; border-radius: 15px">';
						html += '<div class="r_profile d-flex col-2 align-items-center ps-2">';
						html += '<img class="r_p_img col-sm-0-1" src="/resources/imgs/member/'+this.m_img_addr+'" />';
						html += '<p class="reply_id col-7 m-0 ms-2">@'+this.id+'</p></div>';
						html += '<input type="hidden" name="com_no" value="'+this.com_no+'" />';
						html += '<div class="re col-8	">';
						html += '<div class="reWriting" id="reWriting" type="text" contentEditable="false">'+this.com_content+'</div>';
						html += '</div><div class="memButtons col-2"><div class="memBtns d-flex justify-content-evenly  align-items-center">';
						html += '</div></div></div>';
                        
						here.append(html);
					}
				});
			},
			error:function(request, error){
				console.log("요청 실패");
				console.log("code:"+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
				}
			});
		});
	});
</script>
</body>
</html>