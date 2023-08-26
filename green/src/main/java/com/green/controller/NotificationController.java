package com.green.controller;

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
		List<HashMap<String, Object>> list = null;
		HashMap<String,Object> map = new HashMap<String, Object>();
		if(id != null) {
			list = notificationService.getUnreadNoti(id);
			
			if(list.size() > 0) {
				return list;
			}else {
				map.put("id", id);
				map.put("unread", 0);
				
				list.add(map);
				for(HashMap d : list) {
					System.out.println("알림 없"+d);
				}
				return list;
			}
		}else {
			return null;
		}
	}
	
	@RequestMapping(value="/deleteReadNoti.do")
	public String readNoti(int ann_ck_no, int ann_no) {
		System.out.println("읽은 공지 삭제");
		notificationService.deleteReadNoti(ann_ck_no);
		
		return "redirect:../community/notificationDetail.do?ann_no="+ann_no;
	}
}
