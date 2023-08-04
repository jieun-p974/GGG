package com.green.domain;

import java.sql.Date;

public class MemberVO {

	private String id;
	private int mem_type_no;
	private String password;
	private String name;
	private String tel;
	private String email;
	private Date sdate;
	private String card_reg_YN;
	private String account_reg_YN;
	private int remainder_point;
	private String m_img;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getMem_type_no() {
		return mem_type_no;
	}

	public void setMem_type_no(int mem_type_no) {
		this.mem_type_no = mem_type_no;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

		
	public Date getSdate() {
		return sdate;
	}

	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}

	public String getCard_reg_YN() {
		return card_reg_YN;
	}

	public void setCard_reg_YN(String card_reg_YN) {
		this.card_reg_YN = card_reg_YN;
	}

	public String getAccount_reg_YN() {
		return account_reg_YN;
	}

	public void setAccount_reg_YN(String account_reg_YN) {
		this.account_reg_YN = account_reg_YN;
	}

	public int getRemainder_point() {
		return remainder_point;
	}

	public void setRemainder_point(int remainder_point) {
		this.remainder_point = remainder_point;
	}

	public String getM_img() {
		return m_img;
	}

	public void setM_img(String m_img) {
		this.m_img = m_img;
	}

	

	
	
}