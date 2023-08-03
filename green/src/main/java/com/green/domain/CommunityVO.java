package com.green.domain;

import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class CommunityVO {
	/*
	 * board_no 커뮤니티 번호 int(5) auto_increment(pk) 
	 * id 회원 id varchar(20) 
	 * b_content 글내용 varchar(500) 
	 * regist_date 작성일 date default current_timestamp() 
	 * b_img1 커뮤니티이미지1 varchar(100) 
	 * b_img1_addr 커뮤니티이미지경로1 varchar(100) 
	 * b_img2 커뮤니티이미지2 varchar(100)
	 * b_img2_addr 커뮤니티이미지경로2 varchar(100) 
	 * b_img3 커뮤니티이미지3 varchar(100)
	 * b_img3_addr 커뮤니티이미지경로3 varchar(100) 
	 */

	private int board_no;
	private String id;
	private String b_content;
	private LocalDateTime regist_date;
	private String b_img1;
	private String b_img1_addr;
	private String b_img2;
	private String b_img2_addr;
	private String b_img3;
	private String b_img3_addr;

	MultipartFile file; // write.jsp에 파일첨부시 name="file"과 동일한 변수명

	public CommunityVO() {

	}

	public CommunityVO(String id, String b_content, String b_img1, String b_img1_addr, String b_img2, String b_img2_addr, String b_img3, String b_img3_addr) {
		this.id = id;
		this.b_content = b_content;
		this.b_img1 = b_img1;
		this.b_img1_addr = b_img1_addr;
		this.b_img2 = b_img2;
		this.b_img2_addr = b_img2_addr;
		this.b_img3 = b_img3;
		this.b_img3_addr = b_img3_addr;
	}


	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;

		// 업로드 파일 접근
		if (!file.isEmpty()) {
			this.b_img1 = file.getOriginalFilename();

			// 실제 저장된 파일명 만들기
			UUID uuid = UUID.randomUUID();
			b_img1_addr = uuid.toString() + "_" + b_img1;

			// ***********************************************
			// 해당 경로로 변경
			File f = new File(
					"C:\\Users\\koreavc\\git\\GGG\\green\\src\\main\\webapp\\resources\\imgs\\communityImg\\" + b_img1_addr);

			try {
				file.transferTo(f);

			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {

				e.printStackTrace();
			}
		}
	}

	public String getB_img1_addr() {
		return b_img1_addr;
	}

	public void setB_img1_addr(String b_img1_addr) {
		this.b_img1_addr = b_img1_addr;
	}
	public String getB_img2_addr() {
		return b_img2_addr;
	}
	
	public void setB_img2_addr(String b_img2_addr) {
		this.b_img2_addr = b_img2_addr;
	}
	
	public String getB_img3_addr() {
		return b_img3_addr;
	}
	
	public void setB_img3_addr(String b_img3_addr) {
		this.b_img3_addr = b_img3_addr;
	}

	public String getB_content() {
		return b_content;
	}

	public void setB_content(String b_content) {
		this.b_content = b_content;
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public LocalDateTime getRegist_date() {
		return regist_date;
	}

	public void setRegist_date(LocalDateTime regist_date) {
		this.regist_date = regist_date;
	}

	public String getB_img1() {
		return b_img1;
	}

	public void setB_img1(String b_img1) {
		this.b_img1 = b_img1;
	}

	public String getB_img2() {
		return b_img2;
	}

	public void setB_img2(String b_img2) {
		this.b_img2 = b_img2;
	}

	public String getB_img3() {
		return b_img3;
	}

	public void setB_img3(String b_img3) {
		this.b_img3 = b_img3;
	}

}