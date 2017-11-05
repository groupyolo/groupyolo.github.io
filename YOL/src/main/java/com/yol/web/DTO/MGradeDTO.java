package com.yol.web.DTO;

public class MGradeDTO {

	private String mgSeq;
	private String mgGrade;

	public String getMgSeq() {
		return mgSeq;
	}

	public void setMgSeq(String mgSeq) {
		this.mgSeq = mgSeq;
	}

	public String getMgGrade() {
		return mgGrade;
	}

	public void setMgGrade(String mgGrade) {
		this.mgGrade = mgGrade;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("mgSeq : %s\r\n", mgSeq);
		temp += String.format("mgGrade : %s\r\n", mgGrade);
		temp += "\r\n\r\n";
		return temp;
	}
}
