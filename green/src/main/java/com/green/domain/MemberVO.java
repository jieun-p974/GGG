package com.green.domain;

public class MemberVO {

	private String userID;
	private String userPass;
	private String userName;
	private String userTel;
	private String userEmail;
	
	public MemberVO(String userID, String userPass, String userName, String userTel, String userEmail) {
		this.userID = userID;
		this.userPass = userPass;
		this.userName = userName;
		this.userTel = userTel;
		this.userEmail = userEmail;
		
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
		
	public String getUserTel() {
		return userTel;
	}
	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	@Override
	public String toString() {
		return "MemberVO [userId=" + userID + ", userPass=" + userPass + ", userName=" + userName + ", userEmail="
				+ userEmail + "]";
	}
	
}


