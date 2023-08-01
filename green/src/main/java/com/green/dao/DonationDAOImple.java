package com.green.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.domain.DonationVO;

@Repository("DonationDAO")
public class DonationDAOImple {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertDona(DonationVO vo) {
		System.out.println("=>My batis insertDona() 호출");
		mybatis.insert("DonationDAO.insertDona",vo);
	}

}
