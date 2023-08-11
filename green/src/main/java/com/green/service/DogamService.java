package com.green.service;

import java.util.HashMap;
import java.util.List;

import com.green.domain.DogamVO;

public interface DogamService {

	// get admin list
	public List<DogamVO> getAdminDogam();
	
	// get admin list with img
	public List<DogamVO> getAdminImgDogam(int do_no);
	
	// get dogam list
	public List<DogamVO> getDogamList();
	
	// get dogam detail
	public DogamVO getDogam(DogamVO vo);
	
	// get my dogam list
	public List<HashMap<String, Object>> getMyDogam(HashMap map);
	public List<HashMap<String, Object>> getMyDogamList(HashMap map);
	public HashMap<String, Object> getDetail(HashMap map);
	
	// insert
	public void dogamInsert(DogamVO vo);
	
	// img insert
	public void dogamImgInsert(DogamVO vo);
	
	// update
	public void dogamUpdate(DogamVO vo);

	// delete
	public void dogamDelete(DogamVO vo);
	
	// sinchung
	public int dogamSinchung(HashMap map);

}