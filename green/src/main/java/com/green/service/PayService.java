package com.green.service;

import java.util.HashMap;
import java.util.List;

import com.green.domain.MemberVO;

public interface PayService {
	List<MemberVO> getPay(String userId);
	List<MemberVO> getPay2(String userId);
	
	void chalPay(HashMap<String, Object> map);
	void cardIn(HashMap<String, Object> map);
	void accIn(HashMap<String, Object> map);
}