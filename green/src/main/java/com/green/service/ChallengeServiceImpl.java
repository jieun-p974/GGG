package com.green.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.dao.ChallengeDAO;
import com.green.domain.ChallengeVO;

@Service("ChallengeService")
public class ChallengeServiceImpl implements ChallengeService{
	@Autowired
	private ChallengeDAO challengeDAO;
	@Override
	public void insertChallenge(ChallengeVO vo) {
		// TODO Auto-generated method stub
		challengeDAO.challengeWrite(vo);
	}
	
}
