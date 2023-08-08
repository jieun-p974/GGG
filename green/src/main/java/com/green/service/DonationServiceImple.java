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

	@Override
	public void insertDona(DonationVO vo) {
		donationDAO.donationInsert(vo);
	}

	@Override
	public void updateDona(DonationVO vo) {
		System.out.println("서비스"+vo.getDon_name());
		donationDAO.updateDona(vo);
	}

	@Override
	public void deleteDona(DonationVO vo) {
		donationDAO.deleteDona(vo);
	}



}
