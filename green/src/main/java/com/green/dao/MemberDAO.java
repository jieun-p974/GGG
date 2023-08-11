package com.green.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.domain.MemberVO;

public interface MemberDAO {
		
	// 아이디 중복체크
	MemberVO idCheck(MemberVO vo);
	
	// 회원가입
	int memberInsert(MemberVO vo);
	
	// 로그인 확인
	MemberVO memberLogin(MemberVO vo);
	
	// 회원정보 수정
	MemberVO memberInfo(MemberVO vo);
	int memberUpdate(MemberVO vo);

	// 로그인
	MemberVO login(MemberVO vo);
	
	// 아이디 찾기
	String searchID(String email);
	
	// 비밀번호 찾기
	String searchPass(String email);
	
	//기부시 포인트 사용
	public void goDona(HashMap<String, Object> map);
}
