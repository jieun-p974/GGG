package com.green.domain;

import java.sql.Date;

public class MemChallengeVO {
	private int m_c_no;
	private int chal_no;
	private String id;
	private Date apply_date;
	private String completion_YN;
	private String success_YN;
	
	public MemChallengeVO(){
		
	}

	public int getM_c_no() {
		return m_c_no;
	}

	public void setM_c_no(int m_c_no) {
		this.m_c_no = m_c_no;
	}

	public int getChal_no() {
		return chal_no;
	}

	public void setChal_no(int chal_no) {
		this.chal_no = chal_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getApply_date() {
		return apply_date;
	}

	public void setApply_date(Date apply_date) {
		this.apply_date = apply_date;
	}

	public String getCompletion_YN() {
		return completion_YN;
	}

	public void setCompletion_YN(String completion_YN) {
		this.completion_YN = completion_YN;
	}

	public String getSuccess_YN() {
		return success_YN;
	}

	public void setSuccess_YN(String success_YN) {
		this.success_YN = success_YN;
	}
	
	
}
