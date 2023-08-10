package com.green.domain;

public class HeartVO {
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

}
