<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/challengeInsert.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<%@include file="../layouts/header.jsp"%>
		<div class="chall_insert">
            <div class="insert_box">
            <p class="title">챌린지 등록</p>
                <form action="save.do" method="post">
                    <div class="chal_name">
                        <label for="chal_name">챌린지명</label>
                    <input type="text" name="chal_name" id="chal_name">
                    </div>
                    <div class="chal_start_date">
                        <label for="chal_start_date">챌린지 시작일</label>
                        <input type="text" name="chal_start_date" id="chal_start_date">
                    </div>
                    <div class="chal_end_date">
                        <label for="chal_end_date">챌린지 종료일</label>
                        <input type="text" name="chal_end_date" id="chal_end_date">
                    </div>
                    <div class="chal_ex">
                        <label for="chal_ex">챌린지 설명</label>
                        <textarea name="chal_ex" id="chal_ex" placeholder="챌린지 설명을 적어주세요"></textarea>
                    </div>
                    <div class="difficulty">
                        <label for="difficulty">챌린지 난이도</label>
                        <select name="difficulty" id="difficulty">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                    </div>
                    <div class="chal_img">
                        <label for="chal_img">챌린지 이미지</label>
                        <input type="file" name="chal_img" id="chal_img">
                    </div>
                    <div class="buttons">
                        <button id="adding" type="submit">등록</button>
                        <button id="cancel">취소</button>
                    </div>
                </form>
            </div>
        </div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>