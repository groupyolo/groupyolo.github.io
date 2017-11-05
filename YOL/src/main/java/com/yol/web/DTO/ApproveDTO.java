package com.yol.web.DTO;

public class ApproveDTO {

	private String apSeq;
	private String gradeName;

	public String getApSeq() {
		return apSeq;
	}

	public void setApSeq(String apSeq) {
		this.apSeq = apSeq;
	}

	public String getGradeName() {
		return gradeName;
	}

	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("apSeq : %s\r\n", apSeq);
		temp += String.format("gradeName : %s\r\n", gradeName);
		temp += "\r\n\r\n";
		return temp;
	}

}
