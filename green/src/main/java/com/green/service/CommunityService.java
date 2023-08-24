package com.green.service;

import java.util.HashMap;
import java.util.List;

import com.green.domain.CommunityVO;
import com.green.domain.HashTagVO;
import com.green.domain.HeartVO;
import com.green.domain.ReplyVO;

public interface CommunityService {
	
	// community
	//community insert
	void insertCommunity(CommunityVO vo);
	
	//community list
	List<CommunityVO> getCommunityList(String userId);
	
	//get one
	CommunityVO getCommunityDetail(CommunityVO vo);
	
	//modify
	void updateCommunity(CommunityVO vo);

	//delete
	void deleteCommunity(CommunityVO vo);
	
	//my Community
	List<CommunityVO> getMyCommunityList(CommunityVO vo);

	//id search Community
	List<CommunityVO> getIdCommunityList(HashMap map);
	
	//hashTag search Community
	List<CommunityVO> getHashTagCommunityList(CommunityVO vo);
	
	// reply
	//reply insert
	void insertReply(ReplyVO vo);

	//reply list
	List<ReplyVO> getReplyList(int board_no);
	
	void deleteReply(ReplyVO vo);

	void updateReply(ReplyVO vo);
	
	ReplyVO getReplyDetail(ReplyVO vo);
	
	// like
	void insertLike(HeartVO vo);
	
	void deleteLike(HeartVO vo);

	List<HashTagVO> getHashTagList(int board_no);

	List<HashTagVO> getHashTagTOP5();



}