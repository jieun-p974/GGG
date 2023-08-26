package com.green.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.dao.NotificationDAO;
import com.green.domain.NotificationVO;

@Service("NotificationService")
public class NotificationServiceImpl implements NotificationService{

	@Autowired
	private NotificationDAO notificationDAO;
	
	//Notification List
	public List<NotificationVO> getNotificationList() {
		// TODO Auto-generated method stub
		return notificationDAO.getNotificationList();
	}	
	
	//Notification Insert
	@Override
	public void insertNotification(NotificationVO vo) {
		// TODO Auto-generated method stub
		notificationDAO.notificationWrite(vo);
	}
	
	//Notification Get One
	public NotificationVO getNotificationDetail(NotificationVO vo) {
		return notificationDAO.getNotificationDetail(vo);
	}
	
	//Notification Update
	public void updateNotification(NotificationVO vo) {
		// TODO Auto-generated method stub
		notificationDAO.updateNotification(vo);
	}
	
	//Notification Delete
	public void deleteNotification(NotificationVO vo) {
		// TODO Auto-generated method stub
		notificationDAO.deleteNotification(vo);
	}
		
		
}
