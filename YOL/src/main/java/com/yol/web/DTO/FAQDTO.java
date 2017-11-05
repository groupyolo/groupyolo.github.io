package com.yol.web.DTO;

public class FAQDTO {

	private String FAQseq;
	private String FAQCategoryseq;
	private String title;
	private String fcontent;
	private String enrolltime;
	private String openseq;

	public String getFAQseq() {
		return FAQseq;
	}

	public void setFAQseq(String fAQseq) {
		FAQseq = fAQseq;
	}

	public String getFAQCategoryseq() {
		return FAQCategoryseq;
	}

	public void setFAQCategoryseq(String fAQCategoryseq) {
		FAQCategoryseq = fAQCategoryseq;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getFcontent() {
		return fcontent;
	}

	public void setFcontent(String fcontent) {
		this.fcontent = fcontent;
	}

	public String getEnrolltime() {
		return enrolltime;
	}

	public void setEnrolltime(String enrolltime) {
		this.enrolltime = enrolltime;
	}

	public String getOpenseq() {
		return openseq;
	}

	public void setOpenseq(String openseq) {
		this.openseq = openseq;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("FAQseq : %s\r\n", FAQseq);
		temp += String.format("FAQCategoryseq : %s\r\n", FAQCategoryseq);
		temp += String.format("title : %s\r\n", title);
		temp += String.format("fcontent : %s\r\n", fcontent);
		temp += String.format("enrolltime : %s\r\n", enrolltime);
		temp += String.format("openseq : %s\r\n", openseq);
		temp += "\r\n\r\n";
		return temp;
	}

}
