package com.green.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.domain.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	// id using check
	@Override
	public MemberVO idCheck(MemberVO vo) {
		System.out.println("mybatis ==> idCheck()");
		return mybatis.selectOne("member.idCheck", vo);
	}

	// sign up
	@Override
	public int memberInsert(MemberVO vo) {
		System.out.println("mybatis ==> memberInsert()");
		return mybatis.insert("member.memberInsert", vo);
	}

	// login
//	@Override
//	public MemberVO memberLogin(MemberVO vo) {
//		System.out.println("mybatis ==> idCheck()");
//		return (MemberVO) mybatis.selectOne("member.idCheck", vo);
//	}
	@Override
	public MemberVO login(MemberVO vo) {
		System.out.println("mybatis ==> login()");
		return mybatis.selectOne("member.login", vo);
	}

	// member info
	@Override
	public MemberVO memberInfo(MemberVO vo) {
		System.out.println("mybatis ==> memberInfo()");
		return mybatis.selectOne("member.memberInfo", vo);
	}

	// member info edit
	@Override
	public int memberUpdate(MemberVO vo) {
		System.out.println("mybatis ==> memberUpdate()");
		return mybatis.update("member.memberUpdate", vo);
	}

	// search id
	@Override
	public String searchID(String email) {
		System.out.println("mybatis ==> searhID()");
		return mybatis.selectOne("member.searchID", email);
	}

	// search pw
	@Override
	public String searchPass(String email) {
		System.out.println("mybatis ==> searhID()");
		return mybatis.selectOne("member.searchPass", email);
	}

	@Override
	public void goDona(MemberVO vo) {
		System.out.println("mybatis ==> goDona()");
		mybatis.update("member.goDona", vo);

	}

	// member card insert
	@Override
	public void cardInsert(MemberVO vo) {
		System.out.println("mybatis ==> cardInsert()");
		mybatis.insert("member.cardInsert", vo);
	}

	// member bank account insert
	@Override
	public void accountInsert(MemberVO vo) {
		System.out.println("mybatis ==> accountInsert()");
		mybatis.insert("member.accountInsert", vo);
	}

}
