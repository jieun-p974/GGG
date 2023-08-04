package com.green.domain;

public class MemAccountVO {
private int mem_acc_no;
private String id;
private String acc_num;
private String bank;

public MemAccountVO() {
	
}

public MemAccountVO(int mem_acc_no,String id,String acc_num,String bank) {
	this.mem_acc_no=mem_acc_no;
	this.id=id;
	this.acc_num=acc_num;
	this.bank=bank;
}

public int getMem_acc_no() {
	return mem_acc_no;
}

public void setMem_acc_no(int mem_acc_no) {
	this.mem_acc_no = mem_acc_no;
}

public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
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
