package com.green.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.domain.CommunityVO;
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
	public List<CommunityVO> getCommunityList() {
		System.out.println("Mybatis => community list");
		return mybatis.selectList("CommunityDAO.getCommunityList");
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
		mybatis.update("CommunityDAO.deleteCommunity", vo);
	}
	
	public List<CommunityVO> getMyCommunityList(String id) {
		System.out.println("Mybatis=> my community");
		return mybatis.selectList("CommunityDAO.getMyCommunityList", id);
	}
	
	public List<ReplyVO> getReplyList(int board_no) {
		System.out.println("Mybatis=> reply list");
		return mybatis.selectList("CommunityDAO.getReplyList", board_no);
	}
	
	@Override
	public void replyWrite(ReplyVO vo) {
		System.out.println("Mybatis => reply insert");
		mybatis.insert("CommunityDAO.replyWrite",vo);
	}
	
	
}
