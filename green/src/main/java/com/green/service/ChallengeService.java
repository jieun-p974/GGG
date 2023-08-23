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
	
	//delete
	void deleteChall(int chal_no);
	
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
	
	//redirect할때 필요한 정보
	MemChallengeVO redirectCheckPage(ChallengeCheckVO vo);
	
	//관리자 인증 체크 리스트
	List<ChallengeCheckVO> adminCerCheckList(int chal_no);
	
	//인증 여부 변경
	void updatePassYN(HashMap arr);
	
	//인증 받은 것들 chal_no랑 id 받아오는 쿼리
	List<HashMap<String , Object>> paramSql(HashMap arr);
	
	//날짜 체크하고 끝난건지 아닌지 체크하기
	void endDateCheck(ChallengeVO vo);
	
	// checksu랑 pass 받은 인증 수 비교하고 성공인지 아닌지 상태 변경
	void getPassNCheckSu(HashMap param);
}
