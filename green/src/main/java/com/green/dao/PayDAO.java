package com.green.dao;


import java.util.HashMap;
import java.util.List;

import com.green.domain.MemberVO;
import com.green.domain.PayVO;
import com.green.domain.ChalPayVO;

public interface PayDAO {

	public List<MemberVO> getPay(String userId);
	public List<MemberVO> getCPay(String userId);
	
	public void chalPay(ChalPayVO vo);
	public ChalPayVO forPay(ChalPayVO vo);
	//일반카드 insert
	public void cardInsert(PayVO vo);
	//일반계좌 insert
	public void accInsert(PayVO vo);
	public void receipt(int dogeon_pay_no);
//	public void receiptNO(int dogeon_pay_no);
	public void memReceipt(ChalPayVO vo);
	
	public int getTimes(int dogeon_pay_no);
	public void payTryNum(HashMap map);
}
