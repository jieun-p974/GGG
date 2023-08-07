package com.green.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.dao.DonationDAO;
import com.green.domain.DonationVO;

@Service("DonationService")
public class DonationServiceImple implements DonationService {
	@Autowired
	private DonationDAO donationDAO;

//	@Override
//	public void insertDona(DonationVO vo) {
//		// TODO Auto-generated method stub
//		donationDAO.insertDona(vo);
//	}

	//List 
	@Override
	public List<DonationVO> selectDona() {
		return donationDAO.selectDona();
	}

	//get one
	@Override
	public DonationVO getDona(DonationVO vo) {
		return donationDAO.getDona(vo);
	}

}
