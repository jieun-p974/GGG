package com.green.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.green.domain.NotificationVO;
import com.green.service.NotificationService;

@Controller
@RequestMapping("/noti/")
public class NotificationController {
	
	@Autowired
	private NotificationService notificationService;
	
	@ResponseBody
	@RequestMapping(value="/notiCount.do")
	public List<HashMap<String, Object>> countNotification(String id) {
		List<HashMap<String, Object>> listAll = null;

		HashMap<String,Object> map = new HashMap<String, Object>();
		
		if(id != null) {
			listAll = notificationService.getAllNotis(id);
			
			if(listAll.size() > 0) {
				for(HashMap d : listAll) {
					System.out.println("알림 있"+d);
				}
				return listAll;
			}else {
				map.put("id", id);
				map.put("noti_unread", 0);
				
				listAll.add(map);
				
				for(HashMap d : listAll) {
					System.out.println("알림 없"+d);
				}
				return listAll;
			}
			
		}else {
			return null;
		}
		
	}
	
	@RequestMapping(value="/deleteReadNoti.do")
	public String readNoti(int ann_ck_no, int ann_no) {
		notificationService.deleteReadNoti(ann_ck_no);
		
		return "redirect:../community/notificationDetail.do?ann_no="+ann_no;
	}
	
	@RequestMapping(value="/updateRead_YN.do")
	public String updateRead_YN(int like_no, String id) {
		System.out.println("id"+id);
		notificationService.updateRead_YN(like_no);
		return "redirect:../community/community.do?id="+id+"&userId="+id;
	}
	
	@RequestMapping(value="/comment_YN.do")
	public String comment_YN(int com_no, String id) {
		notificationService.comment_YN(com_no);
		return "redirect:../community/community.do?id="+id+"&userId="+id;
	}
}
