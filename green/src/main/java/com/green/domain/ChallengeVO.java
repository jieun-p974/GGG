package com.green.domain;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class ChallengeVO {
	/*
	 * chal_no 챌린지 번호 int(5) auto_increment(pk) chal_name 챌린지명 varchar(20)
	 * chal_regist_date 챌린지 등록일 date chal_start_date 챌린지 시작일 date chal_end_date 챌린지
	 * 종료일 date chal_ex 챌린지 설명 varchar(500) chal_check_method 챌린지 인증 방법 varchar(500)
	 * difficulty 챌린지 난이도 varchar(3) //1,2,3,4,5로 입력받아서 나중에 별로 출력 chal_img 챌린지 이미지
	 * varchar(100) chal_img_addr 챌린지 이미지 varchar(100)
	 */

	private int chal_no;
	private String chal_name;
	private Date chal_regist_date;
	private Date chal_start_date;
	private Date chal_end_date;
	private String chal_ex;
	private String difficulty;
	private String chal_img;
	private String chal_img_addr;
	private int chal_check_su;

	MultipartFile file;

	public ChallengeVO() {

	}

	private List<ChallengeVO> chall_list;

	public List<ChallengeVO> getChall_list() {
		return chall_list;
	}

	public void setChall_list(List<ChallengeVO> chall_list) {
		this.chall_list = chall_list;
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

	public int getChal_check_su() {
		return chal_check_su;
	}

	public void setChal_check_su(int chal_check_su) {
		this.chal_check_su = chal_check_su;
	}

	public String getChal_img_addr() {
		return chal_img_addr;
	}

	public void setChal_img_addr(String chal_img_addr) {
		this.chal_img_addr = chal_img_addr;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;

		// 업로드 파일 접근
		if (!file.isEmpty()) {
			this.chal_img = file.getOriginalFilename();

			// 실제 저장된 파일명 만들기
			UUID uuid = UUID.randomUUID();
			chal_img_addr = uuid.toString() + "_" + chal_img;

			// ***********************************************
			// 해당 경로로 변경
			File f = new File("C:\\Users\\1\\Desktop\\gitGGG\\GGG\\green\\src\\main\\webapp\\resources\\imgs\\challImg\\"+chal_img_addr);

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
