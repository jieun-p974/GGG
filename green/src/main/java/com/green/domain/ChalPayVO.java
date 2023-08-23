package com.green.domain;

import java.sql.Date;

public class ChalPayVO {

//chal_dog_pay
private int dogeon_pay_no;
private int dogeon_no;
private int pay_meth_no;
private String id;
private Date last_date;
private Date dogeon_pay_date;
private String cash_receipt_YN;

//chal_dogeon
private String dogeon_name;  
private int dogeon_times;
private int price;

//payment_method
private String method; //결제방법

//cash_receipt_type
private int receipt_type_no;
private String receipt_type;

//mem_cash_receipt
private int mem_rec_no;
private String receipt_num;


public ChalPayVO() {
	
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
	return last_date;
}
public void setLast_day(Date last_date) {
	this.last_date = last_date;
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

public Date getLast_date() {
	return last_date;
}

public void setLast_date(Date last_date) {
	this.last_date = last_date;
}

public String getDogeon_name() {
	return dogeon_name;
}

public void setDogeon_name(String dogeon_name) {
	this.dogeon_name = dogeon_name;
}

public int getDogeon_times() {
	return dogeon_times;
}

public void setDogeon_times(int dogeon_times) {
	this.dogeon_times = dogeon_times;
}

public int getPrice() {
	return price;
}

public void setPrice(int price) {
	this.price = price;
}

public String getMethod() {
	return method;
}

public void setMethod(String method) {
	this.method = method;
}


public int getReceipt_type_no() {
	return receipt_type_no;
}


public void setReceipt_type_no(int receipt_type_no) {
	this.receipt_type_no = receipt_type_no;
}


public String getReceipt_type() {
	return receipt_type;
}


public void setReceipt_type(String receipt_type) {
	this.receipt_type = receipt_type;
}


public int getMem_rec_no() {
	return mem_rec_no;
}


public void setMem_rec_no(int mem_rec_no) {
	this.mem_rec_no = mem_rec_no;
}


public String getReceipt_num() {
	return receipt_num;
}


public void setReceipt_num(String receipt_num) {
	this.receipt_num = receipt_num;
}


}