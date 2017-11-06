package com.yol.web.DTO;

public class AdminURLDTO {

	private String AdminURL;

	public String getAdminURL() {
		return AdminURL;
	}

	public void setAdminURL(String adminURL) {
		AdminURL = adminURL;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("AdminURL : %s\r\n", AdminURL);
		temp += "\r\n\r\n";
		return temp;
	}
 
}
