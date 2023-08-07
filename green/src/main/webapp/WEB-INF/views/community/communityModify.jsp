<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<link href="../../../resources/styles/communityWrite.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	function cancleWrite() {
		location.href = "community.do"
	}
</script>
<title>커뮤니티 글 수정하기</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="writeContainer">
			<%--	<form action="${contextPath}/board/itemUpload" method="post" enctype="multipart/form-data">  --%>
			
			<form action="updateCommunity.do" method="post" enctype="multipart/form-data">
				<div class="editing">
					<input type="hidden" name="id" value="${userId}" />
					<input type="hidden" name="board_no" value="${comm.board_no}" />
					<div class="text">
						<textarea name="b_content" id="b_content" autofocus="autofocus">${comm.b_content}</textarea>
					</div>
					<div class="comm_img">
						<label for="comm_img">사진 첨부하기1</label>
						<input type="file" name="file1" onchange="readURL1(this)" />
						<input type="hidden" name="b_img1_addr" value="${comm.b_img1_addr}" />
						<div id="previewDiv1">
							<img class="previewImg" src="/resources/imgs/communityImg/${comm.b_img1_addr}" style="border: 1px solid black" />
						</div>
						<label for="comm_img">사진 첨부하기2</label>
						<input type="file" name="file2" onchange="readURL2(this)" />
						<input type="hidden" name="b_img2_addr" value="${comm.b_img2_addr}" />
						<div id="previewDiv2">
							<img class="previewImg" src="/resources/imgs/communityImg/${comm.b_img2_addr}" style="border: 1px solid black" />
						</div>
						<label for="comm_img">사진 첨부하기3</label>
						<input type="file" name="file3" onchange="readURL3(this)" />
						<input type="hidden" name="b_img3_addr" value="${comm.b_img3_addr}" />
						<div id="previewDiv3">
							<img class="previewImg" src="/resources/imgs/communityImg/${comm.b_img3_addr}" style="border: 1px solid black" />
						</div>
					</div>
					<div class="buttons">
						<button id="adding" type="submit">수정하기</button>
						<button id="cancel" type="button" onclick="cancleWrite()">취소</button>
					</div>
				</div>
			</form>
		</div>
	</div>
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
