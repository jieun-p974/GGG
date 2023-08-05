package com.green.service;

import java.util.List;

import com.green.domain.CommunityVO;

public interface CommunityService {
	//글 등록
	void insertCommunity(CommunityVO vo);
	
	//글 목록
	List<CommunityVO> getCommunityList();
	
	//get one
	CommunityVO getCommunityDetail(CommunityVO vo);
	
	//modify
	void updateCommunity(CommunityVO vo);
}
