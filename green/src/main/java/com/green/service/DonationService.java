package com.green.service;

import java.util.HashMap;
import java.util.List;

import com.green.domain.DonationVO;

public interface DonationService {

	//기부처 등록
	void insertDona(DonationVO vo);
	//기부처 수정
    void updateDona(DonationVO vo);
	
	//기부처 삭제
	void deleteDona(DonationVO vo);
	
	//select
	List<DonationVO> selectDona();
	
	//기부처 상세 페이지 조회
	DonationVO getDona(DonationVO vo);
	
	// 기부 포인트 계산
	void goDona(HashMap<String, Object> map);
	void memDon(HashMap<String, Object> map);
}
