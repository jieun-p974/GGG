package com.green.dao;

import java.util.HashMap;
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
		System.out.println("dao"+vo.getDon_name());
		mybatis.update("DonationDAO.updateDona",vo);
	}

	@Override
	public void deleteDona(DonationVO vo) {
		// TODO Auto-generated method stub
		System.out.println("mybatis==>deleteDona");
		mybatis.delete("DonationDAO.deleteDona",vo);
	}

	@Override
	public List<HashMap<String, Object>> myDonaList(String id) {
		System.out.println("mybatis==>myDonaList");
		List<HashMap<String, Object>> list = mybatis.selectList("DonationDAO.myDonaList",id);
		return list;
	}

	@Override
	public void goDona(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		System.out.println("mybatis==>goDona");
		mybatis.update("DonationDAO.goDona",map);
	}

	@Override
	public void memDon(HashMap<String, Object> map) {
		System.out.println("mybatis==>memDon");
		mybatis.insert("DonationDAO.memDon",map);
	}

}
