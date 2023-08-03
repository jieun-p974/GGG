package com.green.dao;

import java.util.List;

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

	@Override
	public List<ChallengeVO> getChallengeList() {
		System.out.println("Mybatis => 챌린지 리스트");
		return mybatis.selectList("ChallengeDAO.getChallengeList");
	}

}
