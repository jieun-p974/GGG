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
		System.out.println("mybatis==>getDetail()");
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

	// my yes
	@Override
	public int myYes(String id) {
		System.out.println("mybatis ==> myYes()");
		Integer do_no = mybatis.selectOne("DogamDAO.myYes",id);
		if(do_no == null) {
			do_no= 0;
		}
		return do_no;
	}

	// main animal choice
	@Override
	public int mainChoice(HashMap map) {
		System.out.println("mybatis==>mainChoice()");
		int rs=mybatis.update("DogamDAO.mainChoice",map);
		return rs;
	}
	
	// main animal cancle
	@Override
	public int mainCancle(HashMap map) {
		System.out.println("mybatis==>mainCancle()");
		int rs=mybatis.update("DogamDAO.mainCancle",map);
		return rs;
	}

	@Override
	public int mainCancle3(String id) {
		System.out.println("mybatis==>mainCancle3()");
		int rs=mybatis.update("DogamDAO.mainCancle3",id);
		return rs;
	}


	// name update
	@Override
	public int updateDoname(HashMap map) {
		System.out.println("mybatis==>updateDoname()");
		System.out.println("d"+map);
		int rs = mybatis.update("DogamDAO.updateDoname",map);
		return rs;
	}

	//기부->exp
	@Override
	public void donExp(HashMap<String, Object> map) {
		System.out.println("==>exp�쓽donExp()�샇異�");
		System.out.println("donExp: "+ map);
		mybatis.update("DogamDAO.donExp",map);
	}

	//insertGoods
	@Override
	public int insertGoods(HashMap map) {
		System.out.println("mybatis ==> insertGoods()");
		int rs = mybatis.insert("DogamDAO.insertGoods", map);
		return rs;
	}

	@Override
	public int searchGoods(HashMap map) {
		System.out.println("mybatis ==> searchGoods()");
		int rs = mybatis.selectOne("DogamDAO.searchGoods", map);
		return rs;
	}

}