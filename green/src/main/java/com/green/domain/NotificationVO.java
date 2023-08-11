package com.green.domain;

import java.time.LocalDateTime;

public class NotificationVO {
	/*
	 * ann_no 공지 번호 int(5) auto_increment(pk) 
	 * id 회원 id varchar(20) 
	 * ann_date 작성일 date default current_timestamp() 
	 * ann_title 공지 제목 varchar(100) 
	 * ann_content 공지 내용 varchar(500) 
	 */

	private int ann_no;
	private String id;
	private LocalDateTime ann_date;
	private String ann_title;
	private String ann_content;

	public NotificationVO() {

	}

	public NotificationVO(int ann_no, String id, LocalDateTime ann_date, String ann_title, String ann_content) {
		this.ann_no = ann_no;
		this.id = id;
		this.ann_date = ann_date;
		this.ann_title = ann_title;
		this.ann_content = ann_content;
	}

	public int getAnn_no() {
		return ann_no;
	}

	public void setAnn_no(int ann_no) {
		this.ann_no = ann_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public LocalDateTime getAnn_date() {
		return ann_date;
	}

	public void setAnn_date(LocalDateTime ann_date) {
		this.ann_date = ann_date;
	}

	public String getAnn_title() {
		return ann_title;
	}

	public void setAnn_title(String ann_title) {
		this.ann_title = ann_title;
	}

	public String getAnn_content() {
		return ann_content;
	}

	public void setAnn_content(String ann_content) {
		this.ann_content = ann_content;
	}


}