package com.yol.web.DTO;

public class FAQCategoryDTO {

	private String FAQCategoryseq;
	private String FAQcategory;

	public String getFAQCategoryseq() {
		return FAQCategoryseq;
	}

	public void setFAQCategoryseq(String fAQCategoryseq) {
		FAQCategoryseq = fAQCategoryseq;
	}

	public String getFAQcategory() {
		return FAQcategory;
	}

	public void setFAQcategory(String fAQcategory) {
		FAQcategory = fAQcategory;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("FAQCategorySeq : %s\r\n", FAQCategoryseq);
		temp += String.format("FAQcategory : %s\r\n", FAQcategory);
		temp += "\r\n\r\n";
		return temp;
	}

}
