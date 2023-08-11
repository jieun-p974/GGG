package com.green.dao;

import java.util.List;

import com.green.domain.MemberVO;
import com.green.domain.PayVO;

public interface PayDAO {

	public List<MemberVO> getPay(String userId);
	public List<MemberVO> getCPay(String userId);
	
	public void cardInsert(PayVO vo);
}
