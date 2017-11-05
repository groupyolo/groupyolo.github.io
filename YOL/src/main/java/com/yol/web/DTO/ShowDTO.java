package com.yol.web.DTO;

public class ShowDTO {

	private String shSeq;
	private String prSeq;

	public String getShSeq() {
		return shSeq;
	}

	public void setShSeq(String shSeq) {
		this.shSeq = shSeq;
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
		temp += String.format("shSeq : %s\r\n", shSeq);
		temp += String.format("prSeq : %s\r\n", prSeq);
		temp += "\r\n\r\n";
		return temp;
	}

}
