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

	@Override
	public void donationInsert(DonationVO vo) {
		System.out.println("mybatis==>insertDona");
		mybatis.insert("DonationDAO.donationInsert",vo);
	}

	@Override
	public void updateDona(DonationVO vo) {
		System.out.println("mybatis==>updateDona");
		mybatis.update("DonationDAO.updateDona",vo);
	}

	@Override
	public void deleteDona(DonationVO vo) {
		// TODO Auto-generated method stub
		System.out.println("mybatis==>deleteDona");
		mybatis.delete("DonationDAO.deleteDona",vo);
	}

}
