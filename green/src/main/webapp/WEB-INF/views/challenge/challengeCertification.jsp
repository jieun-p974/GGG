<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>챌린지 관리</title>
<%
	String req = request.getParameter("m_c_no");
int m_c_no = Integer.parseInt(req);
%>
</head>
<body>
	<%@include file="../layouts/header.jsp"%>
	<section class="pricing position-relative overflow-hidden">
		<div class="container position-relative">
			<div class="d-flex justify-content-center mt-5">
				<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6">
					<h2 class="text-black mb-0 mt-5 mb-3">${userId}님챌린지인증페이지입니다.</h2>
					<div class="card position-relative shadow border-0 h-100">
						<div class="card-body p-3">
							<div class="ms-3 row align-content-between">
								<div class="checking_content">
									<div class="status">
										<div class="sticker">
											<p class="s_txt">번째 인증입니다.</p>

										</div>
									</div>
								</div>
								<form action="/challenge/goCertification.do" name="form"
								id="form" method="post" enctype="multipart/form-data">
								<input type="hidden" name="m_c_no" value="<%=m_c_no%>" /> <input
									type="file" name="file" id="file"> <br />
								<div class="d-flex justify-content-between">
									<button class="btn btn-warning btn-hover-secondery"
										type="submit">인증하기</button>
									<button class="btn btn-warning btn-hover-secondery"
										type="reset">취소</button>
								</div>
							</form>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>