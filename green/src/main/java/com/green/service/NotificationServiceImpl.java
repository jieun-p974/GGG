package com.green.service;

import java.util.HashMap;
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
		
		@Override
		public int getAnnNo(){
			return notificationDAO.getAnnNo();
		}
		
		@Override
		public List<String> getAllMem(){
			return notificationDAO.getAllMem();
		}
		
		@Override
		public void annCheckInsert(List<HashMap<String, Object>> list) {
			notificationDAO.annCheckInsert(list);
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

		@Override
		public void deleteReadNoti(int ann_ck_no) {
			notificationDAO.deleteReadNoti(ann_ck_no);
		}

		@Override
		public List<HashMap<String, Object>> getUnreadNoti(String id) {
			return notificationDAO.getUnreadNoti(id);
		}
}
	
