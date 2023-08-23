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
	public String searchID(HttpServletResponse response, HashMap map) throws Exception;

	// search pw
	//public String searchPass(HttpServletResponse response, String email) throws Exception;
	public String emailCheck(String id);
	public void sendEmail(MemberVO vo, String div);
	public void searchPW(HttpServletResponse response, MemberVO vo) throws Exception;
	
	// member card insert
	public void cardInsert(MemberVO vo);
	public void cardYes(MemberVO vo);

	// member bank account insert
	public void accountInsert(MemberVO vo);
	public void accountYes(MemberVO vo);
	
	// member card delete
	public void cardDelete(MemberVO vo);
	public void cardNo(MemberVO vo);

	// member bank account delete
	public void accountDelete(MemberVO vo);
	public void accountNo(MemberVO vo);

	
	void goDona(HashMap<String, Object> map);
	
	// select member dogeon last date
	String dogeonExp(MemberVO vo);
}