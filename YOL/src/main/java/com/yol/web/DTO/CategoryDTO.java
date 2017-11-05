package com.yol.web.DTO;

public class CategoryDTO {
	private String caSeq;
	private String Category;

	public String getCaSeq() {
		return caSeq;
	}

	public void setCaSeq(String caSeq) {
		this.caSeq = caSeq;
	}

	public String getCategory() {
		return Category;
	}

	public void setCategory(String category) {
		Category = category;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("caSeq : %s\r\n", caSeq);
		temp += String.format("Category : %s\r\n", Category);
		temp += "\r\n\r\n";
		return temp;
	}
}
