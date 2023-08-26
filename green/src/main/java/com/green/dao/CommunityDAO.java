package com.green.dao;

import java.util.HashMap;
import java.util.List;

import com.green.domain.CommunityVO;
import com.green.domain.HashTagVO;
import com.green.domain.HeartVO;
import com.green.domain.ReplyVO;

public interface CommunityDAO {
	
	// 커뮤니티 Community
	public List<CommunityVO> getCommunityList(String userId);
	
	public List<CommunityVO> getSearchCommunityList(HashMap map);
	
	public List<CommunityVO> getMyCommunityList(CommunityVO vo);
	
	public void communityWrite(CommunityVO vo);

	public int getBoardNo();
	
	public CommunityVO getCommunityDetail(CommunityVO vo);

	public void updateCommunity(CommunityVO vo);

	public void deleteCommunity(CommunityVO vo);
	
	// 해시태그 HashTag
	public List<HashTagVO> getHashTagList(int board_no);
	
	public List<HashTagVO> getHashTagTOP5();
	
	public List<HashTagVO> getHashTag(int board_no);
	
	public void boardtagInsert(HashTagVO vo);
	
	public void deleteHashTag(HashTagVO vo);
	
	// 댓글 Reply
	public List<ReplyVO> getReplyList(int board_no);

	public void replyWrite(ReplyVO vo);
	
	public ReplyVO getReplyDetail(ReplyVO vo);

	public void updateReply(ReplyVO vo);
	
	public void deleteReply(ReplyVO vo);
	
	// 좋아요 Like
	public void likeInsert(HeartVO vo);
	
	public void deleteLike(HeartVO vo);


}