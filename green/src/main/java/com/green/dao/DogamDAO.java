package com.green.dao;

import java.util.HashMap;
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
		
	//get my dogam list
	public List<HashMap<String, Object>> getMyDogamList(HashMap map);
	public List<HashMap<String, Object>> getMyDogam(HashMap map);
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
	
<<<<<<< HEAD

	//기부->exp에 적립
	public void donExp(HashMap<String, Object> map);
=======
	// my yes
	public int myYes(String id);
>>>>>>> refs/remotes/origin/gaeun
	
<<<<<<< HEAD
	// my yest
		public int myYes(String id);
=======
	// main animal choice
	public int mainChoice(HashMap map);
	
	// main animal cancle
	public int mainCancle(HashMap map);
	public int mainCancle3(String id);
	
	// name update
	public int updateDoname(HashMap map);
	
>>>>>>> refs/remotes/origin/gaeun
	
}