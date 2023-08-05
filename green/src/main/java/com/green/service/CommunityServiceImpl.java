package com.green.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.dao.CommunityDAO;
import com.green.domain.ChallengeVO;
import com.green.domain.CommunityVO;

@Service("CommunityService")
public class CommunityServiceImpl implements CommunityService{
	@Autowired
	private CommunityDAO communityDAO;
	
	//insert
	@Override
	public void insertCommunity(CommunityVO vo) {
		// TODO Auto-generated method stub
		communityDAO.communityWrite(vo);
	}
	
	//get Community List
	@Override
	public List<CommunityVO> getCommunityList() {
		// TODO Auto-generated method stub
		return communityDAO.getCommunityList();
	}
	
	//get one
	@Override
	public CommunityVO getCommunityDetail(CommunityVO vo) {
		return communityDAO.getCommunityDetail(vo);
	}
	
	//my board modify
	@Override
	public void updateCommunity(CommunityVO vo) {
		// TODO Auto-generated method stub
		communityDAO.updateCommunity(vo);
	}
	
}
