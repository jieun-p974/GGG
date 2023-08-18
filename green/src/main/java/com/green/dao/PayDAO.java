package com.green.dao;

import java.util.HashMap;
import java.util.List;

import com.green.domain.MemberVO;

public interface PayDAO {

	public List<MemberVO> getPay(String userId);
	public List<MemberVO> getCPay(String userId);
	
	public void chalPay(HashMap<String,Object>map);
	public void cardIn(HashMap<String,Object>map);
	public void accIn(HashMap<String,Object>map);
}
