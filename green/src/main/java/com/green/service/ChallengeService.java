package com.green.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.green.domain.ChallengeCheckVO;
import com.green.domain.ChallengeVO;
import com.green.domain.MemChallengeVO;

public interface ChallengeService {
	//insert
	void insertChallenge(ChallengeVO vo);
	
	//challenge sinchung
	int challengeSinchung(HashMap map);
	
	//get one
	ChallengeVO getChallengeDetail(ChallengeVO vo);
	
	//list
	List<ChallengeVO> getChallengeList();
	
	//modify
	void updateChallenge(ChallengeVO vo);
	
	//my challenge list
	List<ChallengeVO> getMyChallengeList(String userId);
	
	//get my complete list
	List<ChallengeVO> getCompleteList(String userId);
	
	//my challenge check list
	List<HashMap<String, Object>> getChallengeCheck(HashMap param);
	
	//my check count
	int countCheck(HashMap param);
	
	//insertCertification
	void insertCertification(ChallengeCheckVO vo);
}
