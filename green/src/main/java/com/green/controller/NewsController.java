package com.green.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.domain.ChallengeVO;
import com.green.domain.NewsVO;
import com.green.service.NewsService;

@Controller
@RequestMapping("/news/")
public class NewsController {
	@Autowired
	private NewsService newsService;

	// 화면만 이동(DB연결은 XX)
	@RequestMapping(value = "{url}.do")
	public String url(@PathVariable String url) {
		System.out.println("뉴스 요청");
		return "/news/" + url;
	}

	// news list -user or admin
	@RequestMapping(value = {"/newsList.do","/newsCheck.do"})
	public void getNewsList(Model model) {
		List<NewsVO> list = null;
		list = newsService.getNewsList();
		model.addAttribute("list", list);
		System.out.println("요청 ");
	}

	// news one
	@RequestMapping(value = {"/newsDetail.do","/newsModify.do"})
	public void getNews(NewsVO vo, Model model) {
		model.addAttribute("news", newsService.getNews(vo));
	}
	
	//news insert
	@RequestMapping(value="/saveNews.do")
	public String insertNews(NewsVO vo) throws IOException{
		newsService.newsInsert(vo);
		return "redirect:/news/newsCheck.do";
	}
	
	//news modify
	@RequestMapping(value="/modifyNews.do")
	public String updateNews(@ModelAttribute("news") NewsVO vo) {
		newsService.newsUpdate(vo);
		return "redirect:/news/newsModify.do?news_no="+vo.getNews_no();
	}
	
	//news delete
	@RequestMapping(value="/deleteNews.do")
	public String deleteNews(NewsVO vo) {
		newsService.newsDelete(vo);
		return "redirect:/news/newsCheck.do";
	}
}
