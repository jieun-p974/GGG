package com.green.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.dao.PayDAO;
import com.green.domain.MemberVO;

@Service("payService")
public class PayServiceImple implements PayService{

	@Autowired
	private PayDAO payDAO;
	@Override
	public List<MemberVO> getPay(String userId) {
		// TODO Auto-generated method stub
		return payDAO.getPay(userId);
	}
	@Override
	public List<MemberVO> getPay2(String userId) {  //간편카드
		// TODO Auto-generated method stub
		return payDAO.getCPay(userId);
	}
	@Override
	public void chalPay(HashMap<String, Object> map) {
		payDAO.chalPay(map);
	}
	@Override
	public void cardIn(HashMap<String, Object> map) {
		payDAO.cardIn(map);
		
	}
	@Override
	public void accIn(HashMap<String, Object> map) {
		payDAO.accIn(map);
		
	}
}
