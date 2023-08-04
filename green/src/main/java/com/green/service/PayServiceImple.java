package com.green.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.green.dao.PayDAO;
import com.green.domain.MemberVO;

public class PayServiceImple implements PayService{

	@Autowired
	private PayDAO payDAO;
	@Override
	public List<MemberVO> getPay(String userId) {
		// TODO Auto-generated method stub
		return payDAO.getPay(userId);
	}

}
