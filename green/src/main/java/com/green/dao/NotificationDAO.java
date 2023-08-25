package com.green.dao;

import java.util.HashMap;
import java.util.List;

import com.green.domain.NotificationVO;

public interface NotificationDAO {
	
	public void notificationWrite(NotificationVO vo);
	
	public int getAnnNo();
	
	public List<String> getAllMem();
	
	public void annCheckInsert(List<HashMap<String, Object>> list);

	public void updateNotification(NotificationVO vo);

	public void deleteNotification(NotificationVO vo);
	
	public List<NotificationVO> getNotificationList();
	
	public NotificationVO getNotificationDetail(NotificationVO vo);
	
	public void deleteReadNoti(NotificationVO vo);
	
	public List<HashMap<String, Object>> getUnreadNoti(String id); 
}
