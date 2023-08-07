package com.green.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.domain.DogamVO;
import com.green.service.DogamService;

@Controller
@RequestMapping("/dogam/")
public class DogamController {
	
	@Autowired
	private DogamService dogamService;
	
	//화면만 이동(DB연결은 XX)
	@RequestMapping(value="{url}.do")
	public String url(@PathVariable String url) {
		System.out.println("도감 요청");
		return "/dogam/"+url;
	}
	
	// get list -user or admin
	@RequestMapping(value = {"/dogam.do","/dogamCheck.do"})
	public void getDogamList(Model model) {
		List<DogamVO> list = null;
		list = dogamService.getDogamList();
		model.addAttribute("list", list);
		System.out.println("요청 ");
	}
	
	// get detail -user or admin
	@RequestMapping(value = {"/dogamDetail.do","/dogamModify.do"})
	public void getNews(DogamVO vo, Model model) {
		model.addAttribute("dogam", dogamService.getDogam(vo));
	}
	
	// insert
	@RequestMapping(value="/saveDogam.do")
	public String dogamInsert(DogamVO vo) throws IOException{
		dogamService.dogamInsert(vo);
		return "redirect:/dogam/dogamCheck.do";
	}
	
	// img insert
	@RequestMapping(value="/modiDogam.do")
	public String dogamImgInsert(DogamVO vo) throws IOException{
		dogamService.dogamImgInsert(vo);
		//return "redirect:/dogam/dogamModify.do?do_no="+vo.getDo_no();
		return "redirect:/dogam/dogamCheck.do";
	}
	
	// delete
	@RequestMapping(value="/deleteDogam.do")
	public String dogamDelete(DogamVO vo) {
		dogamService.dogamDelete(vo);
		return "redirect:/dogam/dogamCheck.do";
	}
	
}
