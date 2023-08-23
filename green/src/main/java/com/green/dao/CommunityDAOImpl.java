package com.green.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.domain.CommunityVO;
import com.green.domain.HeartVO;
import com.green.domain.ReplyVO;

@Repository("communityDAO")
public class CommunityDAOImpl implements CommunityDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public void communityWrite(CommunityVO vo) {
		System.out.println("Mybatis => community insert");
		mybatis.insert("CommunityDAO.communityWrite",vo);
	}

	@Override
	public List<CommunityVO> getCommunityList(String userId) {
		System.out.println("Mybatis => community list");
		return mybatis.selectList("CommunityDAO.getCommunityList", userId);
	}

	public CommunityVO getCommunityDetail(CommunityVO vo) {
		System.out.println("Mybatis=> community detail");
		return mybatis.selectOne("CommunityDAO.getCommunityDetail", vo);
	}
	
	public void updateCommunity(CommunityVO vo) {
		System.out.println("Mybatis=> community modify");
		mybatis.update("CommunityDAO.updateCommunity", vo);
	}
	
	public void deleteCommunity(CommunityVO vo) {
		System.out.println("Mybatis=> community delete");
		mybatis.delete("CommunityDAO.deleteCommunity", vo);
	}
	
	public List<CommunityVO> getMyCommunityList(CommunityVO vo) {
		System.out.println("Mybatis=> my community");
		return mybatis.selectList("CommunityDAO.getMyCommunityList", vo);
	}
	
	public ReplyVO getReplyDetail(ReplyVO vo) {
		System.out.println("Mybatis=> reply detail");
		return mybatis.selectOne("CommunityDAO.getReplyDetail",vo);
	}
	public void updateReply(ReplyVO vo) {
		System.out.println("Mybatis=> reply modify");
		mybatis.update("CommunityDAO.updateReply", vo);
	}
	
	public void deleteReply(ReplyVO vo) {
		System.out.println("Mybatis=> reply delete");
		mybatis.delete("CommunityDAO.deleteReply",vo);
	}
	
	public List<ReplyVO> getReplyList(int board_no) {
		System.out.println("Mybatis=> reply list");
		return mybatis.selectList("CommunityDAO.getReplyList",board_no);
	}
	
	@Override
	public void replyWrite(ReplyVO vo) {
		System.out.println("Mybatis => reply insert");
		mybatis.insert("CommunityDAO.replyWrite",vo);
	}
	
	@Override
	public void likeInsert(HeartVO vo) {
		System.out.println("Mybatis => like insert");
		mybatis.insert("CommunityDAO.likeInsert",vo);
	}
	
	@Override
	public void deleteLike(HeartVO vo) {
		System.out.println("Mybatis => like delete");
		mybatis.delete("CommunityDAO.deleteLike", vo);
	}
	
	
}