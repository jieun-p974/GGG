package com.green.domain;

public class HeartVO {
	
	/*
	 * like_no 좋아요 번호  int(5) auto_increment (pk)
	 * id 회원id varchar(20)
	 * board_no 게시판 번호 int(5)
	 */
	
	private int like_no;
	private String id;
	private String userId;
	private int board_no;
	private int likechk;
	
	public HeartVO() {
		
	}
	
	public HeartVO(int like_no, String id, int board_no, int likechk) {
		this.like_no = like_no;
		this.id = id;
		this.board_no = board_no;
		this.likechk = likechk;
	}

	public int getLike_no() {
		return like_no;
	}
	public void setLike_no(int like_no) {
		this.like_no = like_no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public int getLikechk() {
		return likechk;
	}

	public void setLikechk(int likechk) {
		this.likechk = likechk;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

}