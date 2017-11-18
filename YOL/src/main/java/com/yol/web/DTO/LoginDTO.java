package com.yol.web.DTO;

public class LoginDTO {

	private String lSeq;
	private String mSeq;
	private String lsSeq;
	private String lDate;
	private String lCheckIP;

	
	
	public String getlCheckIP() {
		return lCheckIP;
	}

	public void setlCheckIP(String lCheckIP) {
		this.lCheckIP = lCheckIP;
	}

	public String getlSeq() {
		return lSeq;
	}

	public void setlSeq(String lSeq) {
		this.lSeq = lSeq;
	}

	public String getmSeq() {
		return mSeq;
	}

	public void setmSeq(String mSeq) {
		this.mSeq = mSeq;
	}

	public String getLsSeq() {
		return lsSeq;
	}

	public void setLsSeq(String lsSeq) {
		this.lsSeq = lsSeq;
	}

	public String getlDate() {
		return lDate;
	}

	public void setlDate(String lDate) {
		this.lDate = lDate;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("lSeq : %s\r\n", lSeq);
		temp += String.format("mSeq : %s\r\n", mSeq);
		temp += String.format("lsSeq : %s\r\n", lsSeq);
		temp += String.format("IDate : %s\r\n", lDate);
		temp += "\r\n\r\n";
		return temp;
	}

}
