package com.green.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.dao.MemberDAO;
import com.green.domain.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	public void insertMember(MemberVO vo) {
		
		memberDAO.insertMember(vo);
	}
}
