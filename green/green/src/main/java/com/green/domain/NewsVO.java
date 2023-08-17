package com.green.domain;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.time.LocalDateTime;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class NewsVO {
	/*
	 * news_no 뉴스번호 int(5) auto_increment(pk) notnull id_manager 작성자 아이디 varchar(20)
	 * notnull cat_no 카테고리번호 int(5) notnull n_title 뉴스제목 varchar(100) notnull
	 * n_content 뉴스내용 varchar(2000) notnull n_reg_date 뉴스작성일 date notnull n_img1_nn
	 * 이미지1 varchar(100) notnull n_img1_addr 이미지1 경로 varchar(100)
	 */

	private int news_no;
	private String id_manager;
	private int cat_no;
	private String n_title;
	private String n_content;
	private Date n_reg_date;
	private String n_img1_nn;
	private String n_img1_addr;

	MultipartFile file;

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

	public String getN_title() {
		return n_title;
	}

	public void setN_title(String n_title) {
		this.n_title = n_title;
	}

	public Date getN_reg_date() {
		return n_reg_date;
	}

	public void setN_reg_date(Date n_reg_date) {
		this.n_reg_date = n_reg_date;
	}

	public String getN_img1_nn() {
		return n_img1_nn;
	}

	public void setN_img1_nn(String n_img1_nn) {
		this.n_img1_nn = n_img1_nn;
	}

	public String getN_img1_addr() {
		return n_img1_addr;
	}

	public void setN_img1_addr(String n_img1_addr) {
		this.n_img1_addr = n_img1_addr;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;

		// 업로드 파일 접근
		if (!file.isEmpty()) {
			this.n_img1_nn = file.getOriginalFilename();

			// 실제 저장된 파일명 만들기
			UUID uuid = UUID.randomUUID();
			n_img1_addr = uuid.toString() + "_" + n_img1_nn;

			// ***********************************************
			// 해당 경로로 변경
			File f = new File("C:\\Users\\1\\Desktop\\gitGGG\\GGG\\green\\src\\main\\webapp\\resources\\imgs\\newsImg\\"
					+ n_img1_addr);

			try {
				file.transferTo(f);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
	}

}
