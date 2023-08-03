package com.green.service;

import java.util.List;

import com.green.domain.DonationVO;

public interface DonationService {

	//기부 등록
	//void insertDona(DonationVO vo);
	
	//select
	List<DonationVO> selectDona();
	
	//기부처 상세 페이지 조회
	DonationVO getDona(DonationVO vo);
}
