package com.green.dao;

import java.util.List;

import com.green.domain.NewsVO;

public interface NewsDAO {	
	// news list-user
	public List<NewsVO> getNewsList();

	// news detail
	public NewsVO getNews(NewsVO vo);
	
	//news insert
	public void newsInsert(NewsVO vo);
	
	//news update
	public void newsUpdate(NewsVO vo);
	
	//news delete
	public void newsDelete(NewsVO vo);
}
