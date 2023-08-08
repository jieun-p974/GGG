package com.green.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.domain.MemberVO;
@Repository("payDAO")
public class PayDAOImpl implements PayDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<MemberVO> getPay(String userId) {
		List<MemberVO> list= mybatis.selectList("payDAO.getPay",userId);
		return list;
	}

}
