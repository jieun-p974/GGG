package com.green.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.domain.MemberVO;
import com.green.domain.PayVO;
import com.green.domain.ChalPayVO;

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
	public void chalPay(ChalPayVO vo){
	System.out.println("mybatis==>chalPay");
	mybatis.insert("payDAO.chalPay",vo);
		
	}

	@Override
	public ChalPayVO forPay(ChalPayVO vo) {
		System.out.println("mybatis==>forPay");
		return mybatis.selectOne("payDAO.forPay",vo);
	}

	@Override
	public void cardInsert(PayVO vo) {
		System.out.println("mybatis==>cardInsert");
		mybatis.insert("payDAO.cardInsert",vo);
	}

	@Override
	public void accInsert(PayVO vo) {
		System.out.println("mybatis==>accInsert");
		mybatis.insert("payDAO.accInsert",vo);
	}

	@Override
	public void receipt(int dogeon_pay_no) {
		System.out.println("mybatis==>receipt");
		mybatis.update("payDAO.receipt",dogeon_pay_no);
		
	}

	@Override
	public void memReceipt(ChalPayVO vo) {
		// TODO Auto-generated method stub
		mybatis.insert("payDAO.memReceipt",vo);
	}

	@Override
	public int getTimes(int dogeon_pay_no) {
		int times = mybatis.selectOne("payDAO.getTimes",dogeon_pay_no);
		System.out.println("도전 횟수 출력 "+times);
		return times;
	}
	
	@Override
	public void payTryNum(HashMap map) {
		// TODO Auto-generated method stub
		System.out.println("d"+map.get("dogeon_times"));
		System.out.println("d"+map.get("id"));
		mybatis.update("payDAO.payTryNum",map);
	}

	@Override
	public MemberVO myAc(MemberVO vo) {
		return mybatis.selectOne("payDAO.myAc",vo);
	}

	@Override
	public MemberVO myCard(MemberVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("payDAO.myCard",vo);
	}
}