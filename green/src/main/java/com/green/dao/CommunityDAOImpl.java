package com.green.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.domain.CommunityVO;

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
}
