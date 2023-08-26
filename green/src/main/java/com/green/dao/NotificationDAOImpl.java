package com.green.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.domain.NotificationVO;


@Repository("notificationDAO")
public class NotificationDAOImpl implements NotificationDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	//Notification List
	@Override
	public List<NotificationVO> getNotificationList() {
		System.out.println("Mybatis => notification list");
		return mybatis.selectList("NotificationDAO.getNotificationList");
	}

	//Notification Insert
	@Override
	public void notificationWrite(NotificationVO vo) {
		System.out.println("Mybatis => notification insert");
		mybatis.insert("NotificationDAO.notificationWrite",vo);
	}

	//Notification Get One
	public NotificationVO getNotificationDetail(NotificationVO vo) {
		System.out.println("Mybatis=> notification detail");
		return mybatis.selectOne("NotificationDAO.getNotificationDetail", vo);
	}
	
	//Notification Update
	public void updateNotification(NotificationVO vo) {
		System.out.println("Mybatis=> notification modify");
		mybatis.update("NotificationDAO.updateNotification", vo);
	}
	
	//Notification Delete
	public void deleteNotification(NotificationVO vo) {
		System.out.println("Mybatis=> notification delete");
		mybatis.update("NotificationDAO.deleteNotification", vo);
	}
	
	
}
