package com.green.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class HeartVO {
	
	/*
	 * like_no 좋아요 번호  int(5) auto_increment (pk)
	 * id 회원id varchar(20)
	 * board_no 게시판 번호 int(5)
	 */
	
	private int like_no;
	private String id;
	private int board_no;
	
	public HeartVO() {
		
	}
	
	public HeartVO(int like_no, String id, int board_no) {
		this.like_no = like_no;
		this.id = id;
		this.board_no = board_no;
	}
	

}
