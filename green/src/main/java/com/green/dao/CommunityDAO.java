package com.green.dao;

import java.util.List;

import com.green.domain.CommunityVO;

public interface CommunityDAO {
	public void communityWrite(CommunityVO vo);

	public List<CommunityVO> getCommunityList();
}
