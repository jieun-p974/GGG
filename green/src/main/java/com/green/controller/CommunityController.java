package com.green.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.green.domain.CommunityVO;
import com.green.domain.HeartVO;
import com.green.domain.ReplyVO;
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
	
	// community list (all, my)
	@RequestMapping("/community.do")
	public void getCommunityList(Model model,String id) {
		List<CommunityVO> list = null;
		if (id != null) {
			list = communityService.getMyCommunityList(id);
			
		} else {
			list = communityService.getCommunityList();
		}
		model.addAttribute("list", list);
	}
	

	// reply list
	@ResponseBody
	@RequestMapping(value="/getReply.do")
	public void getReplyList(Integer board_no, Model model) {
		System.out.println("컨트롤러, 게시판 번호 = " + board_no);
		List<ReplyVO> list2 = null;
		list2 = communityService.getReplyList(board_no);
		model.addAttribute("reply", list2);
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
	
	//reply insert
	@RequestMapping(value="/reply.do")
	public String replyInsert(ReplyVO vo) throws IOException{
		communityService.insertReply(vo);
		return "redirect:/community/community.do";
	}
	
	//click like
	@RequestMapping(value="/like.do")
	public String likeInsert(HeartVO vo) throws IOException{
		communityService.insertLike(vo);
		return "redirect:/community/community.do";
	}
	
}
