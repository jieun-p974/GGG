package com.green.domain;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class MemberVO {

	private String id;
	private int mem_type_no;
	private String password;
	private String name;
	private String tel;
	private String email;
	private Date bday;
	private Date sdate;
	private String card_reg_YN;
	private String account_reg_YN;
	private int remainder_point;
	private String m_img;
	private String m_img_addr;
	
	public MemberVO() {}
	
	//*************************************************
	MultipartFile file;	// write.jsp에 파일첨부시 name="file"과 동일한 변수명
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		
		// 업로드 파일 접근	
		if(! file.isEmpty()){
			this.m_img = file.getOriginalFilename();
			
			// 실제 저장된 파일명 만들기
			UUID uuid = UUID.randomUUID();
			m_img_addr = uuid.toString() + "_" + m_img;
			
			//***********************************************
			// 해당 경로로 변경
			File f = new File("D:\\git2\\GGG\\green\\src\\main\\webapp\\resources\\imgs\\member\\"+m_img_addr);
			
			try {
				file.transferTo(f);
				
			} catch (IllegalStateException e) {				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
	}
	
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
	
	public Date getBday() {
		return bday;
	}

	public void setBday(Date bday) {
		this.bday = bday;
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

	public String getM_img_addr() {
		return m_img_addr;
	}

	public void setM_img_addr(String m_img_addr) {
		this.m_img_addr = m_img_addr;
	}

	
	

	
	
}