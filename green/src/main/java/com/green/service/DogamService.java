package com.green.service;

import java.util.List;

import com.green.domain.DogamVO;

public interface DogamService {

	// get list
	List<DogamVO> getDogamList();
	
	// get detail
	DogamVO getDogam(DogamVO vo);
	
	// insert
	void dogamInsert(DogamVO vo);
	
	// img insert
	void dogamImgInsert(DogamVO vo);

	// delete
	void dogamDelete(DogamVO vo);
}
