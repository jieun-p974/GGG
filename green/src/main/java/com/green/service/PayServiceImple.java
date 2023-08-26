package com.green.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.dao.PayDAO;
import com.green.domain.ChalPayVO;
import com.green.domain.MemberVO;
import com.green.domain.PayVO;

@Service("payService")
public class PayServiceImple implements PayService {

	@Autowired
	private PayDAO payDAO;

	@Override
	public List<MemberVO> getPay(String userId) {
		// TODO Auto-generated method stub
		return payDAO.getPay(userId);
	}

	@Override
	public List<MemberVO> getPay2(String userId) { // 간편카드
		// TODO Auto-generated method stub
		return payDAO.getCPay(userId);
	}

	@Override
	public void chalPay(ChalPayVO vo) {
		payDAO.chalPay(vo);
	}

	@Override
	public ChalPayVO forPay(ChalPayVO vo) {
		// TODO Auto-generated method stub
		return payDAO.forPay(vo);
	}

	@Override
	public void cardInsert(PayVO vo) {
		// TODO Auto-generated method stub
		payDAO.cardInsert(vo);
	}

	@Override
	public void accInsert(PayVO vo) {
		// TODO Auto-generated method stub
		payDAO.accInsert(vo);
	}

	@Override
	public void receipt(int dogeon_pay_no) {
		// TODO Auto-generated method stub
		payDAO.receipt(dogeon_pay_no);
	}

	@Override
	public void memReceipt(ChalPayVO vo) {
		// TODO Auto-generated method stub
		payDAO.memReceipt(vo);
		
	}
	@Override
	public int getTimes(int dogeon_pay_no) {
		return payDAO.getTimes(dogeon_pay_no);
	}

	@Override
	public void payTryNum(HashMap map) {
		// TODO Auto-generated method stub
		payDAO.payTryNum(map);
	}

	@Override
	public MemberVO myAc(MemberVO vo) {
		// TODO Auto-generated method stub
		return payDAO.myAc(vo);
	}

	@Override
	public MemberVO myCard(MemberVO vo) {
		// TODO Auto-generated method stub
		return payDAO.myCard(vo);
	}

	@Override
	public void deleteChalD(HashMap map) {
		// TODO Auto-generated method stub
		payDAO.deleteChalD(map);
	}
}
