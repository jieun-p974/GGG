package com.green.maria;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class MariaConnectionTest {
   
private static final String DRIVER = "org.mariadb.jdbc.Driver";
   
   private static final String URL = "jdbc:mariadb://192.168.0.84:3306/greendb";
   
   private static final String USER = "green1";
   private static final String PW = "green1";
   
   @Test
   public void testConnection() throws Exception {
      Class.forName(DRIVER);
      try (Connection con = DriverManager.getConnection(URL, USER, PW)){
         System.out.println(con);
      } catch (Exception e) {
         e.printStackTrace();
      }
   }
} 