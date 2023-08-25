package com.green.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.dao.CommunityDAO;
import com.green.domain.CommunityVO;
import com.green.domain.HashTagVO;
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
	
	public int getBoardNo() {
		return communityDAO.getBoardNo();
	}
	
	//get Community List
	@Override
	public List<CommunityVO> getCommunityList(String userId) {
		// TODO Auto-generated method stub
		return communityDAO.getCommunityList(userId);
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
	public List<CommunityVO> getMyCommunityList(CommunityVO vo) {
		// TODO Auto-generated method stub
		return communityDAO.getMyCommunityList(vo);
	}
	
	//id search community 
	@Override
	public List<CommunityVO> getIdCommunityList(HashMap map) {
		// TODO Auto-generated method stub
		return communityDAO.getIdCommunityList(map);
	}
	
	//hashtag community list
	@Override
	public List<CommunityVO> getHashTagCommunityList(CommunityVO vo) {
		// TODO Auto-generated method stub
		return communityDAO.getHashTagCommunityList(vo);
	}
	
	// reply
	// Reply List
	@Override
	public List<ReplyVO> getReplyList(int board_no) {
		// TODO Auto-generated method stub
		return communityDAO.getReplyList(board_no);
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
	
	// unlike
	@Override
	public void deleteLike(HeartVO vo) {
		// TODO Auto-generated method stub
		communityDAO.deleteLike(vo);
	}
	
	@Override
	public List<HashTagVO> getHashTagList(int board_no) {
		// TODO Auto-generated method stub
		return communityDAO.getHashTagList(board_no);
	}

	@Override
	public List<HashTagVO> getHashTag(int board_no) {
		// TODO Auto-generated method stub
		return communityDAO.getHashTag(board_no);
	}

	@Override
	public List<HashTagVO> getHashTagTOP5() {
		// TODO Auto-generated method stub
		return communityDAO.getHashTagTOP5();
	}
	
	@Override
	public void boardtagInsert(HashTagVO vo) {
		communityDAO.boardtagInsert(vo);
	}

	@Override
	public void deleteHashTag(HashTagVO vo) {
		communityDAO.deleteHashTag(vo);
	}
	
}