package com.green.domain;

public class ReplyVO {
	
	/*
	 * com_no ��۹�ȣ int(5) auto_increment (pk)
	 * id ȸ��id varchar(20)
	 * board_no �Խ��� ��ȣ int(5)
	 * com_content ��� ���� varchar(300)
	 */
	
	private String id;
	private Integer board_no;
	private int com_no;
	private String com_content;
	private String m_img_addr;	
	private String userId;	
	

	public ReplyVO() {
		
	}
	
	public String getM_img_addr() {
		return m_img_addr;
	}

	public void setM_img_addr(String m_img_addr) {
		this.m_img_addr = m_img_addr;
	}

	public int getCom_no() {
		return com_no;
	}

	public void setCom_no(int com_no) {
		this.com_no = com_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Integer getBoard_no() {
		return board_no;
	}

	public void setBoard_no(Integer board_no) {
		this.board_no = board_no;
	}

	public String getCom_content() {
		return com_content;
	}

	public void setCom_content(String com_content) {
		this.com_content = com_content;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	
}