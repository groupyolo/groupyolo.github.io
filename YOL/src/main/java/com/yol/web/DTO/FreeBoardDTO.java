package com.yol.web.DTO;

public class FreeBoardDTO {

	private String FBSeq;
	private String mSeq;
	private String FBCatSeq;
	private String FBName;
	private String FBVCount;
	private String FBMain;
	private String FBTime;

	public String getFBSeq() {
		return FBSeq;
	}

	public void setFBSeq(String fBSeq) {
		FBSeq = fBSeq;
	}

	public String getmSeq() {
		return mSeq;
	}

	public void setmSeq(String mSeq) {
		this.mSeq = mSeq;
	}

	public String getFBCatSeq() {
		return FBCatSeq;
	}

	public void setFBCatSeq(String fBCatSeq) {
		FBCatSeq = fBCatSeq;
	}

	public String getFBName() {
		return FBName;
	}

	public void setFBName(String fBName) {
		FBName = fBName;
	}

	public String getFBVCount() {
		return FBVCount;
	}

	public void setFBVCount(String fBVCount) {
		FBVCount = fBVCount;
	}

	public String getFBMain() {
		return FBMain;
	}

	public void setFBMain(String fBMain) {
		FBMain = fBMain;
	}

	public String getFBTime() {
		return FBTime;
	}

	public void setFBTime(String fBTime) {
		FBTime = fBTime;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("FBSeq : %s\r\n", FBSeq);
		temp += String.format("mSeq : %s\r\n", mSeq);
		temp += String.format("FBCatSeq : %s\r\n", FBCatSeq);
		temp += String.format("FBName : %s\r\n", FBName);
		temp += String.format("FBVCount : %s\r\n", FBVCount);
		temp += String.format("FBMain : %s\r\n", FBMain);
		temp += String.format("FBTime : %s\r\n", FBTime);
		temp += "\r\n\r\n";
		return temp;
	}

}
