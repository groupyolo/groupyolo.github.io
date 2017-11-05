package com.yol.web.DTO;

public class QcategoryDTO {

	private String qcategoryseq;
	private String qcategory;

	public String getQcategoryseq() {
		return qcategoryseq;
	}

	public void setQcategoryseq(String qcategoryseq) {
		this.qcategoryseq = qcategoryseq;
	}

	public String getQcategory() {
		return qcategory;
	}

	public void setQcategory(String qcategory) {
		this.qcategory = qcategory;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("qcategoryseq : %s\r\n", qcategoryseq);
		temp += String.format("qcategory : %s\r\n", qcategory);
		temp += "\r\n\r\n";
		return temp;
	}

}
