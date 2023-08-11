package com.green.dao;

import java.util.List;

import com.green.domain.CommunityVO;
import com.green.domain.HeartVO;
import com.green.domain.ReplyVO;

public interface CommunityDAO {
	
	public void communityWrite(CommunityVO vo);

	public CommunityVO getCommunityDetail(CommunityVO vo);

	public void updateCommunity(CommunityVO vo);

	public void deleteCommunity(CommunityVO vo);

	public void replyWrite(ReplyVO vo);
	
	public List<CommunityVO> getCommunityList();

	public List<ReplyVO> getReplyList(Integer board_no);
	
	public List<CommunityVO> getMyCommunityList(String id);

	public void likeInsert(HeartVO vo);



}
