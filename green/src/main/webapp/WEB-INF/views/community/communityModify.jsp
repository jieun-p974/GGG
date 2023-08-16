<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	function cancleWrite() {
		location.href = "community.do"
	}
</script>
<title>커뮤니티 글 수정하기</title>
</head>
<body>
	<%@include file="../layouts/header.jsp"%>
	<section class="pricing position-relative overflow-hidden">
		<div class="container position-relative">
			<div class="row">
				<div
					class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
					<h2 class="text-black mb-0 mt-5 mb-3">커뮤니티 글 수정하기</h2>
				</div>
			</div>
			<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
				<div class="card border-0 shadow">
					<div class="card-body">
						<div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
							<form action="updateCommunity.do" class="row" method="post" enctype="multipart/form-data">
									<input type="hidden" name="id" value="${userId}" /> 
									<input type="hidden" name="board_no" value="${comm.board_no}" />
									<div class="chal_name col-12 mb-3 p-3">
										<label for="b_content" class="col-12 mb-1 text-start">글 내용</label>
										<textarea class="form-control" name="b_content" id="b_content" autofocus="autofocus">${comm.b_content}</textarea>
									</div>
									<div class="comm_img  mb-3 col-12 p-3">
										<label for="comm_img" class="col-12 mb-1 text-start">사진 첨부하기1</label> 
										<input type="file" name="file1" onchange="readURL1(this)" class="col-12 mb-1 text-start" /> 
										<input type="hidden" name="b_img1_addr" value="${comm.b_img1_addr}" />
										<div id="previewDiv1" class="col-12 mb-1 text-start">
											<img class="previewImg" src="/resources/imgs/communityImg/${comm.b_img1_addr}" style="border: 1px solid black" alt="&nbsp;&nbsp;&nbsp;저장된 사진이 없습니다." />
										</div>
									</div>
									<div class="comm_img  mb-3 col-12 p-3">
										<label for="comm_img" class="col-12 mb-1 text-start">사진 첨부하기2</label> 
										<input type="file" name="file2" onchange="readURL2(this)" class="col-12 mb-1 text-start" /> 
										<input type="hidden" name="b_img2_addr" value="${comm.b_img2_addr}" />
										<div id="previewDiv2" class="col-12 mb-1 text-start">
											<img class="previewImg" src="/resources/imgs/communityImg/${comm.b_img2_addr}" style="border: 1px solid black" alt="&nbsp;&nbsp;&nbsp;저장된 사진이 없습니다." />
										</div>
									</div>
									<div class="comm_img  mb-3 col-12 p-3">
										<label for="comm_img" class="col-12 mb-1 text-start">사진 첨부하기3</label> 
										<input type="file" name="file3" onchange="readURL3(this)" class="col-12 mb-1 text-start" /> 
										<input type="hidden" name="b_img3_addr" value="${comm.b_img3_addr}" />
										<div id="previewDiv3" class="col-12 mb-1 text-start">
											<img class="previewImg" src="/resources/imgs/communityImg/${comm.b_img3_addr}" style="border: 1px solid black" alt="&nbsp;&nbsp;&nbsp;저장된 사진이 없습니다." />
										</div>
									</div>
									<div class="d-flex justify-content-between p-3">
										<button id="adding" class="btn btn-white-back btn-hover-third" type="submit">수정하기</button>
										<button id="cancel" class="btn btn-white-back btn-hover-third" type="button" onclick="cancleWrite()">취소</button>
									</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@include file="../layouts/footer.jsp"%>

	<script>
		//1번 첨부파일 미리보기
		function readURL1(obj) {
			let reader = new FileReader();
			if (!obj.files.length) {
				return;
			}
			reader.readAsDataURL(obj.files[0]);
			reader.onload = function(e) {
				let img = $('<img class="previewImg"/>');
				$(img).attr('src', e.target.result);
				$("#previewDiv1").empty();
				$('#previewDiv1').append(img);
			}
		}
		//2번 첨부파일 미리보기
		function readURL2(obj) {
			let reader = new FileReader();
			if (!obj.files.length) {
				return;
			}
			reader.readAsDataURL(obj.files[0]);
			reader.onload = function(e) {
				let img = $('<img class="previewImg"/>');
				$(img).attr('src', e.target.result);
				$("#previewDiv2").empty();
				$('#previewDiv2').append(img);
			}
		}
		//3번 첨부파일 미리보기
		function readURL3(obj) {
			let reader = new FileReader();
			if (!obj.files.length) {
				return;
			}
			reader.readAsDataURL(obj.files[0]);
			reader.onload = function(e) {
				let img = $('<img class="previewImg"/>');
				$(img).attr('src', e.target.result);
				$("#previewDiv3").empty();
				$('#previewDiv3').append(img);
			}
		}
	</script>
</body>
</html>
