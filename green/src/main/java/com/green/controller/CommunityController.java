package com.green.controller;

import java.io.IOException;
import java.util.ArrayList;
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
import org.springframework.web.bind.annotation.ResponseBody;

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
		return "redirect:/community/community.do?userId="+vo.getUserId();
	}
	
	// community list (all, my)
	@RequestMapping("/community.do")
	public void getCommunityList(Model model,CommunityVO vo) {
		List<CommunityVO> list = null;
		if (vo.getId() != null) {
			list = communityService.getMyCommunityList(vo);
		} else {
			list = communityService.getCommunityList(vo.getUserId());
		}
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
		return "redirect:/community/community.do?userId="+vo.getUserId();
	}
	
	// delete
	@RequestMapping(value = "/deleteCommunity.do")
	public String deleteCommunity(CommunityVO vo) {
		communityService.deleteCommunity(vo);
		return "redirect:/community/community.do?userId="+vo.getUserId();
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
		return "redirect:/community/community.do?userId="+vo.getUserId();
	}
	
	//reply delete
	@RequestMapping(value = "/deleteReply.do")
	public String deleteReply(ReplyVO vo) {
		communityService.deleteReply(vo);
		return "redirect:/community/community.do?userId="+vo.getUserId();
	}
	
	//reply insert
	@RequestMapping(value="/reply.do")
	public String replyInsert(ReplyVO vo) throws IOException{
		communityService.insertReply(vo);
		return "redirect:/community/community.do?userId="+vo.getUserId();
	}
	
	// reply list
	@ResponseBody
	@RequestMapping(value="/getReply.do")
	public List getReplyList(int board_no) {
		System.out.println("커뮤니티 컨트롤러  글 번호: "+board_no);
		List<ReplyVO> listRe = communityService.getReplyList(board_no);
//		for(ReplyVO vo : listRe) {
//			System.out.println("댓글 : "+vo.getCom_content());
//		}
		return listRe;
	}
	
	
	//like
	//click like
	@RequestMapping(value="/like.do")
	public String likeInsert(HeartVO vo) throws IOException{
		communityService.insertLike(vo);
		return "redirect:/community/community.do?userId="+vo.getUserId();
	}
	
	@RequestMapping(value="/unlike.do")
	public String deleteLike(HeartVO vo) throws IOException {
		communityService.deleteLike(vo);
		return "redirect:/community/community.do?userId="+vo.getUserId();
	}
	
	
	
	// announcement notification
	// notification insert
	@RequestMapping(value="/saveNoti.do")
	public String notificationInsert(NotificationVO vo) throws IOException{
		notificationService.insertNotification(vo);
		List<String> memList = notificationService.getAllMem();

		int ann_no = notificationService.getAnnNo();
		
		List<HashMap<String, Object>> list = new ArrayList<HashMap<String,Object>>();
		for(String s:memList) {
			HashMap<String,Object> map = new HashMap<String, Object>();
			map.put("id", s);
			map.put("ann_no", ann_no);
			list.add(map);
		}
		notificationService.annCheckInsert(list);
		
		return "redirect:/community/notificationList.do";
	}
	
	// notification list 
	@RequestMapping(value= {"/notificationList.do","/notificationListUser.do"})
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