package com.yol.web.DTO;

public class ConnectCountDTO {

	private String ccSeq;
	private String dailyCount;
	private String prSeq;

	public String getCcSeq() {
		return ccSeq;
	}

	public void setCcSeq(String ccSeq) {
		this.ccSeq = ccSeq;
	}

	public String getDailyCount() {
		return dailyCount;
	}

	public void setDailyCount(String dailyCount) {
		this.dailyCount = dailyCount;
	}

	public String getPrSeq() {
		return prSeq;
	}

	public void setPrSeq(String prSeq) {
		this.prSeq = prSeq;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("ccSeq : %s\r\n", ccSeq);
		temp += String.format("dailyCount : %s\r\n", dailyCount);
		temp += String.format("prSeq : %s\r\n", prSeq);
		temp += "\r\n\r\n";
		return temp;
	}

}
