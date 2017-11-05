package com.yol.web.DTO;

public class InquiryDTO {

	private String inquiryseq;
	private String mSeq;
	private String title;
	private String icontent;
	private String enrolltime;
	private String hits;
	private String openseq;
	private String inquiryCategoryseq;

	public String getInquiryseq() {
		return inquiryseq;
	}

	public void setInquiryseq(String inquiryseq) {
		this.inquiryseq = inquiryseq;
	}

	public String getmSeq() {
		return mSeq;
	}

	public void setmSeq(String mSeq) {
		this.mSeq = mSeq;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getIcontent() {
		return icontent;
	}

	public void setIcontent(String icontent) {
		this.icontent = icontent;
	}

	public String getEnrolltime() {
		return enrolltime;
	}

	public void setEnrolltime(String enrolltime) {
		this.enrolltime = enrolltime;
	}

	public String getHits() {
		return hits;
	}

	public void setHits(String hits) {
		this.hits = hits;
	}

	public String getOpenseq() {
		return openseq;
	}

	public void setOpenseq(String openseq) {
		this.openseq = openseq;
	}

	public String getInquiryCategoryseq() {
		return inquiryCategoryseq;
	}

	public void setInquiryCategoryseq(String inquiryCategoryseq) {
		this.inquiryCategoryseq = inquiryCategoryseq;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("inquiryseq : %s\r\n", inquiryseq);
		temp += String.format("mSeq : %s\r\n", mSeq);
		temp += String.format("title : %s\r\n", title);
		temp += String.format("icontent : %s\r\n", icontent);
		temp += String.format("enrolltime : %s\r\n", enrolltime);
		temp += String.format("hits : %s\r\n", hits);
		temp += String.format("openseq : %s\r\n", openseq);
		temp += String.format("inquiryCategoryseq : %s\r\n", inquiryCategoryseq);
		temp += "\r\n\r\n";
		return temp;
	}

}
