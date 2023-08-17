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
	
	@Override
	public void notificationWrite(NotificationVO vo) {
		System.out.println("Mybatis => notification insert");
		mybatis.insert("NotificationDAO.notificationWrite",vo);
	}

	@Override
	public List<NotificationVO> getNotificationList() {
		System.out.println("Mybatis => notification list");
		return mybatis.selectList("NotificationDAO.getNotificationList");
	}

	public NotificationVO getNotificationDetail(NotificationVO vo) {
		System.out.println("Mybatis=> notification detail");
		return mybatis.selectOne("NotificationDAO.getNotificationDetail", vo);
	}
	
	public void updateNotification(NotificationVO vo) {
		System.out.println("Mybatis=> notification modify");
		mybatis.update("NotificationDAO.updateNotification", vo);
	}
	
	public void deleteNotification(NotificationVO vo) {
		System.out.println("Mybatis=> notification delete");
		mybatis.update("NotificationDAO.deleteNotification", vo);
	}
	
	
}
