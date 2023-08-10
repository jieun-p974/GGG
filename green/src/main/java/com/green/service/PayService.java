package com.green.service;

import java.util.List;

import com.green.domain.MemberVO;

public interface PayService {
	List<MemberVO> getPay(String userId);

}
