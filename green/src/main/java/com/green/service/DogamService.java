package com.green.service;

import java.util.List;

import com.green.domain.DogamVO;

public interface DogamService {

	// get admin list
	List<DogamVO> getAdminDogam();
	
	// get admin list with img
	List<DogamVO> getAdminImgDogam(int do_no);
	
	// get dogam list
	List<DogamVO> getDogamList();
	
	// get dogam detail
	DogamVO getDogam(DogamVO vo);
	
	// insert
	void dogamInsert(DogamVO vo);
	
	// img insert
	void dogamImgInsert(DogamVO vo);
	
	// update
	void dogamUpdate(DogamVO vo);

	// delete
	void dogamDelete(DogamVO vo);
}
