package com.green.domain;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class ChallengeCheckVO {
	/*
	 * cer_no int(5) PK 
	 * m_c_no int(5) FK로 받아옴 
	 * cer_date date 
	 * cer_img1_nn varchar(100)
	 * cer_img1_addr varchar(100) 
	 * pass_YN varchar(2)
	 */

	private int cer_no;
	private int m_c_no;
	private Date cer_date;
	private String cer_img1_nn;
	private String cer_img1_addr;
	private String pass_YN;

	MultipartFile file;

	public ChallengeCheckVO() {

	}

	private List<ChallengeCheckVO> check_challs;

	public int getCer_no() {
		return cer_no;
	}

	public void setCer_no(int cer_no) {
		this.cer_no = cer_no;
	}

	public int getM_c_no() {
		return m_c_no;
	}

	public void setM_c_no(int m_c_no) {
		this.m_c_no = m_c_no;
	}

	public Date getCer_date() {
		return cer_date;
	}

	public void setCer_date(Date cer_date) {
		this.cer_date = cer_date;
	}

	public String getCer_img1_nn() {
		return cer_img1_nn;
	}

	public void setCer_img1_nn(String cer_img1_nn) {
		this.cer_img1_nn = cer_img1_nn;
	}

	public String getCer_img1_addr() {
		return cer_img1_addr;
	}

	public void setCer_img1_addr(String cer_img1_addr) {
		this.cer_img1_addr = cer_img1_addr;
	}

	public String getPass_YN() {
		return pass_YN;
	}

	public void setPass_YN(String pass_YN) {
		this.pass_YN = pass_YN;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;

		// 업로드 파일 접근
		if (!file.isEmpty()) {
			this.cer_img1_nn = file.getOriginalFilename();

			// 실제 저장된 파일명 만들기
			UUID uuid = UUID.randomUUID();
			cer_img1_addr = uuid.toString() + "_" + cer_img1_nn;

			// ***********************************************
			// 해당 경로로 변경
			File f = new File(
					"C:\\Users\\1\\Desktop\\gitGGG\\GGG\\green\\src\\main\\webapp\\resources\\imgs\\challImg\\"+ cer_img1_addr);

			try {
				file.transferTo(f);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
	}

	public List<ChallengeCheckVO> getCheck_challs() {
		return check_challs;
	}

	public void setCheck_challs(List<ChallengeCheckVO> check_challs) {
		this.check_challs = check_challs;
	}

}
