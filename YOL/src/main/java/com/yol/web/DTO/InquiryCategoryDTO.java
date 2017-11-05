package com.yol.web.DTO;

public class InquiryCategoryDTO {

	private String inquiryCategoryseq;
	private String category;

	public String getInquiryCategoryseq() {
		return inquiryCategoryseq;
	}

	public void setInquiryCategoryseq(String inquiryCategoryseq) {
		this.inquiryCategoryseq = inquiryCategoryseq;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("inquiryCategoryseq : %s\r\n", inquiryCategoryseq);
		temp += String.format("category : %s\r\n", category);
		temp += "\r\n\r\n";
		return temp;
	}

}
