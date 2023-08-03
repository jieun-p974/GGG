package com.green.domain;

import java.time.LocalDateTime;

public class CommunityVO {
	/*
	 * board_no		커뮤니티 번호 int(5) auto_increment(pk)
	 * id			회원 id varchar(20)
	 * b_content	글내용 varchar(500)
	 * regist_date	작성일 date default current_timestamp()
	 * b_img1		커뮤니티이미지1 varchar(100)
	 * b_img2		커뮤니티이미지2 varchar(100)
	 * b_img3		커뮤니티이미지3 varchar(100)
	 * */
	
	private int board_no;
	private String id;
	private String b_content;
	private LocalDateTime regist_date;
	private String b_img1;
	private String b_img2;
	private String b_img3;
	
	public CommunityVO() {
		
	}
	
	public CommunityVO(String id,String b_content, String b_img1, String b_img2, String b_img3) {
		this.id = id;
		this.b_content = b_content;
		this.b_img1 = b_img1;
		this.b_img2 = b_img2;
		this.b_img3 = b_img3;
	}

	public String getB_content() {
		return b_content;
	}

	public void setB_content(String b_content) {
		this.b_content = b_content;
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public LocalDateTime getRegist_date() {
		return regist_date;
	}

	public void setRegist_date(LocalDateTime regist_date) {
		this.regist_date = regist_date;
	}

	public String getB_img1() {
		return b_img1;
	}

	public void setB_img1(String b_img1) {
		this.b_img1 = b_img1;
	}

	public String getB_img2() {
		return b_img2;
	}

	public void setB_img2(String b_img2) {
		this.b_img2 = b_img2;
	}

	public String getB_img3() {
		return b_img3;
	}

	public void setB_img3(String b_img3) {
		this.b_img3 = b_img3;
	}
	

	
	
}
