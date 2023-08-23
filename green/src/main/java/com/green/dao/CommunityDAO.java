package com.green.dao;

import java.util.List;

import com.green.domain.CommunityVO;
import com.green.domain.HeartVO;
import com.green.domain.ReplyVO;

public interface CommunityDAO {
	
	// Ŀ�´�Ƽ
	public void communityWrite(CommunityVO vo);

	public CommunityVO getCommunityDetail(CommunityVO vo);

	public void updateCommunity(CommunityVO vo);

	public void deleteCommunity(CommunityVO vo);
	
	public List<CommunityVO> getCommunityList(String userId);

	public List<CommunityVO> getMyCommunityList(CommunityVO vo);

	// ���
	public void replyWrite(ReplyVO vo);

	public List<ReplyVO> getReplyList(int board_no);
	
	public ReplyVO getReplyDetail(ReplyVO vo);

	public void updateReply(ReplyVO vo);
	
	public void deleteReply(ReplyVO vo);
	
	// ���ƿ�
	public void likeInsert(HeartVO vo);
	
	public void deleteLike(HeartVO vo);




}