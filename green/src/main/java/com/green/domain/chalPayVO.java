package com.green.domain;

import java.sql.Date;

public class chalPayVO {

private int dogeon_pay_no;
private int dogeon_no;
private int pay_meth_no;
private String id;
private Date last_day;
private Date dogeon_pay_date;
private String cash_receipt_YN;

public chalPayVO() {
	
}

public chalPayVO(int dogeon_pay_no,int dogeon_no,int pay_meth_no,String id,Date last_day,Date dogeon_pay_date,String cash_receipt_YN) {
	this.dogeon_pay_no=dogeon_pay_no;
	this.dogeon_no=dogeon_no;
	this.pay_meth_no=pay_meth_no;
	this.id=id;
	this.last_day=last_day;
	this.dogeon_pay_date=dogeon_pay_date;
	this.cash_receipt_YN=cash_receipt_YN;
}

public int getDogeon_pay_no() {
	return dogeon_pay_no;
}

public void setDogeon_pay_no(int dogeon_pay_no) {
	this.dogeon_pay_no = dogeon_pay_no;
}

public int getDogeon_no() {
	return dogeon_no;
}

public void setDogeon_no(int dogeon_no) {
	this.dogeon_no = dogeon_no;
}

public int getPay_meth_no() {
	return pay_meth_no;
}

public void setPay_meth_no(int pay_meth_no) {
	this.pay_meth_no = pay_meth_no;
}

public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

public Date getLast_day() {
	return last_day;
}

public void setLast_day(Date last_day) {
	this.last_day = last_day;
}

public Date getDogeon_pay_date() {
	return dogeon_pay_date;
}

public void setDogeon_pay_date(Date dogeon_pay_date) {
	this.dogeon_pay_date = dogeon_pay_date;
}

public String getCash_receipt_YN() {
	return cash_receipt_YN;
}

public void setCash_receipt_YN(String cash_receipt_YN) {
	this.cash_receipt_YN = cash_receipt_YN;
}


}
