package com.green.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.domain.DogamVO;
import com.green.domain.MemberVO;

@Repository("DogamDAO")
public class DogamDAOImpl implements DogamDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// get admin list
	@Override
	public List<DogamVO> getAdminDogam() {
		System.out.println("mybatis ==> getAdminDogam()");
		return mybatis.selectList("DogamDAO.getAdminDogam");
	}
	
	// get admin list with img
	@Override
	public List<DogamVO> getAdminImgDogam(int do_no) {
		System.out.println("mybatis ==> getAdminImgDogam()");
		List<DogamVO> list= mybatis.selectList("DogamDAO.getAdminImgDogam",do_no);
		for(DogamVO vo:list) {
			System.out.println(vo.toString());
		}
		return list;
	}
	
	// get dogam list
	@Override
	public List<DogamVO> getDogamList() {
		System.out.println("mybatis ==> getDogamList()");
		return mybatis.selectList("DogamDAO.getDogamList");
	}
	
	// get dogam detail
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
	
	// update
	@Override
	public void dogamUpdate(DogamVO vo) {
		System.out.println("mybatis==>dogamUpdate()");
		mybatis.update("DogamDAO.dogamUpdate",vo);
	}
	
	// delete
	@Override
	public void dogamDelete(DogamVO vo) {
		System.out.println("mybatis ==> dogamDelete()");
		mybatis.delete("DogamDAO.dogamDelete", vo);
	}





}
