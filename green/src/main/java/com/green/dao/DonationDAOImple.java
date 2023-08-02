package com.green.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.domain.DonationVO;

@Repository("donationDAO")
public class DonationDAOImple implements DonationDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	/*
	 * @Override public void insertDona(DonationVO vo) {
	 * System.out.println("=>My batis insertDona() 호출");
	 * mybatis.insert("DonationDAO.insertDona",vo); }
	 */
	@Override
	public List<DonationVO> selectDona() {
		System.out.println("=>My batis selectDona() 호출");
		return mybatis.selectList("DonationDAO.selectDona");
	}

	@Override
	public DonationVO getDona(DonationVO vo) {
		System.out.println("=>My batis detailDona() 호출");
		return (DonationVO) mybatis.selectOne("DonationDAO.getDona",vo);
	}

}
