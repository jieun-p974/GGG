package com.green.domain;

public class CardVO {
	private int card_no;
	private int dogeon_pay_no;
	private String card_num;
	private String expiry_date;
	private int CVC;
	private String card_company;
	private int pass_two;

	public CardVO() {

	}

	public CardVO(int card_no, int dogeon_pay_no, String card_num, String expiry_date, int CVC, String card_company,
			int pass_two) {
		this.card_no = card_no;
		this.dogeon_pay_no = dogeon_pay_no;
		this.card_num = card_num;
		this.expiry_date = expiry_date;
		this.CVC = CVC;
		this.card_company = card_company;
		this.pass_two = pass_two;
	}

	public int getCard_no() {
		return card_no;
	}

	public void setCard_no(int card_no) {
		this.card_no = card_no;
	}

	public int getDogeon_pay_no() {
		return dogeon_pay_no;
	}

	public void setDogeon_pay_no(int dogeon_pay_no) {
		this.dogeon_pay_no = dogeon_pay_no;
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
