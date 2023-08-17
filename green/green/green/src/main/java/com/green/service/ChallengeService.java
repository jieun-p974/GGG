package com.green.service;

import java.util.List;

import com.green.domain.ChallengeVO;

public interface ChallengeService {
	//글 등록
	void insertChallenge(ChallengeVO vo);
	//글 목록
	List<ChallengeVO> getChallengeList();
}
