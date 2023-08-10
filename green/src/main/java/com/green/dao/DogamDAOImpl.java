package com.green.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.domain.DogamVO;

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
		
	// get my dogam list
	@Override
	public List<HashMap<String, Object>> getMyDogam(HashMap map) {
		System.out.println("Mybatis => getMyDogam()");
		System.out.println("여깁니다" + map);
		List<HashMap<String, Object>> list = mybatis.selectList("DogamDAO.getMyDogam",map);
		return list;
	}
	
	@Override
	public List<HashMap<String, Object>> getMyDogamList(HashMap map) {
		System.out.println("mybatis==>getMyDogamList()");
		List<DogamVO> dogamList = mybatis.selectList("DogamDAO.getMemDogam",map.get("id"));
		map.put("values", dogamList);
		List<HashMap<String, Object>> returnList = new ArrayList();
		for(DogamVO d : dogamList) {
			HashMap<String, Object> param = new HashMap<String, Object>();
			param.put("id",map.get("id"));
			param.put("do_no",d.getDo_no());
			System.out.println(param);
			HashMap<String, Object> re = mybatis.selectOne("DogamDAO.getMyDogam",param);
			if(re != null) {
				returnList.add(re);
			}
		}
		return returnList;
	}
		
	@Override
	public HashMap<String, Object> getDetail(HashMap map) {
		System.out.println("mybatis==>getMyDogamList()");
		HashMap<String, Object> returnD = mybatis.selectOne("DogamDAO.getMyDogam",map);
		return returnD;
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

	// sinchung
	@Override
	public int dogamSinchung(HashMap map) {
		System.out.println("mybatis==>dogamSinchung()");
		int rs = mybatis.insert("DogamDAO.dogamSinchung", map);
		return rs;
	}

	



}
