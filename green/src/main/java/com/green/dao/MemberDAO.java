package com.green.dao;

import java.util.HashMap;
import java.util.List;

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
	public String searchID(HashMap map);
	
	// search pw
	//public String searchPass(String email);
	public String emailCheck(String id);
	public int searchPW(MemberVO vo);

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
	public void accountNo(MemberVO vo);
	
	// select member dogeon last date
	public String dogeonExp(MemberVO vo);
	
	// select today pay, member
	public List<HashMap<String , Object>> todayPay();
	public int todayMem();
	
	
	//select week pay, member
	public List<HashMap<String, Object>> weekMem();
	public List<HashMap<String, Object>> weekPay();
	
	//select dogeonRate
	public List<HashMap<String, Object>> dogeonRate();
}