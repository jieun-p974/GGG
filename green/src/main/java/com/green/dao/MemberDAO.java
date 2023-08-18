package com.green.dao;

import java.util.HashMap;

import com.green.domain.MemberVO;

public interface MemberDAO {

	// id using check
	public MemberVO idCheck(MemberVO vo);

	// sign up
	public int memberInsert(MemberVO vo);

	// login
	// public MemberVO memberLogin(MemberVO vo);
	public MemberVO login(MemberVO vo);

	// member info
	public MemberVO memberInfo(MemberVO vo);

	// member info edit
	public int memberUpdate(MemberVO vo);

	// search id
	public String searchID(String email);

	// search pw
	public String searchPass(String email);

	//기부시 포인트 사용
	public void goDona(HashMap<String, Object> map);

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
<<<<<<< HEAD
	
	// select member dogeon last date
	public String dogeonExp(MemberVO vo);
=======
	public void accountNo(MemberVO vo);
>>>>>>> refs/remotes/origin/gaeun
}