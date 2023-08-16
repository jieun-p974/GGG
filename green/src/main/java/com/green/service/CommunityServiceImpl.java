package com.green.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.dao.CommunityDAO;
import com.green.domain.CommunityVO;
import com.green.domain.HeartVO;
import com.green.domain.ReplyVO;

@Service("CommunityService")
public class CommunityServiceImpl implements CommunityService{
	@Autowired
	private CommunityDAO communityDAO;
	
	// community
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
	
	//my board delete
	@Override
	public void deleteCommunity(CommunityVO vo) {
		// TODO Auto-generated method stub
		communityDAO.deleteCommunity(vo);
	}
	
	//my community
	@Override
	public List<CommunityVO> getMyCommunityList(String id) {
		// TODO Auto-generated method stub
		return communityDAO.getMyCommunityList(id);
	}
	
	// reply
	// Reply List
	@Override
	public List<ReplyVO> getReplyList() {
		// TODO Auto-generated method stub
		return communityDAO.getReplyList();
	}
	
	@Override
	public ReplyVO getReplyDetail(ReplyVO vo) {
		return communityDAO.getReplyDetail(vo);
	}
	
	@Override
	public void deleteReply(ReplyVO vo)	 {
		// TODO Auto-generated method stub
		communityDAO.deleteReply(vo);
	}
	
	@Override
	public void updateReply(ReplyVO vo) {
		// TODO Auto-generated method stub
		communityDAO.updateReply(vo);
	}
	
	//insert reply
	@Override
	public void insertReply(ReplyVO vo) {
		// TODO Auto-generated method stub
		communityDAO.replyWrite(vo);
	}
	
	// like
	// dolike
	@Override
	public void insertLike(HeartVO vo) {
		// TODO Auto-generated method stub
		communityDAO.likeInsert(vo);
	}
	
	
}
