package com.green.domain;

public class HashTagVO {
	
	/*
	 * <hashtag>
	 * hashtag_no 해시태그 번호 int(5)
	 * t_content 해시태그 내용 varchar(50)
	 * <board_tag>
	 * b_t_no 글별 태그 int(5)
	 * board_no 글 번호 int(5)
	 */
	
	private int hashtag_no;
	private String id;
	private String t_content;
	private int b_t_no;
	private Integer board_no;
	private int htcnt;

	public HashTagVO() {
		
	}


	public int getHashtag_no() {
		return hashtag_no;
	}


	public void setHashtag_no(int hashtag_no) {
		this.hashtag_no = hashtag_no;
	}


	public String getT_content() {
		return t_content;
	}


	public void setT_content(String t_content) {
		this.t_content = t_content;
	}


	public int getB_t_no() {
		return b_t_no;
	}


	public void setB_t_no(int b_t_no) {
		this.b_t_no = b_t_no;
	}


	public Integer getBoard_no() {
		return board_no;
	}


	public void setBoard_no(Integer board_no) {
		this.board_no = board_no;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public int getHtcnt() {
		return htcnt;
	}


	public void setHtcnt(int htcnt) {
		this.htcnt = htcnt;
	}
	
	
}