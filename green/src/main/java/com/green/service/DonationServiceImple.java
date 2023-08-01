package com.green.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.dao.DonationDAO;
import com.green.domain.DonationVO;

@Service("DonationService")
public class DonationServiceImple implements DonationService{
@Autowired
private DonationDAO donationDAO;

public void insertDonation(DonationVO vo) {
	donationDAO.insertDona(vo);
}

}
