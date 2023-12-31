package com.green.service;

import java.util.HashMap;
import java.util.List;

import com.green.domain.CommunityVO;
import com.green.domain.HeartVO;
import com.green.domain.NotificationVO;
import com.green.domain.ReplyVO;

public interface NotificationService {
	//community insert
	void insertNotification(NotificationVO vo);
	
	int getAnnNo();
	
	List<String> getAllMem();
	
	void annCheckInsert(List<HashMap<String, Object>> list);
	
	//community list
	List<NotificationVO> getNotificationList();
	
	//get one
	NotificationVO getNotificationDetail(NotificationVO vo);
	
	//modify
	void updateNotification(NotificationVO vo);

	//delete
	void deleteNotification(NotificationVO vo);

	void deleteReadNoti(int ann_ck_no);
	
	List<HashMap<String, Object>> getUnreadNoti(String id);
	
	List<HashMap<String, Object>> getUnreadLike(String id);
	
	void updateRead_YN(int like_no);
	
	List<HashMap<String,Object>> getAllNotis(String id);
	
	void comment_YN(int com_no);
}