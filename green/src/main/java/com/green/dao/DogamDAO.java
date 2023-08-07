package com.green.dao;

import java.util.List;

import com.green.domain.DogamVO;

public interface DogamDAO {

	// get list
	public List<DogamVO> getDogamList();
	
	// get detail
	public DogamVO getDogam(DogamVO vo);
	
	// insert
	public void dogamInsert(DogamVO vo);
	
	// img insert
	public void dogamImgInsert(DogamVO vo);
	
	// delete
	public void dogamDelete(DogamVO vo);
}
