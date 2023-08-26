package com.green.service;

import java.util.List;

import com.green.domain.CommunityVO;
import com.green.domain.HeartVO;
import com.green.domain.NotificationVO;
import com.green.domain.ReplyVO;

public interface NotificationService {
	
	//공지 목록   Notification list
	List<NotificationVO> getNotificationList();

	// 공지 작성   Notification insert
	void insertNotification(NotificationVO vo);
	
	//공지 하나   get one Notification
	NotificationVO getNotificationDetail(NotificationVO vo);
	
	//공지 수정   Notification modify
	void updateNotification(NotificationVO vo);

	//공지 삭제   Notification delete
	void deleteNotification(NotificationVO vo);

}
