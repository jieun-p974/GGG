package com.green.service;

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




	
}
