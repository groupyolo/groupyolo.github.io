package com.yol.web.DTO;

public class InquiryboardDTO {

	private String inquiryboardseq;
	private String content;
	private String tagok;
	private String inquiryseq;

	public String getInquiryboardseq() {
		return inquiryboardseq;
	}

	public void setInquiryboardseq(String inquiryboardseq) {
		this.inquiryboardseq = inquiryboardseq;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTagok() {
		return tagok;
	}

	public void setTagok(String tagok) {
		this.tagok = tagok;
	}

	public String getInquiryseq() {
		return inquiryseq;
	}

	public void setInquiryseq(String inquiryseq) {
		this.inquiryseq = inquiryseq;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("inquiryboardseq : %s\r\n", inquiryboardseq);
		temp += String.format("content : %s\r\n", content);
		temp += String.format("tagok : %s\r\n", tagok);
		temp += String.format("inquiryseq : %s\r\n", inquiryseq);
		temp += "\r\n\r\n";
		return temp;
	}

}
