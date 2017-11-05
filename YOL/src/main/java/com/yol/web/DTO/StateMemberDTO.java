package com.yol.web.DTO;

public class StateMemberDTO {

	private String smSeq;
	private String mSeq;
	private String msSeq;
	private String smDate;
	private String smDetail;

	public String getSmSeq() {
		return smSeq;
	}

	public void setSmSeq(String smSeq) {
		this.smSeq = smSeq;
	}

	public String getmSeq() {
		return mSeq;
	}

	public void setmSeq(String mSeq) {
		this.mSeq = mSeq;
	}

	public String getMsSeq() {
		return msSeq;
	}

	public void setMsSeq(String msSeq) {
		this.msSeq = msSeq;
	}

	public String getSmDate() {
		return smDate;
	}

	public void setSmDate(String smDate) {
		this.smDate = smDate;
	}

	public String getSmDetail() {
		return smDetail;
	}

	public void setSmDetail(String smDetail) {
		this.smDetail = smDetail;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("smSeq : %s\r\n", smSeq);
		temp += String.format("mSeq : %s\r\n", mSeq);
		temp += String.format("msSeq : %s\r\n", msSeq);
		temp += String.format("smDate : %s\r\n", smDate);
		temp += String.format("smDetail : %s\r\n", smDetail);
		temp += "\r\n\r\n";
		return temp;
	}

}
