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
import org.springframework.web.bind.annotation.ResponseBody;

import com.green.domain.CommunityVO;
import com.green.domain.ReplyVO;
import com.green.service.CommunityService;

@Controller 
@RequestMapping("/community/")
public class CommunityController {
	@Autowired
	private CommunityService communityService;
	
	//ȭ�鸸 �̵�(DB������ XX)
	@RequestMapping(value="{url}.do")
	public String url(@PathVariable String url) {
		System.out.println("Ŀ�´�Ƽ ��û"+url);
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
	@RequestMapping(value="/getReply.do", method = RequestMethod.GET)
	@ResponseBody
	public void getReplyList(int board_no, Model model) {
		System.out.println("��Ʈ�ѷ�, �Խ��� ��ȣ = " + board_no);
		List<ReplyVO> listRe = null;
		listRe = communityService.getReplyList(board_no);
		model.addAttribute("listRe", listRe);
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
	
	
	
}
