package com.green.dao;

import java.util.HashMap;
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
		System.out.println("Mybatis => chall insert");
		mybatis.insert("ChallengeDAO.challengeWrite",vo);
	}
	
	@Override
	public int challengeSinchung(HashMap map) {
		System.out.println("Mybatis => chall sinchung");
		int rst= mybatis.insert("ChallengeDAO.challengeSinchung", map);
		return rst;
	}

	@Override
	public List<ChallengeVO> getChallengeList() {
		System.out.println("Mybatis => chall list");
		return mybatis.selectList("ChallengeDAO.getChallengeList");
	}

	@Override
	public ChallengeVO getChallengeDetail(ChallengeVO vo) {
		System.out.println("Mybatis=> chall detail");
		return mybatis.selectOne("ChallengeDAO.getChallengeDetail", vo);
	}

	@Override
	public void updateChallenge(ChallengeVO vo) {
		System.out.println("Mybatis=> chall modi");
		mybatis.update("ChallengeDAO.updateChallenge",vo);
	}

	@Override
	public List<ChallengeVO> getMyChallengeList(String userId) {
		System.out.println("Mybatis => my challenge list");
		return mybatis.selectList("ChallengeDAO.myChallList",userId);
	}

}
