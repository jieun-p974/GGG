package com.green.service;

import javax.servlet.http.HttpServletResponse;

import com.green.domain.MemberVO;

public interface MemberService {

	public MemberVO idCheck_Login(MemberVO vo);
	
	public int memberInsert(MemberVO vo);
	
	public MemberVO memberInfo(MemberVO vo);
	
	public int memberUpdate(MemberVO vo);
	
	public MemberVO login(MemberVO vo);
	
	public MemberVO adminLogin(MemberVO vo);
	
	public String searchID(HttpServletResponse response, String email) throws Exception;

	public String searchPass(HttpServletResponse response, String email) throws Exception;
}
