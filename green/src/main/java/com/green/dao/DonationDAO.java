package com.green.dao;

import java.util.HashMap;
import java.util.List;

import com.green.domain.DonationVO;

public interface DonationDAO{
	public void donationInsert(DonationVO vo);
	public void updateDona(DonationVO vo);
	public void deleteDona(DonationVO vo);
	
	public List<DonationVO> selectDona();
	

	//디테일 기부처 
	public DonationVO getDona(DonationVO vo);
	
	public void goDona(HashMap<String, Object> map);
	public void memDon(HashMap<String, Object> map);
}