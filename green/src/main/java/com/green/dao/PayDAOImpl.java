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
		System.out.println("getPay");
		List<MemberVO> list= mybatis.selectList("payDAO.getPay",userId);
		System.out.println(userId);
		System.out.println(list.get(0).getAcc_num());
		return list;
	}

}
