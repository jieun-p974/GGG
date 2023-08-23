$(function() {
      var dd = $(".showBtn").closest(".media-body").find("#listRe");
      $(".showBtn").click(function() {
         var board_no = $(this).closest(".media-body").find("#board_no").val();
         if ($(".list").hasClass(board_no)) {
            $(".list").hide();
            $(".list").removeClass().addClass("list");
         }else {
         $(".list").removeClass().addClass("list");
         $(".list").show();
         $(".list").addClass(board_no);
         }
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
            success : function(rs) {
               $(rs).each(function() {
                     var html = '';
                     html += '<div class="reply d-flex align-items-center m-1 p-1 justify-content-around" style="border: 1px solid black; border-radius: 15px">';
                     html += '<div class="r_profile d-flex col-2 align-items-center ps-2">';
                     html += '<img class="r_p_img col-sm-0-1" src="/resources/imgs/member/'+this.m_img_addr+'" />';
                     html += '<p class="reply_id col-7 m-0 ms-2">@'+ this.id + '</p></div>';
                     html += '<input type="hidden" name="com_no" id="com_no" value="'+this.com_no+'" />';
                     html += '<div class="re col-8">';
                     html += '<input type="text" class="reWriting" id="reWriting" type="text" readonly value="'+this.com_content+'" />';
                     html += '</div><div class="memButtons col-2 "><div class="memBtns d-flex justify-content-evenly  align-items-center">';
                  
                  if (userId == this.id) {
                     html += '<input type="button" class="replymodi btn btn-warning btn-hover-secondery text-capitalize " style="padding: 10px;" value="수정" id="reEditBtn" />';
                     html += '<input type="button" class="delbtn btn btn-warning btn-hover-secondery text-capitalize " style="padding: 10px;" value="삭제"  />';
                  } else if (userType == '2' ) {
                     html += '<input type="button" class="delbtn btn btn-warning btn-hover-secondery text-capitalize " style="padding: 10px;" value="삭제"  />';
                  } 

                  html += '</div></div></div>';
                  here.append(html);
                  $(".delbtn").on('click',deleteReply);
                  $(".replymodi").on('click',updateReply);
               });
            },
            error : function(request, error) {
               console.log("요청 실패");
               console.log("code:" + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
            }
         });
      });
   });

   function deleteReply() {
      var com_no = $(this).closest(".reply").find("#com_no").val();
      var board_no = $(this).closest(".media-body").find("#board_no").val();
      $.ajax({
         type : "post",
         url : "deleteReply.do",
         data : {
            "com_no" : com_no
         },
         success : function(dr) {
            window.location.reload(true); // 페이지 리로드
         },
         error : function(request, error) {
            console.log("요청 실패");
            console.log("code:" + request.status + "\n" + "message: " + request.responseText + "\n" + "error: " + error);
         }
      });
   }

   function updateReply() {
      var com_no = $(this).closest(".reply").find("#com_no").val();
      var board_no = $(this).closest(".media-body").find("#board_no").val();
      var len = $(this).closest(".reply").find(".reWriting").val().length;
      $(this).closest(".reply").find(".reWriting").prop('readonly', false).focus();
      $(this).closest(".reply").find(".reWriting")[0].setSelectionRange(len, len);
      $(this).attr({"value" : "확인"});
      $(this).addClass("edit")
      $(".edit").on('click', editReply);
   }

   function editReply() {
      var com_no = $(this).closest(".reply").find("#com_no").val();
      var board_no = $(this).closest(".media-body").find("#board_no").val();
      var com_content = $(this).closest(".reply").find(".reWriting").val();
      $.ajax({
         type : "post",
         url : "updateReply.do",
         data : {
            "com_no" : com_no,
            "com_content" : com_content
         },
         success : function(re) {
            window.location.reload(true); // 페이지 리로드
         },
         error : function(request, error) {
            console.log("요청 실패");
            console.log("code:" + request.status + "\n" + "message: "+ request.responseText + "\n" + "error: " + error);
         }
      });
   }


$(".hh").each(function(index, element) {
   $(this).on("click",function() {
      if ($(this).hasClass("heart")) {
         $(this).removeClass("heart");
         var likecnt = $(this).siblings("#likecntd").val();
         var llike = Number(likecnt)+1;
         $(this).siblings("#likecntd").attr("value",llike);
         $(this).addClass("hearted");
         var board_no = $(this).find("#board_nod").val();
         var userId = $(this).find("#iddd").val();
         $.ajax({
            url : 'like.do',
            data : {
               "board_no" : board_no,
               "id" : userId
            },
            type : "POST",
            success : function(data) {
      //         alert("board_no:"+board_no+"userId:"+userId+"likecnt:"+likecnt+"llike:"+llike);
            },
            error : function(request,status,error) {
               alert(board_no);
               alert("code:"+ request.status+ "\n"+ "message:"+ request.responseText+ "\n"+ "error:"+ error);
            }
         });
      } else {
         $(this).removeClass("hearted");
         var likecnt = $(this).siblings("#likecntd").val();
         var llike = Number(likecnt)-1;
         $(this).siblings("#likecntd").attr("value",llike);
         $(this).addClass("heart");
         var board_no = $(this).find("#board_nod").val();
         var userId = $(this).find("#iddd").val();
            $.ajax({
               type : "POST",
               url : 'unlike.do',
               data : {
                  "board_no" : board_no,
                  "id" : userId
               },
               success : function(data) {
      //            alert("board_no:"+board_no+"userId:"+userId+"likecnt:"+likecnt+"llike:"+llike);
               },
               error : function(request,status,error) {
                  alert(board_no);
                  alert("code:"+ request.status+ "\n"+ "message:"+ request.responseText+ "\n"   + "error:"+ error);
               }
            });
      }
   });
});