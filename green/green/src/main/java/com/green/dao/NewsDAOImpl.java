package com.green.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.domain.NewsVO;

@Repository("NewsDAO")
public class NewsDAOImpl implements NewsDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	//news list -user
	@Override
	public List<NewsVO> getNewsList() {
		System.out.println("mybatis ==> getNewsList()");
		return mybatis.selectList("NewsDAO.getNewsList");
	}

	//get news
	@Override
	public NewsVO getNews(NewsVO vo) {
		System.out.println("mybatis ==> getNews()");
		return mybatis.selectOne("NewsDAO.getNews",vo);
	}

	//insert news
	@Override
	public void newsInsert(NewsVO vo) {
		System.out.println("mybatis ==> newsInsert()");
		mybatis.insert("NewsDAO.newsInsert", vo);
	}

	//update news
	@Override
	public void newsUpdate(NewsVO vo) {
		System.out.println("mybatis==>newsUpdate()");
		mybatis.update("NewsDAO.newsUpdate",vo);
	}

	//delete news
	@Override
	public void newsDelete(NewsVO vo) {
		System.out.println("mybatis==>newsDelete()");
		mybatis.delete("NewsDAO.newsDelete",vo);
	}

}
