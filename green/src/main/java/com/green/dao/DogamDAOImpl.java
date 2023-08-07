package com.green.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.domain.DogamVO;

@Repository("DogamDAO")
public class DogamDAOImpl implements DogamDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// get list
	@Override
	public List<DogamVO> getDogamList() {
		System.out.println("mybatis ==> getDogamList()");
		return mybatis.selectList("DogamDAO.getDogamList");
	}
	
	// get detail
	@Override
	public DogamVO getDogam(DogamVO vo) {
		System.out.println("mybatis ==> getDogam()");
		return mybatis.selectOne("DogamDAO.getDogam",vo);
	}
	
	// insert
	@Override
	public void dogamInsert(DogamVO vo) {
		System.out.println("mybatis ==> dogamInsert()");
		mybatis.insert("DogamDAO.dogamInsert", vo);
	}
	
	// img insert
	@Override
	public void dogamImgInsert(DogamVO vo) {
		System.out.println("mybatis ==> dogamImgInsert()");
		mybatis.insert("DogamDAO.dogamImgInsert", vo);
	}

	// delete
	@Override
	public void dogamDelete(DogamVO vo) {
		System.out.println("mybatis ==> dogamDelete()");
		mybatis.delete("DogamDAO.dogamDelete", vo);
	}





}
