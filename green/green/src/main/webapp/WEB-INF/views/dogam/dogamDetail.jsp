<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../../resources/styles/header.css">
<link href="../../../resources/styles/dogamDetail.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" href="../../../resources/styles/footer.css">
<title>동물도감 | 상세보기</title>
</head>
<body>
<div class="container ">
		<%@include file="../layouts/header.jsp"%>
		<div class="animal">
      <div class="animal_exp">
        <div class="exp_level">레벨2</div>
        <div class="exp_point">(430/1500P)</div>
        <div class="exp_bar"></div>
        <div class="exp_gage"></div>
        <div class="exp_now">Lv.2</div>
        <div class="exp_end">성체</div>
      </div>

      <div class="animal_info">
        <img class="img" src="" />
        <p class="name">이름 : 미미</p>
        <button class="changeBtn">개명</button>
      </div>

      <div class="animal_level">
        <img class="level_img1" src="" />
        <img class="arrow1" src="../../../resources/imgs/arrow.png" />
        <img class="level_img2" src="" />
        <img class="arrow2" src="../../../resources/imgs/arrow.png" />
        <img class="level_img3" src="" />

      </div>

    </div>

    <div class="animal_explain">
      <h1 class="animal_title">미미는 멸종위기 ‘취약’ 등급 치타입니다.</h1>


      <div class="animal_content">
        순간 최고 속도 시속 120㎞. 육상 동물 중에서 가장 빠른 단거리 달리기 선수.<br />
        전 지구상에 7,000마리 밖에 안 남은 멸종 위기(취약종·VU) 동물.<br />
        바로 치타를 이르는 말이다.<br /><br />
        그럼에도 불구하고 치타는 1급 멸종 위기 동물이란 슬픈 수식어를 가지고 있다.<br />
        치타는 사실 하루하루를 멸종 위기 속에서 살아가고 있다고 말해도 과언은 아니다.<br /><br />
        왜 치타같이 빠르고 적수가 없을 것 같은 육식동물이 멸종 위기에 몰려있을까?<br />
        치타가 주로 잡아먹는 영양들의 숫자가 계속 줄어들고 있기 때문이다.<br />
        그들은 아프리카의 국립공원에 살지만, 국립공원이라는 일정 구역에만 가두어 놓고<br />
        영역을 확장하지 못하게 막으니까 동물들이 질병에 취약하고 개체 수가 줄어들게 된다.<br />
        치타들은 사냥할 때 달리다가 균형을 잃고 쉽게 쓰러져<br />
        사냥 성공 확률이 높은 늙거나 어린 개체를 주로 사냥한다.<br />
        그런데 태어나는 어린 먹이들이 많이 없으니 굶는 날도 많아 그만큼 살기가 어려워졌다.<br />
      </div>
      <button class="dogamBtn" onclick="window.open('dogam.jsp')">도감보기</button>
    </div>
		</div>
	<%@include file="../layouts/footer.jsp"%>
</body>
</html>