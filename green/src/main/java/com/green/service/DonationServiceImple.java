package com.green.service;

import java.util.HashMap;
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
		donationDAO.updateDona(vo);
	}

	@Override
	public void deleteDona(DonationVO vo) {
		donationDAO.deleteDona(vo);
	}

	@Override
	public List<HashMap<String, Object>> myDonaList(String id) {
		return donationDAO.myDonaList(id);
	}



}
