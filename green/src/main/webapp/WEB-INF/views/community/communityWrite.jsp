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
      location.href="deleteCommunity.do?board_no=${boardNO}&userId=${userId}"
   }
</script>
<link rel="stylesheet" href="/resources/styles/font.css">
<style type="text/css">
.previewImg {
   width: 15%;
}
.tag-item {
    font-size: 1rem;
    font-weight: bold;
    display: inline-block;
    border: 4px solid;
    border-radius: 15px;
    padding: 10px;
    text-align: center;
    width: fit-content;
    position: relative;
    background: #8AB6A9;
    color: #ffffff;
}
.del-btn {
color: #858585;
}
</style>
<title>커뮤니티 글 작성</title>
</head>
<body>
   <%@include file="../layouts/header.jsp"%>
   <section class="pricing position-relative overflow-hidden">
      <div class="container position-relative">
         <div class="row">
            <div class="col-12 d-xxl-flex d-xl-flex d-lg-flex d-md-flex d-sm-block d-block align-items-center justify-content-xxl-between justify-content-xl-between justify-content-lg-between justify-content-md-between justify-content-sm-between justify-content-sm-center ">
               <h2 class="text-black mb-0 mt-5 mb-3">커뮤니티 글 작성하기</h2>
            </div>
         </div>
         <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-6 col-sm-6 col-12 text-center mt-4">
            <div class="card border-0 shadow">
               <div class="card-body">
                  <div class="overflow-hidden position-relative d-flex align-items-center justify-content-center mx-auto text-center">
                     <form method="post" enctype="multipart/form-data" class="row col-12" action="updateCommunity.do?userId=${userId}">
                        <input type="hidden" name="id" value="${userId}" />
                        <input type="hidden" name="userId" value="${userId}" />
                        <input type="hidden" name="board_no" value="${boardNO}" />
                        <div class="chal_name col-12 mb-3 p-3">
                           <label for="b_content" class="col-12 mb-2 text-start">글 내용</label>
                           <textarea name="b_content" id="b_content" placeholder="글을입력하세요" class="form-control" autofocus="autofocus" style="line-height: 1.2"></textarea>
                        </div>

                        <div class="tr_hashTag_area">
                           <div class="form-group">
                              <input type="hidden" value="" name="tag" id="rdTag" />
                           </div>

                           <ul id="tag-list" class=" d-flex">
                              <input type="hidden" value="0" name="htlistsize" id="htlistsize"/> 
                              <input type="hidden" value="" class="t_content" name="t_content" id="t_content"/> 
                              <input type="hidden" class='del-btn' id="0" value=""/>
                           </ul>

                           <div class="form-group d-flex ms-4">
                              <input type="text" id="tag" size="7" placeholder="엔터로 태그를 등록해주세요." style="width: 300px;" />
                           </div>
                        </div>

                        <div class="comm_img col-12 p-3">
                           <label for="comm_img" class="col-12 mb-1 text-start">사진 첨부하기1</label>
                           <input type="file" name="file1" onchange="readURL1(this)" class="col-12 mb-1 text-start">
                           <div id="previewDiv1" class="col-12 mb-1 text-start"></div>
                        </div>
                        <div class="comm_img col-12 p-3">
                           <label for="comm_img" class="col-12 mb-1 text-start">사진 첨부하기2</label>
                           <input type="file" name="file2" onchange="readURL2(this)" class="col-12 mb-1 text-start">
                           <div id="previewDiv2" class="col-12 mb-1 text-start"></div>
                        </div>
                        <div class="comm_img col-12 p-3">
                           <label for="comm_img" class="col-12 mb-1 text-start">사진 첨부하기3</label>
                           <input type="file" name="file3" onchange="readURL3(this)" class="col-12 mb-1 text-start">
                           <div id="previewDiv3" class="col-12 mb-1 text-start"></div>
                        </div>
                        <div class="d-flex justify-content-between p-3">
                           <button id="adding" type="submit" class="btn btn-white-back btn-hover-third">등록</button>
                           <button id="cancel" type="button" onclick="cancleWrite()" class="btn btn-white-back btn-hover-third">취소</button>
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
$(document).ready(function() {
   var tag = {};
   var counter = $("#htlistsize").val();
   counter++;
   
   // 입력한 값을 태그로 생성한다.
   function addTag(tagValue) {
      tag[counter] = tagValue;
      counter++; // del-btn 의 고유 id 가 된다.
   }

   $("#tag").on("keypress", function(e) {
      var self = $(this);

      //엔터나 스페이스바 눌렀을때 실행
      if (e.key === "Enter" || e.keyCode == 32) {
         var tagValue = self.val(); // 값 가져오기

         // 해시태그 값 없으면 실행X
         if (tagValue !== "") {

            // 같은 태그가 있는지 검사한다. 있다면 해당값이 array 로 return 된다.
            var result = Object.values(tag).filter(function(word) {
               return word === tagValue;
            })

            // 해시태그가 중복되었는지 확인
            if (result.length == 0) {
               $("#tag-list").append("<li class='tag-item list-unstyled' style='padding-left:10px'>   #"+ tagValue+ " <span class='del-btn' id='" + counter + "'>✕</span></li>");
               addTag(tagValue);
               self.val("");
               var board_no = ${boardNO};
               var num = counter-1;
               $.ajax({
                  type : "POST",
                  url : "insertTag.do",
                  data : {
                     "board_no" : board_no,
                     "t_content" : tagValue
                  },
                  sucssess: function(data) {
                     //alert(tagValue+"보드번호:"+${comm.board_no});
                  },
                  error : function(request,status,error) {
                     alert("code:"+ request.status+ "\n"+ "message:"+ request.responseText+ "\n"   + "error:"+ error);
                  }
               });  
            } else { 
               alert("태그값이 중복됩니다.");
            }
         }
         e.preventDefault(); // SpaceBar 시 빈공간이 생기지 않도록 방지
      }
   });

   // 삭제 버튼 
   // 인덱스 검사 후 삭제
   $(document).on("click", ".del-btn", function(e) {
      var index = $(this).attr("id");
      var t_content1 = $(this).siblings("#t_content").val();
      var t_content2 = tag[index];
      var board_no = ${boardNO};
      
      if(typeof t_content1 == "undefined" || t_content1 == null || t_content1 == ""){
         $.ajax({
            type : "POST",
            url : "deleteTag.do",
            data : {
               "board_no" : board_no,
               "t_content" : t_content2
            },
            sucssess: function(data) {
               //alert(tagValue+"보드번호:"+${comm.board_no});
            },
            error : function(request,status,error) {
               alert("code:"+ request.status+ "\n"+ "message:"+ request.responseText+ "\n"   + "error:"+ error);
            }
         });  
         $(this).parent().remove();
         
      }else if(typeof t_content2 == "undefined" || t_content2 == null || t_content2 == ""){
         $.ajax({
            type : "POST",
            url : "deleteTag.do",
            data : {
               "board_no" : board_no,
               "t_content" : t_content1
            },
            sucssess: function(data) {
               //alert(tagValue+"보드번호:"+${comm.board_no});
            },
            error : function(request,status,error) {
               alert("code:"+ request.status+ "\n"+ "message:"+ request.responseText+ "\n"   + "error:"+ error);
            }
         });  
         $(this).parent().remove();
      }
   }); 
}); 
</script>
<script src="/resources/js/custom.js"></script>
<script src="/resources/js/community.js"></script>
</body>
</html>