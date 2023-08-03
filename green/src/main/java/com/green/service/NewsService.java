package com.green.service;

import java.util.List;

import com.green.domain.NewsVO;

public interface NewsService {
	//news list-user
	List<NewsVO> getNewsList();

	//news detail
	NewsVO getNews(NewsVO vo);
	
	//news insert
	void newsInsert(NewsVO vo);
	
	//news update
	void newsUpdate(NewsVO vo);
	
	//news delete
	void newsDelete(NewsVO vo);
}
