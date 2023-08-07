package com.green.domain;

import java.time.LocalDateTime;

public class NewsVO {
	/*
	 * news_no      뉴스번호 int(5) auto_increment(pk) notnull
	 * id_manager   작성자 아이디 varchar(20) notnull
	 * cat_no       카테고리번호 int(5) notnull
	 * n_title      뉴스제목 varchar(100) notnull
	 * n_content    뉴스내용 varchar(1000) notnull
	 * n_content2      뉴스내용2 varchar(1000)
	 * n_content3      뉴스내용3 varchar(1000)
	 * n_reg_date   뉴스작성일 date notnull
	 * n_img1_nn    이미지1 varchar(100) notnull
	 * */
	
	private int news_no;
	private String id_manager;
	private int cat_no;
	private String n_title;	
	private String n_content;
	private String n_content2;
	private String n_content3;
	private LocalDateTime n_reg_date;
	private String n_img1_nn;
	
	public NewsVO() {
		
	}

	public int getNews_no() {
		return news_no;
	}

	public void setNews_no(int news_no) {
		this.news_no = news_no;
	}

	public String getId_manager() {
		return id_manager;
	}

	public void setId_manager(String id_manager) {
		this.id_manager = id_manager;
	}

	public int getCat_no() {
		return cat_no;
	}

	public void setCat_no(int cat_no) {
		this.cat_no = cat_no;
	}

	public String getN_content() {
		return n_content;
	}

	public void setN_content(String n_content) {
		this.n_content = n_content;
	}

	public String getN_content2() {
		return n_content2;
	}

	public void setN_content2(String n_content2) {
		this.n_content2 = n_content2;
	}

	public String getN_content3() {
		return n_content3;
	}

	public void setN_content3(String n_content3) {
		this.n_content3 = n_content3;
	}

	public String getN_title() {
		return n_title;
	}

	public void setN_title(String n_title) {
		this.n_title = n_title;
	}

	public LocalDateTime getN_reg_date() {
		return n_reg_date;
	}

	public void setN_reg_date(LocalDateTime n_reg_date) {
		this.n_reg_date = n_reg_date;
	}

	public String getN_img1_nn() {
		return n_img1_nn;
	}

	public void setN_img1_nn(String n_img1_nn) {
		this.n_img1_nn = n_img1_nn;
	}
}
