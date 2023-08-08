package com.green.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.domain.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public MemberVO idCheck(MemberVO vo) {
		System.out.println("===> idCheck() 호출");
		return mybatis.selectOne("member.idCheck", vo);
	}
	
	@Override
	public int memberInsert(MemberVO vo)  {
		System.out.println("===> memberInsert() 호출");
		return mybatis.insert("member.memberInsert", vo);
	}

	@Override
	public MemberVO memberLogin(MemberVO vo) {
		System.out.println("===> idCheck() 호출");
		return (MemberVO) mybatis.selectOne("member.idCheck", vo);
	}

	@Override
	public MemberVO memberInfo(MemberVO vo) {
		System.out.println("===> memberInfo() 호출");
		return mybatis.selectOne("member.memberInfo", vo);
	}

	@Override
	public int memberUpdate(MemberVO vo) {
		System.out.println("===> memberUpdate() 호출");
		return mybatis.update("member.memberUpdate", vo);
	}

	@Override
	public MemberVO login(MemberVO vo) {
		System.out.println("===> login() 호출");
		return mybatis.selectOne("member.login", vo);
	}

	@Override
	public String searchID(String email) {
		System.out.println("===> searhID() 호출");
		return mybatis.selectOne("member.searchID", email);
	}

	@Override
	public String searchPass(String email) {
		System.out.println("===> searhID() 호출");
		return mybatis.selectOne("member.searchPass", email);
	}


	
}
