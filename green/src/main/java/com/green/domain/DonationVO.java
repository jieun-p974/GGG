package com.green.domain;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;


public class DonationVO {

	private int don_no;
	private String don_name;
	private String don_ex;
	private String don_summary;
	private int don_point_sum;
	private String d_img1_nn;
	private String d_img1_addr; //
	private int don_goal;
	private Date don_start_date;
	private Date don_end_date;
	
	MultipartFile file;
	
	public DonationVO() {
		
	}
	public DonationVO(int don_no,String don_name,String don_ex,String don_summary,int don_point_sum,String d_img1_nn,
			String d_img1_addr,int don_goal,Date don_start_date,Date don_end_date) {
		this.don_no = don_no;
		this.don_name = don_name;
		this.don_ex = don_ex;
		this.don_summary = don_summary;
		this.don_point_sum = don_point_sum;
		this.d_img1_nn = d_img1_nn;
		this.d_img1_addr = d_img1_addr;
		this.don_goal = don_goal;
		this.don_start_date = don_start_date;
		this.don_end_date = don_end_date;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		
		// 업로드 파일 접근
				if (!file.isEmpty()) {
					this.d_img1_nn = file.getOriginalFilename();
					// 실제 저장된 파일명 만들기
					UUID uuid = UUID.randomUUID();
					d_img1_addr = uuid.toString() + "_" + d_img1_nn;

					// ***********************************************
					// 해당 경로로 변경
					File f = new File(
							"C:\\Users\\koreavc\\Desktop\\gitGGG\\GGG\\green\\src\\main\\webapp\\resources\\imgs\\donaImg" + d_img1_addr);
					try {
						file.transferTo(f);

					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
	}
	
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
	public String getD_img1_addr() {
		return d_img1_addr;
	}
	public void setD_img1_addr(String d_img1_addr) {
		this.d_img1_addr = d_img1_addr;
	}
	public int getDon_goal() {
		return don_goal;
	}
	public void setDon_goal(int don_goal) {
		this.don_goal = don_goal;
	}
	public Date getDon_start_date() {
		return don_start_date;
	}
	public void setDon_start_date(Date don_start_date) {
		this.don_start_date = don_start_date;
	}
	public Date getDon_end_date() {
		return don_end_date;
	}
	public void setDon_end_date(Date don_end_date) {
		this.don_end_date = don_end_date;
	}
}
