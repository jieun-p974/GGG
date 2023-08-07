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
	
	// community insert
	@RequestMapping(value="/save.do")
	public String communityInsert(CommunityVO vo) throws IOException{
		communityService.insertCommunity(vo);
		return "redirect:/community/community.do";
	}
	
	// community list
	@RequestMapping("/community.do")
	public void getChallengeList(Model model) {
		List<CommunityVO> list = null;
		list = communityService.getCommunityList();
		model.addAttribute("list", list);
	}
	
	// get one
	@RequestMapping(value= {"/communityModify.do","/communityDetail.do"})
	public void getCommunityDetail(CommunityVO vo, Model model) {
		model.addAttribute("comm", communityService.getCommunityDetail(vo));
	}
	
	// modify
	@RequestMapping(value = "/updateCommunity.do")
	public String updateCommunity(@ModelAttribute("community") CommunityVO vo) {
		communityService.updateCommunity(vo);
		return "redirect:/community/community.do";
	}
	
	// delete
	@RequestMapping(value = "/deleteCommunity.do")
	public String deleteCommunity(CommunityVO vo) {
		communityService.deleteCommunity(vo);
		return "redirect:/community/community.do";
	}
	
}
