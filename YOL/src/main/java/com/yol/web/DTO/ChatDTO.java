package com.yol.web.DTO;

public class ChatDTO {

	private String cSeq;
	private String mSeq;
	private String cwSeq;
	private String cContent;
	private String cDate;
	private String cRead;

	public String getcSeq() {
		return cSeq;
	}

	public void setcSeq(String cSeq) {
		this.cSeq = cSeq;
	}

	public String getmSeq() {
		return mSeq;
	}

	public void setmSeq(String mSeq) {
		this.mSeq = mSeq;
	}

	public String getCwSeq() {
		return cwSeq;
	}

	public void setCwSeq(String cwSeq) {
		this.cwSeq = cwSeq;
	}

	public String getcContent() {
		return cContent;
	}

	public void setcContent(String cContent) {
		this.cContent = cContent;
	}

	public String getcDate() {
		return cDate;
	}

	public void setcDate(String cDate) {
		this.cDate = cDate;
	}

	public String getcRead() {
		return cRead;
	}

	public void setcRead(String cRead) {
		this.cRead = cRead;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("cSeq : %s\r\n", cSeq);
		temp += String.format("mSeq : %s\r\n", mSeq);
		temp += String.format("cwSeq : %s\r\n", cwSeq);
		temp += String.format("cContent : %s\r\n", cContent);
		temp += String.format("cDate : %s\r\n", cDate);
		temp += String.format("cRead : %s\r\n", cRead);
		temp += "\r\n\r\n";
		return temp;
	}

}
