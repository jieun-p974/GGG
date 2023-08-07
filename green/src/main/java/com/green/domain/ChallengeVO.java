package com.green.domain;

import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;

public class ChallengeVO {
	/*
	 * chal_no           챌린지 번호 int(5) auto_increment(pk)
	 * chal_name         챌린지명 varchar(20)
	 * chal_regist_date  챌린지 등록일 date
	 * chal_start_date   챌린지 시작일 date
	 * chal_end_date     챌린지 종료일 date
	 * chal_ex           챌린지 설명 varchar(500)
	 * chal_check_method 챌린지 인증 방법 varchar(500)
	 * difficulty        챌린지 난이도 varchar(3) //1,2,3,4,5로 입력받아서 나중에 별로 출력
	 * chal_img          챌린지 이미지 varchar(100)
	 * */
	
	private int chal_no;
	private String chal_name;
	private Date chal_regist_date;
	private Date chal_start_date;
	private Date chal_end_date;
	private String chal_ex;
	private String chal_check_method;
	private String difficulty;
	private String chal_img;
	
	public ChallengeVO() {
		
	}
	
	public ChallengeVO(String chal_name, Date chal_start_date, Date chal_end_date, String chal_ex,String chal_check_method, String difficulty, String chal_img) {
		this.chal_name = chal_name;
		this.chal_start_date = chal_start_date;
		this.chal_end_date = chal_end_date;
		this.chal_ex = chal_ex;
		this.chal_check_method = chal_check_method;
		this.difficulty = difficulty;
		this.chal_img = chal_img;
	}
	
	public int getChal_no() {
		return chal_no;
	}
	public void setChal_no(int chal_no) {
		this.chal_no = chal_no;
	}
	public String getChal_name() {
		return chal_name;
	}
	public void setChal_name(String chal_name) {
		this.chal_name = chal_name;
	}
	public Date getChal_regist_date() {
		return chal_regist_date;
	}
	public void setChal_regist_date(Date chal_regist_date) {
		this.chal_regist_date = chal_regist_date;
	}
	public Date getChal_start_date() {
		return chal_start_date;
	}
	public void setChal_start_date(Date chal_start_date) {
		this.chal_start_date = chal_start_date;
	}
	public Date getChal_end_date() {
		return chal_end_date;
	}
	public void setChal_end_date(Date chal_end_date) {
		this.chal_end_date = chal_end_date;
	}
	public String getChal_ex() {
		return chal_ex;
	}
	public void setChal_ex(String chal_ex) {
		this.chal_ex = chal_ex;
	}
	public String getDifficulty() {
		return difficulty;
	}
	public void setDifficulty(String difficulty) {
		this.difficulty = difficulty;
	}
	public String getChal_img() {
		return chal_img;
	}
	public void setChal_img(String chal_img) {
		this.chal_img = chal_img;
	}

	public String getChal_check_method() {
		return chal_check_method;
	}

	public void setChal_check_method(String chal_check_method) {
		this.chal_check_method = chal_check_method;
	}
	
	
}
