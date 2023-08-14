package com.green.service;

import java.util.List;

import com.green.domain.CommunityVO;
import com.green.domain.HeartVO;
import com.green.domain.ReplyVO;

public interface CommunityService {
	//community insert
	void insertCommunity(CommunityVO vo);
	
	//community list
	List<CommunityVO> getCommunityList();
	
	//get one
	CommunityVO getCommunityDetail(CommunityVO vo);
	
	//modify
	void updateCommunity(CommunityVO vo);

	//delete
	void deleteCommunity(CommunityVO vo);

	//my Community
	List<CommunityVO> getMyCommunityList(String id);
	
	//reply insert
	void insertReply(ReplyVO vo);

	//reply list
	List<ReplyVO> getReplyList();

	void insertLike(HeartVO vo);
	
	void deleteReply(ReplyVO vo);
	
	void updateReply(ReplyVO vo);
	
	ReplyVO getReplyDetail(ReplyVO vo);



}
