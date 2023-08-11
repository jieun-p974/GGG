package com.green.service;

import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;

import com.green.domain.MemberVO;

public interface MemberService {

	// id using check
	public MemberVO idCheck_Login(MemberVO vo);

	// sign up
	public int memberInsert(MemberVO vo);

	// login
	public MemberVO login(MemberVO vo);

	// member info
	public MemberVO memberInfo(MemberVO vo);

	// member info edit
	public int memberUpdate(MemberVO vo);

	// search id
	public String searchID(HttpServletResponse response, String email) throws Exception;

	// search pw
	public String searchPass(HttpServletResponse response, String email) throws Exception;

	void goDona(HashMap<String, Object> map);

	// member card insert
	public void cardInsert(MemberVO vo);

	// member bank account insert
	public void accountInsert(MemberVO vo);
}