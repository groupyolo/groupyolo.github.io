package com.yol.web.DTO;

public class FBoardComDTO {

	private String FBComSeq;
	private String FBSeq;
	private String mSeq;
	private String FBComA;
	private String FBComTime;

	public String getFBComSeq() {
		return FBComSeq;
	}

	public void setFBComSeq(String fBComSeq) {
		FBComSeq = fBComSeq;
	}

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

	public String getFBComA() {
		return FBComA;
	}

	public void setFBComA(String fBComA) {
		FBComA = fBComA;
	}

	public String getFBComTime() {
		return FBComTime;
	}

	public void setFBComTime(String fBComTime) {
		FBComTime = fBComTime;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("teSEq : %s\r\n", FBComSeq);
		temp += String.format("tName : %s\r\n", FBSeq);
		temp += String.format("tFileName : %s\r\n", mSeq);
		temp += String.format("FBComA : %s\r\n", FBComA);
		temp += String.format("FBComTime : %s\r\n", FBComTime);
		temp += "\r\n\r\n";
		return temp;
	}
}
