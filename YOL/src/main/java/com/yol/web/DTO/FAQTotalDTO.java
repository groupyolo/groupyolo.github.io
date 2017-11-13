package com.yol.web.DTO;

public class FAQTotalDTO {

	private String FAQseq;
	private String FAQCategoryseq;
	private String title;
	private String fcontent;
	private String enrolltime;
	private String openseq;
	private String faqCategory;
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
	public String getFaqCategory() {
		return faqCategory;
	}
	public void setFaqCategory(String faqCategory) {
		this.faqCategory = faqCategory;
	}
	

}
