package com.green.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.dao.IndexDAOImple;
import com.green.domain.IndexVO;

@Service("indexService")
public class IndexServiceImple implements IndexService{
	@Autowired
	private IndexDAOImple indexDAO;

	@Override
	public void insertMember(IndexVO vo) {
		// TODO Auto-generated method stub
		indexDAO.insertMember(vo);
	}
	

	
}
