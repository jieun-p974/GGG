package com.green.dao;

import java.util.List;

import com.green.domain.CommunityVO;

public interface CommunityDAO {
	
	public void communityWrite(CommunityVO vo);

	public List<CommunityVO> getCommunityList();

	public CommunityVO getCommunityDetail(CommunityVO vo);

	public void updateCommunity(CommunityVO vo);

	public void deleteCommunity(CommunityVO vo);

	public List<CommunityVO> getMyCommunityList(String id);
	
	public void replyWrite(CommunityVO vo);

	public List<CommunityVO> getReplyList(int board_no);


}
