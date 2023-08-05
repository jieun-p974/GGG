package com.green.dao;

import java.util.HashMap;
import java.util.List;

import com.green.domain.ChallengeVO;

public interface ChallengeDAO {
	public void challengeWrite(ChallengeVO vo);

	public void challengeSinchung(HashMap map);
	
	public List<ChallengeVO> getChallengeList();
	
	public ChallengeVO getChallengeDetail(ChallengeVO vo);
	
	public void updateChallenge(ChallengeVO vo);
	
	public List<String> getMyChallengeList(String userId);
}
