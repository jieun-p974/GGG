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
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/challengeCertification.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>챌린지 관리</title>
<%
	String req = request.getParameter("m_c_no");
	int m_c_no = Integer.parseInt(req);
%>
</head>
<body>
	<div class="container">
		<%@include file="../layouts/header.jsp"%>
		<div class="certification">
        <div class="upload"></div>
            <p class="title"><span class="bold">님</span> 챌린지 인증 페이지입니다.</p>
            <p class="status">(/)번째</p>
            <form action="/challenge/goCertification.do" name="form" id="form" method="post" enctype="multipart/form-data">
            	<input type="hidden" name="m_c_no" value="<%=m_c_no%>"/>
                <input type="file" name="file" id="file">
                <br/>
                <button type="submit">인증하기</button>
                <button type="reset">취소</button>
            </form>
        </div>
    </div>
	</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>