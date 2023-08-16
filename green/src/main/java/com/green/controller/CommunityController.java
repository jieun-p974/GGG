package com.green.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.green.domain.CommunityVO;
import com.green.domain.HeartVO;
import com.green.domain.NotificationVO;
import com.green.domain.ReplyVO;
import com.green.service.CommunityService;
import com.green.service.NotificationService;

@Controller 
@RequestMapping("/community/")
public class CommunityController {
	
	private static final HashMap<String, Object> data = new HashMap<String, Object>();

	@Autowired
	private CommunityService communityService;
	@Autowired
	private NotificationService notificationService;
	
	
	
	// 화면만 이동(DB연결은 XX)
	@RequestMapping(value="{url}.do")
	public String url(@PathVariable String url) {
		System.out.println("community"+url);
		return "/community/"+url;
	}
	
	
	//community
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
		List<ReplyVO> listRe = null;
		if (id != null) {
			list = communityService.getMyCommunityList(id);
			listRe = communityService.getReplyList();
		} else {
			list = communityService.getCommunityList();
			listRe = communityService.getReplyList();
		}
		model.addAttribute("list", list);
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
	
	
	//reply
	//reply get one
	@RequestMapping(value = {"/replyModify.do","/replyDetail.do"})
	public void getReplyDetail(ReplyVO vo, Model model)	{
		model.addAttribute("reply",communityService.getReplyDetail(vo));
	}
	
	//reply modify
	@RequestMapping(value = "/updateReply.do")
	public String updateReply(@ModelAttribute("reply") ReplyVO vo) {
		communityService.updateReply(vo);
		return "redirect:/community/community.do";
	}
	
	//reply delete
	@RequestMapping(value = "/deleteReply.do")
	public String deleteReply(ReplyVO vo) {
		communityService.deleteReply(vo);
		return "redirect:/community/community.do";
	}
	
	//reply insert
	@RequestMapping(value="/reply.do")
	public String replyInsert(ReplyVO vo) throws IOException{
		communityService.insertReply(vo);
		return "redirect:/community/community.do";
	}
	
	// reply list
//	@ResponseBody
//	@RequestMapping(value="/getReply.do")
//	public void getReplyList(Model model) {
//		System.out.println("커뮤니티 컨트롤러 ");
//		List<ReplyVO> listRe = null;
//		listRe = communityService.getReplyList();
//		model.addAttribute("listRe", listRe);
//	}
//	
	
	//like
	//click like
	@RequestMapping(value="/like.do")
	public String likeInsert(HeartVO vo) throws IOException{
		communityService.insertLike(vo);
		return "redirect:/community/community.do";
	}
	
	
	
	// announcement notification
	// notification insert
	@RequestMapping(value="/saveNoti.do")
	public String notificationInsert(NotificationVO vo) throws IOException{
		notificationService.insertNotification(vo);
		return "redirect:/community/notificationList.do";
	}
	
	// notification list 
	@RequestMapping("/notificationList.do")
	public void getNotificationList(Model model) {
		List<NotificationVO> listNO = null;
		listNO = notificationService.getNotificationList();
		model.addAttribute("listNO", listNO);
	}
	
	// get one notification
	@RequestMapping(value= {"/notificationModify.do","/notificationDetail.do"})
	public void getNotificationDetail(NotificationVO vo, Model model) {
		model.addAttribute("noti", notificationService.getNotificationDetail(vo));
	}
	
	// notification modify
	@RequestMapping(value = "/updateNotification.do")
	public String updateNotification(@ModelAttribute("notificatioin") NotificationVO vo) {
		notificationService.updateNotification(vo);
		return "redirect:/community/notificationList.do";
	}
	
	// notification delete
	@RequestMapping(value = "/deleteNotification.do")
	public String deleteNotification(NotificationVO vo) {
		notificationService.deleteNotification(vo);
		return "redirect:/community/notificationList.do";
	}

	
}
