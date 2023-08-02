package com.green.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.dao.MemberDAO;
import com.green.domain.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	public MemberVO idCheck_Login(MemberVO vo) {
		return memberDAO.idCheck(vo);
	}

	public int memberInsert(MemberVO vo) {
		return memberDAO.memberInsert(vo);
	}

	public MemberVO memberInfo(MemberVO vo) {
		return memberDAO.memberInfo(vo);
	}

	@Override
	public int memberUpdate(MemberVO vo) {
		return memberDAO.memberUpdate(vo);
	}

	@Override
	public MemberVO login(MemberVO vo) {
		return memberDAO.login(vo);
	}

	@Override
	public MemberVO adminLogin(MemberVO vo) {
		return memberDAO.adminLogin(vo);
	}
	
}
