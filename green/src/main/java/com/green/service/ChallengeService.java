package com.green.service;

import java.util.List;

import com.green.domain.ChallengeVO;

public interface ChallengeService {
	//insert
	void insertChallenge(ChallengeVO vo);
	
	//get one
	ChallengeVO getChallengeDetail(ChallengeVO vo);
	
	//list
	List<ChallengeVO> getChallengeList();
	
	//modify
	void updateChallenge(ChallengeVO vo);
}
