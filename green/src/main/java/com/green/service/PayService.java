package com.green.service;

import java.util.List;

import com.green.domain.MemberVO;
import com.green.domain.PayVO;

public interface PayService {
	List<MemberVO> getPay(String userId);
	List<MemberVO> getPay2(String userId);
	
	void insertCard(PayVO vo);
}
