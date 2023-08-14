package com.green.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.green.domain.IndexVO;




@Repository("indexDAO")
public class IndexDAOImple implements IndexDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insertMember(IndexVO vo) {
		// TODO Auto-generated method stub
		mybatis.insert("IndexDAO.insertmember", vo);
	}

}
