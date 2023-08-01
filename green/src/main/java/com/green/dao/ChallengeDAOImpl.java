package com.green.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.domain.ChallengeVO;

@Repository("challengeDAO")
public class ChallengeDAOImpl implements ChallengeDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void challengeWrite(ChallengeVO vo) {
		System.out.println("Mybatis => 챌린지 등록");
		mybatis.insert("ChallengeDAO.challengeWrite",vo);
	}

}
