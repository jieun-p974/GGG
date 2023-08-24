package com.green.dao;

import java.util.HashMap;
import java.util.List;

import com.green.domain.CommunityVO;
import com.green.domain.HashTagVO;
import com.green.domain.HeartVO;
import com.green.domain.ReplyVO;

public interface CommunityDAO {
	
	// 커뮤니티
	public void communityWrite(CommunityVO vo);

	public CommunityVO getCommunityDetail(CommunityVO vo);

	public void updateCommunity(CommunityVO vo);

	public void deleteCommunity(CommunityVO vo);
	
	public List<CommunityVO> getCommunityList(String userId);

	public List<CommunityVO> getIdCommunityList(HashMap map);
	
	public List<CommunityVO> getMyCommunityList(CommunityVO vo);

	public List<CommunityVO> getHashTagCommunityList(CommunityVO vo);
	
	// 댓글
	public void replyWrite(ReplyVO vo);

	public List<ReplyVO> getReplyList(int board_no);
	
	public ReplyVO getReplyDetail(ReplyVO vo);

	public void updateReply(ReplyVO vo);
	
	public void deleteReply(ReplyVO vo);
	
	// 좋아요
	public void likeInsert(HeartVO vo);
	
	public void deleteLike(HeartVO vo);

	public List<HashTagVO> getHashTagList(int board_no);

	public List<HashTagVO> getHashTagTOP5();





}