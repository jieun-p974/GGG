package com.green.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.domain.MemberVO;

@Repository("payDAO")
public class PayDAOImpl implements PayDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<MemberVO> getPay(String userId) {
		List<MemberVO> list = mybatis.selectList("payDAO.getPay", userId);
		System.out.println(userId);
//		System.out.println(list.get(0).getAcc_num());
		return list;
	}

	@Override
	public List<MemberVO> getCPay(String userId) {
		List<MemberVO> listc = mybatis.selectList("payDAO.getCPay", userId);
		System.out.println(userId); // System.out.println(list.get(0).getAcc_num());
		return listc;
	}

	@Override
	public void chalPay(HashMap<String, Object> map){
	System.out.println("mybatis==>chalPay");
	mybatis.insert("PayDAO.chalPay",map);
		
	}

	@Override
	public void cardIn(HashMap<String, Object> map) {
		System.out.println("mybatis==>cardIn");
		mybatis.insert("PayDAO.cardIn",map);
	}

	@Override
	public void accIn(HashMap<String, Object> map) {
		System.out.println("mybatis==>accIn");
		mybatis.insert("PayDAO.accIn",map);
	}

}