package com.green.domain;

import java.sql.Date;


public class DonationVO {

	private int don_no;
	private String don_name;
	private String don_ex;
	private String don_summary;
	private int don_point_sum;
	private String d_img1_nn;
	private String d_img2;
	private String d_img3;
	private int don_goal;
	private Date don_start_day;
	private Date don_end_day;
	
	public int getDon_no() {
		return don_no;
	}
	public void setDon_no(int don_no) {
		this.don_no = don_no;
	}
	public String getDon_name() {
		return don_name;
	}
	public void setDon_name(String don_name) {
		this.don_name = don_name;
	}
	public String getDon_ex() {
		return don_ex;
	}
	public void setDon_ex(String don_ex) {
		this.don_ex = don_ex;
	}
	public String getDon_summary() {
		return don_summary;
	}
	public void setDon_summary(String don_summary) {
		this.don_summary = don_summary;
	}
	public int getDon_point_sum() {
		return don_point_sum;
	}
	public void setDon_point_sum(int don_point_sum) {
		this.don_point_sum = don_point_sum;
	}
	public String getD_img1_nn() {
		return d_img1_nn;
	}
	public void setD_img1_nn(String d_img1_nn) {
		this.d_img1_nn = d_img1_nn;
	}
	public String getD_img2() {
		return d_img2;
	}
	public void setD_img2(String d_img2) {
		this.d_img2 = d_img2;
	}
	public String getD_img3() {
		return d_img3;
	}
	public void setD_img3(String d_img3) {
		this.d_img3 = d_img3;
	}
	public int getDon_goal() {
		return don_goal;
	}
	public void setDon_goal(int don_goal) {
		this.don_goal = don_goal;
	}
	public Date getDon_start_day() {
		return don_start_day;
	}
	public void setDon_start_day(Date don_start_day) {
		this.don_start_day = don_start_day;
	}
	public Date getDon_end_day() {
		return don_end_day;
	}
	public void setDon_end_day(Date don_end_day) {
		this.don_end_day = don_end_day;
	}
	
	
}
