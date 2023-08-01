package com.green.dao;

import java.util.List;

import com.green.domain.ChallengeVO;

public interface ChallengeDAO {
	public void challengeWrite(ChallengeVO vo);

	public List<ChallengeVO> getChallengeList();
}
