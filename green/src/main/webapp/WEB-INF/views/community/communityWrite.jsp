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
		location.href = "community.do?userId=${userId}"
	}
	
</script>
<title>커뮤니티 글 작성</title>
</head>
<body>
	<%@include file="../layouts/header.jsp" %>
	<section class="pricing position-relative overflow-hidden">
		<div class="container position-relative">
			<div class="row">
				<div
					class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
					<h2 class="text-black mb-0 mt-5 mb-3">커뮤니티 글 작성하기</h2>
				</div>
			</div>
			<div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
				<div class="card border-0 shadow">
					<div class="card-body">
						<div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
							<%-- <form action="${contextPath}/board/itemUpload" method="post" enctype="multipart/form-data"> --%>
							<form action="save.do" method="post" enctype="multipart/form-data" class="row col-12">
								<div class="editing">
									<div class="chal_name col-12 mb-3 p-3">
										<label for="b_content" class="col-12 mb-1 text-start">글 내용</label>
										<textarea name="b_content" id="b_content" placeholder="글을입력하세요" class="form-control"></textarea>
									</div>
									<input type="hidden" name="id" value="${userId}" />
									<input type="hidden" name="userId" value="${userId}" />
									<div class="comm_img  mb-3 col-12 p-3">
										<label for="comm_img" class="col-12 mb-1 text-start">사진 첨부하기1</label>
										<input type="file" name="file1" onchange="readURL1(this)" class="col-12 mb-1 text-start">
										<div id="previewDiv1" class="col-12 mb-1 text-start"></div>
									</div>
									<div class="comm_img  mb-3 col-12 p-3">
										<label for="comm_img" class="col-12 mb-1 text-start">사진 첨부하기2</label>
										<input type="file" name="file2" onchange="readURL2(this)" class="col-12 mb-1 text-start">
										<div id="previewDiv2" class="col-12 mb-1 text-start"></div>
									</div>	
									<div class="comm_img  mb-3 col-12 p-3">
										<label for="comm_img" class="col-12 mb-1 text-start">사진 첨부하기3</label>
										<input type="file" name="file3" onchange="readURL3(this)" class="col-12 mb-1 text-start">
										<div id="previewDiv3" class="col-12 mb-1 text-start"></div>
									</div>
									<div class="d-flex justify-content-between p-3">
										<button id="adding" type="submit" class="btn btn-white-back btn-hover-third">등록</button>
										<button id="cancel" type="button" onclick="cancleWrite()" class="btn btn-white-back btn-hover-third">취소</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@include file="../layouts/footer.jsp" %>

	   <script>
	   //1번 첨부파일 미리보기
        function readURL1(obj) {
            let reader = new FileReader();
            if(!obj.files.length) {   
                return;
            }
            reader.readAsDataURL(obj.files[0]);
            reader.onload = function (e) {
                let img = $('<img class="previewImg"/>');
                $(img).attr('src', e.target.result);
                $('#previewDiv1').append(img);
            }
        }
        //2번 첨부파일 미리보기
        function readURL2(obj) {
            let reader = new FileReader();
            if(!obj.files.length) {
                return;
            }
            reader.readAsDataURL(obj.files[0]);
            reader.onload = function (e) {
                let img = $('<img class="previewImg"/>');
                $(img).attr('src', e.target.result);
                $('#previewDiv2').append(img);
            }
        }
        //3번 첨부파일 미리보기
        function readURL3(obj) {
            let reader = new FileReader();
            if(!obj.files.length) {
                return;
            }
            reader.readAsDataURL(obj.files[0]);
            reader.onload = function (e) {
                let img = $('<img class="previewImg"/>');
                $(img).attr('src', e.target.result);
                $('#previewDiv3').append(img);
            }
        }
</script>
</body>
</html>