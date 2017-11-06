package com.yol.web.DTO;

public class JoinDTO {

	private String jSeq;
	private String mSeq;
	private String jRegdate;
	private String apSeq;
	private String reSeq;

	public String getjSeq() {
		return jSeq;
	}

	public void setjSeq(String jSeq) {
		this.jSeq = jSeq;
	}

	public String getmSeq() {
		return mSeq;
	}

	public void setmSeq(String mSeq) {
		this.mSeq = mSeq;
	}

	public String getjRegdate() {
		return jRegdate;
	}

	public void setjRegdate(String jRegdate) {
		this.jRegdate = jRegdate;
	}

	public String getApSeq() {
		return apSeq;
	}

	public void setApSeq(String apSeq) {
		this.apSeq = apSeq;
	}

	public String getReSeq() {
		return reSeq;
	}

	public void setReSeq(String reSeq) {
		this.reSeq = reSeq;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("jSeq : %s\r\n", jSeq);
		temp += String.format("mSeq : %s\r\n", mSeq);
		temp += String.format("jRegdate : %s\r\n", jRegdate);
		temp += String.format("apSeq : %s\r\n", apSeq);
		temp += String.format("reSeq : %s\r\n", reSeq);
		temp += "\r\n\r\n";
		return temp;
	}

}
