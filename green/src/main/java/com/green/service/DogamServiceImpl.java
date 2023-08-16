package com.green.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.dao.DogamDAO;
import com.green.domain.DogamVO;

@Service("DogamService")
public class DogamServiceImpl implements DogamService {
	
	@Autowired
	private DogamDAO dogamDAO;

	// get admin list
	@Override
	public List<DogamVO> getAdminDogam() {
		return dogamDAO.getAdminDogam();
	}
	
	// get admin list with img
	@Override
	public List<DogamVO> getAdminImgDogam(int do_no) {
		return dogamDAO.getAdminImgDogam(do_no);
	}
	
	// get dogam list
	@Override
	public List<DogamVO> getDogamList() {
		return dogamDAO.getDogamList();
	}
	
	// get detail
	@Override
	public DogamVO getDogam(DogamVO vo) {
		return dogamDAO.getDogam(vo);
	}
		
	// get my dogam list
	@Override
	public List<HashMap<String, Object>> getMyDogam(HashMap map) {
		List<HashMap<String, Object>> list = dogamDAO.getMyDogam(map);
		for(HashMap d:list) {
			System.out.println(d);
		}
		return list;
	}
	
	@Override
	public List<HashMap<String, Object>> getMyDogamList(HashMap map) {
		return dogamDAO.getMyDogamList(map);
	}
	
	@Override
	public HashMap<String, Object> getDetail(HashMap map) {
		return dogamDAO.getDetail(map);
	}

	
	// insert
	@Override
	public void dogamInsert(DogamVO vo) {
		dogamDAO.dogamInsert(vo);
	}

	// img insert
	@Override
	public void dogamImgInsert(DogamVO vo) {
		dogamDAO.dogamImgInsert(vo);
	}
	
	// update
	@Override
	public void dogamUpdate(DogamVO vo) {
		dogamDAO.dogamUpdate(vo);
	}
	
	// delete
	@Override
	public void dogamDelete(DogamVO vo) {
		dogamDAO.dogamDelete(vo);
	}

	// sinchung
	@Override
	public int dogamSinchung(HashMap map) {
		int rs = dogamDAO.dogamSinchung(map);
		return rs;
	}

	@Override
	public int myYes(String id) {
		int do_no = dogamDAO.myYes(id);
		return do_no;
	}

	
}