package com.green.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.domain.IndexVO;
import com.green.service.IndexService;

@Controller
public class IndexController {
	@Autowired
	private IndexService indexService;
	
	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step,Locale locale, Model model) {
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		return step;
	}
	
	@RequestMapping(value = "/insertMember.do")
	public String insertBoard(IndexVO vo) throws IOException{
		indexService.insertMember(vo);
		return "redirect:/signUp.do";
	}
	
	@RequestMapping(value="{url}.do")
	public String url(@PathVariable String url) {
		System.out.println("메뉴 이동");
		return url;
	}
}
