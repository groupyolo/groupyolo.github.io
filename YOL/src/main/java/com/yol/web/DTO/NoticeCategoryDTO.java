package com.yol.web.DTO;

public class NoticeCategoryDTO {

	private String noticeCategoryseq;
	private String noticecategory;

	public String getNoticeCategoryseq() {
		return noticeCategoryseq;
	}

	public void setNoticeCategoryseq(String noticeCategoryseq) {
		this.noticeCategoryseq = noticeCategoryseq;
	}

	public String getNoticecategory() {
		return noticecategory;
	}

	public void setNoticecategory(String noticecategory) {
		this.noticecategory = noticecategory;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("noticeCategoryseq : %s\r\n", noticeCategoryseq);
		temp += String.format("noticecategory : %s\r\n", noticecategory);
		temp += "\r\n\r\n";
		return temp;
	}

}
