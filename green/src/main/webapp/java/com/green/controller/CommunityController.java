package com.green.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.domain.CommunityVO;
import com.green.service.CommunityService;

@Controller
@RequestMapping("/community/")
public class CommunityController {
	@Autowired
	private CommunityService communityService;
	
	//화면만 이동(DB연결은 XX)
	@RequestMapping(value="{url}.do")
	public String url(@PathVariable String url) {
		System.out.println("커뮤니티 요청"+url);
		return "/community/"+url;
	}
	
	
	// 등록
	@RequestMapping(value="/save.do")
	public String communityInsert(CommunityVO vo) throws IOException{
		communityService.insertCommunity(vo);
		return "redirect:/community/community.do";
	}
	
	// 커뮤니티 목록
	@RequestMapping("/community.do")
	public void getChallengeList(Model model) {
		List<CommunityVO> list = null;
		list = communityService.getCommunityList();
		model.addAttribute("list", list);
	}
	
}
