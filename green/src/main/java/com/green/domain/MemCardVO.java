package com.green.domain;

public class MemCardVO {

	private int mem_card_no;
	private String id;
	private String card_num;
	private String expiry_date;
	private int CVC;
	private String card_company;
	private int pass_two;
	
	public MemCardVO() {
		
	}
	
	public MemCardVO(int mem_card_no,String id,String card_num,String expiry_date,int CVC,String card_company,int pass_two) {
		this.mem_card_no=mem_card_no;
		this.id=id;
		this.card_num=card_num;
		this.expiry_date=expiry_date;
		this.CVC=CVC;
		this.card_company=card_company;
		this.pass_two=pass_two;
	}

	public int getMem_card_no() {
		return mem_card_no;
	}

	public void setMem_card_no(int mem_card_no) {
		this.mem_card_no = mem_card_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCard_num() {
		return card_num;
	}

	public void setCard_num(String card_num) {
		this.card_num = card_num;
	}

	public String getExpiry_date() {
		return expiry_date;
	}

	public void setExpiry_date(String expiry_date) {
		this.expiry_date = expiry_date;
	}

	public int getCVC() {
		return CVC;
	}

	public void setCVC(int cVC) {
		CVC = cVC;
	}

	public String getCard_company() {
		return card_company;
	}

	public void setCard_company(String card_company) {
		this.card_company = card_company;
	}

	public int getPass_two() {
		return pass_two;
	}

	public void setPass_two(int pass_two) {
		this.pass_two = pass_two;
	}
	
	
}
