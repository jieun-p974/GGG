package com.green.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.domain.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 회원가입
	public void insertMember(MemberVO vo)  {
		System.out.println("===> Mybatis insertMember() 호출");
		
	}

}
