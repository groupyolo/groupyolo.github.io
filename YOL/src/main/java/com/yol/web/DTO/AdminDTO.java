package com.yol.web.DTO;

public class AdminDTO {

	private String AdminSeq;
	private String AdminID;
	private String Password;

	public String getAdminSeq() {
		return AdminSeq;
	}

	public String getAdminID() {
		return AdminID;
	}

	public void setAdminID(String adminID) {
		AdminID = adminID;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public void setAdminSeq(String adminSeq) {
		AdminSeq = adminSeq;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("AdminSeq : %s\r\n", AdminSeq);
		temp += String.format("AdminID : %s\r\n", AdminID);
		temp += String.format("Password : %s\r\n", Password);
		temp += "\r\n\r\n";
		return temp;
	}

}
