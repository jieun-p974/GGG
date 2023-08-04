package com.green.service;

import java.util.HashMap;
import java.util.List;

import com.green.domain.ChallengeVO;

public interface ChallengeService {
	//insert
	void insertChallenge(ChallengeVO vo);
	
	//challenge sinchung
	void challengeSinchung(HashMap map);
	
	//get one
	ChallengeVO getChallengeDetail(ChallengeVO vo);
	
	//list
	List<ChallengeVO> getChallengeList();
	
	//modify
	void updateChallenge(ChallengeVO vo);
	
	//my challenge list
	List<String> getMyChallengeList(String userId);
}
