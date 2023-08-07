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

	// get list
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
	
	// delete
	@Override
	public void dogamDelete(DogamVO vo) {
		dogamDAO.dogamDelete(vo);
	}





}
