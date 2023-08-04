package com.green.dao;

import java.util.List;

import com.green.domain.DonationVO;

public interface DonationDAO{
	//public void insertDona(DonationVO vo);
	public List<DonationVO> selectDona();
	
	//디테일 기부처 
	public DonationVO getDona(DonationVO vo);
	
}