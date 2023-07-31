<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/community.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>커뮤니티</title>
</head>
<body>
	<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="content">
      <div class="community-wrap">
        <div class="community">
          <div class="profile">
            <img src="" alt="" class="p_img">
          </div>
          <div class="contents">
            <div class="id">geegeegee</div>
            <div class="writing">챌린지 너무 재밌다!</div>
            <div class="emojis">
              <div class="heart">❤</div>
              <div class="comment">💬</div>
              <div class="share">공유</div>
            </div>
            <div class="comments"></div>
          </div>
          
        </div>
        <div class="community">
          <div class="profile">
            <img src="" alt="" class="p_img">
          </div>
          <div class="contents">
            <div class="id">memessi</div>
            <div class="writing">
              <img src="" alt="" class="com-img">
              <img src="" alt="" class="com-img">
              이번 주말에 플로깅 다녀왔는데 꿀잼이었음. 다음주에 같이 가실분?
            </div>
            <div class="emojis">
              <div class="heart">❤</div>
              <div class="comment">💬</div>
              <div class="share">공유</div>
            </div>
            <div class="comments"></div>
          </div>
         
        </div>
        <div class="community">
          <div class="profile">
            <img src="" alt="" class="p_img">
          </div>
          <div class="contents">
            <div class="id">jieunjjang</div>
            <div class="writing">다음달 동물 뭔지 너무 기대된다!<br />같이 도전할 @geegeegee 구함</div>
            <div class="emojis">
              <div class="heart">❤</div>
              <div class="comment">💬</div>
              <div class="share">공유</div>
            </div>
            <div class="comments">
              ㄴgeegeegee 무조건 합니다~
            </div>
          </div>
          
        </div>
      </div>
      <div class="tabs">
        <div class="buttons">
          <button class="myBtn">내 피드</button>
          <button class="writeBtn">글쓰기</button>
        </div>
        <div class="searching">
          <input type="text" placeholder="search">
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
</html>