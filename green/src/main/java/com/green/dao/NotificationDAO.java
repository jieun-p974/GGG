package com.green.dao;

import java.util.List;

import com.green.domain.NotificationVO;

public interface NotificationDAO {

	//Notification List
	public List<NotificationVO> getNotificationList();
	
	//Notification Insert
	public void notificationWrite(NotificationVO vo);

	//Notification Get One
	public NotificationVO getNotificationDetail(NotificationVO vo);
	
	//Notification Update
	public void updateNotification(NotificationVO vo);

	//Notification Delete
	public void deleteNotification(NotificationVO vo);
	

}
