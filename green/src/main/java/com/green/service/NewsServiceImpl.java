package com.green.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.dao.NewsDAO;
import com.green.domain.NewsVO;

@Service("NewsService")
public class NewsServiceImpl implements NewsService{

	@Autowired
	private NewsDAO newsDAO;
	//news list -user
	@Override
	public List<NewsVO> getNewsList() {
		// TODO Auto-generated method stub
		return newsDAO.getNewsList();
	}

	//news detail
	@Override
	public NewsVO getNews(NewsVO vo) {
		// TODO Auto-generated method stub
		return newsDAO.getNews(vo);
	}

	//news insert
	@Override
	public void newsInsert(NewsVO vo) {
		// TODO Auto-generated method stub
		newsDAO.newsInsert(vo);
	}

	//news update
	@Override
	public void newsUpdate(NewsVO vo) {
		// TODO Auto-generated method stub
		newsDAO.newsUpdate(vo);
	}

	//news delete
	@Override
	public void newsDelete(NewsVO vo) {
		// TODO Auto-generated method stub
		newsDAO.newsDelete(vo);
	}

}
