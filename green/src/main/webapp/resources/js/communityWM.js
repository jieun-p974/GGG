$(document).ready(function() {
	var tag = {};
	var counter = $("#htlistsize").val()
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
					$("#tag-list").append("<li class='tag-item ms-2 list-unstyled'>   #"+ tagValue+ " <span class='del-btn' id='" + counter + "'>❌</span></li>");
					addTag(tagValue);
					self.val("");
					var board_no = ${comm.board_no};
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
		var board_no = ${comm.board_no};
		
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