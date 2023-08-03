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
		System.out.println("Mybatis => 커뮤니티 등록");
		mybatis.insert("CommunityDAO.communityWrite",vo);
	}

	@Override
	public List<CommunityVO> getCommunityList() {
		System.out.println("Mybatis => 커뮤니티 리스트");
		return mybatis.selectList("CommunityDAO.getCommunityList");
	}

}
