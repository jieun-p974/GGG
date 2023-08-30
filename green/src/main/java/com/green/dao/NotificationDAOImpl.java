package com.green.dao;

import java.util.HashMap;
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
   public int getAnnNo(){
      System.out.println("Mybatis => get ann_no");
      return mybatis.selectOne("NotificationDAO.getAnnNo");
   }
   
   @Override
   public List<String> getAllMem(){
      System.out.println("Mybatis => get all member id");
      return mybatis.selectList("NotificationDAO.getAllMem");
   }
   
   @Override
   public void annCheckInsert(List<HashMap<String, Object>> list) {
      System.out.println("Mybatis => insert all noti");
      mybatis.selectList("NotificationDAO.annCheckInsert",list);
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

   @Override
   public void deleteReadNoti(int ann_ck_no) {
      System.out.println("Mybatis=> delete read notification");
      mybatis.delete("NotificationDAO.deleteReadNoti",ann_ck_no);
   }
   
   @Override
   public List<HashMap<String, Object>> getUnreadNoti(String id) {
      System.out.println("Mybatis=> get unread notification");
      return mybatis.selectList("NotificationDAO.getUnreadNoti",id);
   }
   @Override
   public List<HashMap<String, Object>> getUnreadLike(String id) {
      System.out.println("Mybatis => get unread like");
      return mybatis.selectList("NotificationDAO.getUnreadLike",id);
   }
   @Override
   public void updateRead_YN(int like_no) {
      System.out.println("Mybatis => update read_YN");
      mybatis.update("NotificationDAO.updateRead_YN",like_no);
   }
   @Override
   public List<HashMap<String, Object>> getAllNotis(String id) {
      System.out.println("Mybatis => select get all notifications");
      return mybatis.selectList("NotificationDAO.getAllNotis",id);
   }
   @Override
   public void comment_YN(int com_no) {
      mybatis.update("NotificationDAO.comment_YN",com_no);
   }
   
   
}