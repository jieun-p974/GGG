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
   
   public void deleteReadNoti(int ann_ck_no);
   
   public List<HashMap<String, Object>> getUnreadNoti(String id); 
   
   public List<HashMap<String,Object>> getUnreadLike(String id);
   
   public void updateRead_YN(int like_no);
   
   public List<HashMap<String, Object>> getAllNotis(String id);
   
   public void comment_YN(int com_no);
}