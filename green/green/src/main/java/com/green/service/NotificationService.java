package com.green.service;

import java.util.List;

import com.green.domain.CommunityVO;
import com.green.domain.HeartVO;
import com.green.domain.NotificationVO;
import com.green.domain.ReplyVO;

public interface NotificationService {
	//community insert
	void insertNotification(NotificationVO vo);
	
	//community list
	List<NotificationVO> getNotificationList();
	
	//get one
	NotificationVO getNotificationDetail(NotificationVO vo);
	
	//modify
	void updateNotification(NotificationVO vo);

	//delete
	void deleteNotification(NotificationVO vo);

	



}
