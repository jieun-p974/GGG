package com.green.service;

import java.util.HashMap;
import java.util.List;

import com.green.domain.CommunityVO;
import com.green.domain.HashTagVO;
import com.green.domain.HeartVO;
import com.green.domain.ReplyVO;

public interface CommunityService {
	
	// 커뮤니티 Community
	List<CommunityVO> getCommunityList(String userId);
	
	List<CommunityVO> getSearchCommunityList(HashMap map);
	
	List<CommunityVO> getMyCommunityList(CommunityVO vo);

	void insertCommunity(CommunityVO vo);
	
	int getBoardNo();
	
	CommunityVO getCommunityDetail(CommunityVO vo);
	
	void updateCommunity(CommunityVO vo);
	
	void deleteCommunity(CommunityVO vo);

	// 해시태그 HashTag
	List<HashTagVO> getHashTagList(int board_no);
	
	List<HashTagVO> getHashTagTOP5();
	
	List<HashTagVO> getHashTag(int board_no);
	
	void boardtagInsert(HashTagVO vo);
	
	void deleteHashTag(HashTagVO vo);

	// 댓글 Reply
	List<ReplyVO> getReplyList(int board_no);

	void insertReply(ReplyVO vo);
	
	ReplyVO getReplyDetail(ReplyVO vo);

	void updateReply(ReplyVO vo);
	
	void deleteReply(ReplyVO vo);
	
	// 좋아요 Like
	void insertLike(HeartVO vo);
	
	void deleteLike(HeartVO vo);




}