package com.green.dao;

import java.util.HashMap;
import java.util.List;

import com.green.domain.ChallengeCheckVO;
import com.green.domain.ChallengeVO;
import com.green.domain.MemChallengeVO;

public interface ChallengeDAO {
	public void challengeWrite(ChallengeVO vo);

	public int challengeSinchung(HashMap map);
	
	public List<ChallengeVO> getChallengeList();
	
	public ChallengeVO getChallengeDetail(ChallengeVO vo);
	
	public void updateChallenge(ChallengeVO vo);
	
	public void deleteChall(int chal_no);
	
	public List<ChallengeVO> getMyChallengeList(String userId);
	
	public List<ChallengeVO> getCompleteList(String userId);
	
	public List<HashMap<String, Object>> getCheck(HashMap param);
	
	public Integer countCheck(HashMap param);
	
	public void insertCertification(ChallengeCheckVO vo);
	
	public MemChallengeVO redirectCheckPage(ChallengeCheckVO vo);
	
	public List<ChallengeCheckVO> adminCerCheckList(int chal_no);
	
	public void updatePassYN(HashMap<String, List<String>> arr);
	
	public void endDateCheck(ChallengeVO vo);
	
	public List<HashMap<String , Object>> paramSql(HashMap<String, List<String>> arr);
	
	public void getPassNCheckSu(HashMap param);
}
