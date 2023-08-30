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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.green.domain.CommunityVO;
import com.green.domain.HashTagVO;
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
		System.out.println("community / "+url);
		return "/community/"+url;
	}
	
/* 	게시글 관련   Community  */
/*	게시글 목록   community list	*/
	@RequestMapping("/community.do")
	public void getCommunityList(Model model,CommunityVO vo, String searchOption, String searchKeyword) {
		List<CommunityVO> list = null;
		List<HashTagVO> htlist = null;
		List<HashTagVO> htTop = null;
		if (searchKeyword != null) {
			HashMap map = new HashMap();
			map.put("searchOption", searchOption);
			map.put("searchKeyword", searchKeyword);
			
			//Community Search List 게시글 검색 리스트 (ID, HashTag)
			list = communityService.getSearchCommunityList(map);
		} else if (vo.getId() != null) {
			
			//Community My List 내 게시글 리스트 
			list = communityService.getMyCommunityList(vo);
		} else {
			
			//Community List 게시글 전체 리스트
			list = communityService.getCommunityList(vo.getUserId());
		}
		
		//HashTag List 해시태그 목록
		htlist = communityService.getHashTagList(vo.getBoard_no());
		
		//HashTag TOP5 해시태그 사용 순위 5
		htTop = communityService.getHashTagTOP5();
		model.addAttribute("htlist", htlist);
		model.addAttribute("htTop", htTop);
		model.addAttribute("list", list);
	}

/*	게시글 작성   community insert   */
	@RequestMapping(value="/enterCommWrite.do")
	public String communityInsert(CommunityVO vo, Model model, HttpSession session) throws IOException{
		communityService.insertCommunity(vo);
		int board_no = communityService.getBoardNo();
		System.out.println("컨트롤러 보드넘버"+board_no);
		System.out.println("컨트롤러 아이디"+vo.getId());
		session.setAttribute("boardNO", board_no);
		return "redirect:/community/communityWrite.do?board_no="+board_no+"&id="+vo.getId();
	}
	
/*	게시글  하나   community get one   */
	@RequestMapping(value= {"/communityModify.do","/communityDetail.do"})
	public void getCommunityDetail(CommunityVO vo, Model model) {
		model.addAttribute("comm", communityService.getCommunityDetail(vo));
		int board_no = vo.getBoard_no();
		List<HashTagVO> ghtlist = null;
		
		//HashTag List in Board 글 하나의 해시태그 목록
		ghtlist = communityService.getHashTag(board_no);
		model.addAttribute("ghtlist", ghtlist);
	}
	
/*	게시글 수정   community modify	*/
	@RequestMapping(value = "/updateCommunity.do")
	public String updateCommunity(@ModelAttribute("community") CommunityVO vo, Model model) {
		communityService.updateCommunity(vo);
		return "redirect:/community/community.do?userId="+vo.getUserId();
	}
	
/*	게시글 삭제   community delete	*/
	@RequestMapping(value = "/deleteCommunity.do")
	public String deleteCommunity(CommunityVO vo) {
		communityService.deleteCommunity(vo);
		return "redirect:/community/community.do?userId="+vo.getUserId();
	}
	
/*	해시태그 관련   HashTag	*/
/*	해시태그 작성   HashTag insert	  */
	@ResponseBody
	@RequestMapping(value="/insertTag.do")
	public void boardtagInsert(HashTagVO vo) throws IOException{
		communityService.boardtagInsert(vo);
	}
	
/*	해시태그 삭제   HashTag delete  */
	@ResponseBody
	@RequestMapping(value = "/deleteTag.do")
	public void deleteHashTag(HashTagVO vo) throws IOException{
		communityService.deleteHashTag(vo);
	}
	
/*	댓글 관련   Reply   */
/*	댓글 목록   reply list   */
	@ResponseBody
	@RequestMapping(value="/getReply.do")
	public List getReplyList(int board_no) {
		System.out.println("커뮤니티 컨트롤러  글 번호: "+board_no);
		List<ReplyVO> listRe = communityService.getReplyList(board_no);
		return listRe;
	}
	
/*	댓글 작성   reply insert   */
	@RequestMapping(value="/reply.do")
	public String replyInsert(ReplyVO vo) throws IOException{
		communityService.insertReply(vo);
		return "redirect:/community/community.do?userId="+vo.getUserId();
	}
	
/*	댓글 하나   reply get one   */
	@RequestMapping(value = {"/replyModify.do","/replyDetail.do"})
	public void getReplyDetail(ReplyVO vo, Model model)	{
		model.addAttribute("reply",communityService.getReplyDetail(vo));
	}
	
/*	댓글 수정   reply modify   */
	@RequestMapping(value = "/updateReply.do")
	public String updateReply(@ModelAttribute("reply") ReplyVO vo) {
		communityService.updateReply(vo);
		return "redirect:/community/community.do?userId="+vo.getUserId();
	}
	
/*	댓글 삭제   reply delete   */
	@RequestMapping(value = "/deleteReply.do")
	public String deleteReply(ReplyVO vo) {
		communityService.deleteReply(vo);
		return "redirect:/community/community.do?userId="+vo.getUserId();
	}
	
/*	좋아요 관련   like   */
/*	좋아요 등록   like insert   */
	@RequestMapping(value="/like.do")
	public String likeInsert(HeartVO vo) throws IOException{
		communityService.insertLike(vo);
		return "redirect:/community/community.do?userId="+vo.getUserId();
	}
	
/*	좋아요 취소   unlike   */
	@RequestMapping(value="/unlike.do")
	public String deleteLike(HeartVO vo) throws IOException {
		communityService.deleteLike(vo);
		return "redirect:/community/community.do?userId="+vo.getUserId();
	}
	
/*	announcement notification   */
/*	notification insert   */
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

/*	notification list   */
	@RequestMapping(value= {"/notificationList.do","/notificationListUser.do"})
	public void getNotificationList(Model model) {
		List<NotificationVO> listNO = null;
		listNO = notificationService.getNotificationList();
		model.addAttribute("listNO", listNO);
	}
	
/*	get one notification   */
	@RequestMapping(value= {"/notificationModify.do","/notificationDetail.do"})
	public void getNotificationDetail(NotificationVO vo, Model model) {
		model.addAttribute("noti", notificationService.getNotificationDetail(vo));
	}
	
/*	notification modify  */	
	@RequestMapping(value = "/updateNotification.do")
	public String updateNotification(@ModelAttribute("notificatioin") NotificationVO vo) {
		notificationService.updateNotification(vo);
		return "redirect:/community/notificationList.do";
	}
	
/*	notification delete  */	
	@RequestMapping(value = "/deleteNotification.do")
	public String deleteNotification(NotificationVO vo) {
		notificationService.deleteNotification(vo);
		return "redirect:/community/notificationList.do";
	}
}