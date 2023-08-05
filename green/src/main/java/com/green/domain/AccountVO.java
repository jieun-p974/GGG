package com.green.domain;

public class AccountVO {

	private int acc_no;
	private int dogeon_pay_no;
	private String acc_num;
	private String bank;
	
	public AccountVO() {
		
	}
	public AccountVO(int acc_no, int dogeon_pay_no,String acc_num,String bank) {
		this.acc_no=acc_no;
		this.dogeon_pay_no=dogeon_pay_no;
		this.acc_num=acc_num;
		this.bank=bank;
	}
	public int getAcc_no() {
		return acc_no;
	}
	public void setAcc_no(int acc_no) {
		this.acc_no = acc_no;
	}
	public int getDogeon_pay_no() {
		return dogeon_pay_no;
	}
	public void setDogeon_pay_no(int dogeon_pay_no) {
		this.dogeon_pay_no = dogeon_pay_no;
	}
	public String getAcc_num() {
		return acc_num;
	}
	public void setAcc_num(String acc_num) {
		this.acc_num = acc_num;
	}
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}
	
	
}
