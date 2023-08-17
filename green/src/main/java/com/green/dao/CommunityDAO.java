package com.green.dao;

import java.util.List;

import com.green.domain.CommunityVO;
import com.green.domain.HeartVO;
import com.green.domain.ReplyVO;

public interface CommunityDAO {
	
	// 커뮤니티
	
	public void communityWrite(CommunityVO vo);

	public CommunityVO getCommunityDetail(CommunityVO vo);

	public void updateCommunity(CommunityVO vo);

	public void deleteCommunity(CommunityVO vo);
	
	public List<CommunityVO> getCommunityList();

	public List<CommunityVO> getMyCommunityList(String id);

	// 댓글

	public void replyWrite(ReplyVO vo);

	public List<ReplyVO> getReplyList();
	
	public ReplyVO getReplyDetail(ReplyVO vo);

	public void updateReply(ReplyVO vo);
	
	public void deleteReply(ReplyVO vo);
	
	// 좋아요
	
	public void likeInsert(HeartVO vo);
	


}
