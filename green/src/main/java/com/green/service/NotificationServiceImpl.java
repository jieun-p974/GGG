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
		
		//insert
		@Override
		public void insertNotification(NotificationVO vo) {
			// TODO Auto-generated method stub
			notificationDAO.notificationWrite(vo);
		}
		
		//get Community List
		public List<NotificationVO> getNotificationList() {
			// TODO Auto-generated method stub
			return notificationDAO.getNotificationList();
		}	
		
		//get one
		public NotificationVO getNotificationDetail(NotificationVO vo) {
			return notificationDAO.getNotificationDetail(vo);
		}
		
		//my board modify
		public void updateNotification(NotificationVO vo) {
			// TODO Auto-generated method stub
			notificationDAO.updateNotification(vo);
		}
		
		//my board delete
		public void deleteNotification(NotificationVO vo) {
			// TODO Auto-generated method stub
			notificationDAO.deleteNotification(vo);
		}
		
		
		
}
	
