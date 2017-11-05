package com.yol.web.DTO;

public class FBoardCategoryDTO {

	private String FBCatSeq;
	private String FBCategory;

	public String getFBCatSeq() {
		return FBCatSeq;
	}

	public void setFBCatSeq(String fBCatSeq) {
		FBCatSeq = fBCatSeq;
	}

	public String getFBCategory() {
		return FBCategory;
	}

	public void setFBCategory(String fBCategory) {
		FBCategory = fBCategory;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("FBCatSeq : %s\r\n", FBCatSeq);
		temp += String.format("FBCategory : %s\r\n", FBCategory);
		temp += "\r\n\r\n";
		return temp;
	}

}
