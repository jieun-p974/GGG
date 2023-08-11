package com.green.dao;

import java.util.List;

import com.green.domain.NotificationVO;

public interface NotificationDAO {
	
	public void notificationWrite(NotificationVO vo);

	public void updateNotification(NotificationVO vo);

	public void deleteNotification(NotificationVO vo);
	
	public List<NotificationVO> getNotificationList();
	
	public NotificationVO getNotificationDetail(NotificationVO vo);
	



}
