package com.green.service;

import java.util.HashMap;
import java.util.List;

import com.green.domain.ChalPayVO;
import com.green.domain.MemberVO;
import com.green.domain.PayVO;

public interface PayService {
	List<MemberVO> getPay(String userId);
	List<MemberVO> getPay2(String userId);
	
	//도전권 결제
	void chalPay(ChalPayVO vo);
	//fk받아서 select
	ChalPayVO forPay(ChalPayVO vo);
	//일반 카드결제
	void cardInsert(PayVO vo);
	//일반 계좌결제
	void accInsert(PayVO vo);
	//현금영수증 신청
	void receipt(int dogeon_pay_no);

	void memReceipt(ChalPayVO vo);
	int getTimes(int dogeon_pay_no);
	void payTryNum(HashMap map);
	
	MemberVO myAc(MemberVO vo);
	MemberVO myCard(MemberVO vo);
	
	void deleteChalD(HashMap map);
}