package com.green.dao;

import java.util.List;

import com.green.domain.DogamVO;

public interface DogamDAO {

	// get admin list
	public List<DogamVO> getAdminDogam();
	
	// get admin list with img
	public List<DogamVO> getAdminImgDogam(int do_no);
	
	// get dogam list
	public List<DogamVO> getDogamList();
	
	// get dogam detail
	public DogamVO getDogam(DogamVO vo);
	
	
	// insert
	public void dogamInsert(DogamVO vo);
	
	// img insert
	public void dogamImgInsert(DogamVO vo);
	
	// update
	public void dogamUpdate(DogamVO vo);
	
	// delete
	public void dogamDelete(DogamVO vo);
}
