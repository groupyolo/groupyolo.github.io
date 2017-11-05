package com.yol.web.DTO;

public class TempCategoryDTO {

	private String tcSeq;
	private String caSeq;

	public String getTcSeq() {
		return tcSeq;
	}

	public void setTcSeq(String tcSeq) {
		this.tcSeq = tcSeq;
	}

	public String getCaSeq() {
		return caSeq;
	}

	public void setCaSeq(String caSeq) {
		this.caSeq = caSeq;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "/r/n/r/n";
		temp += String.format("tcSeq: %s/r/n", tcSeq);
		temp += String.format("caSeq: %s/r/n", caSeq);
		temp += "/r/n/r/n";
		return temp;
	}
}
