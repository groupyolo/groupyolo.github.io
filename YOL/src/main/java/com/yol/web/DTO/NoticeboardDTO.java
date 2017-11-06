package com.yol.web.DTO;

public class NoticeboardDTO {

	private String noticeboardseq;
	private String noticeCategoryseq;
	private String title;
	private String ncontent;
	private String enrolltime;
	private String startExp;
	private String endExp;

	public String getNoticeboardseq() {
		return noticeboardseq;
	}

	public void setNoticeboardseq(String noticeboardseq) {
		this.noticeboardseq = noticeboardseq;
	}

	public String getNoticeCategoryseq() {
		return noticeCategoryseq;
	}

	public void setNoticeCategoryseq(String noticeCategoryseq) {
		this.noticeCategoryseq = noticeCategoryseq;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getNcontent() {
		return ncontent;
	}

	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}

	public String getEnrolltime() {
		return enrolltime;
	}

	public void setEnrolltime(String enrolltime) {
		this.enrolltime = enrolltime;
	}

	public String getStartExp() {
		return startExp;
	}

	public void setStartExp(String startExp) {
		this.startExp = startExp;
	}

	public String getEndExp() {
		return endExp;
	}

	public void setEndExp(String endExp) {
		this.endExp = endExp;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("noticeboardseq : %s\r\n", noticeboardseq);
		temp += String.format("noticeCategoryseq : %s\r\n", noticeCategoryseq);
		temp += String.format("title : %s\r\n", title);
		temp += String.format("ncontent : %s\r\n", ncontent);
		temp += String.format("enrolltime : %s\r\n", enrolltime);
		temp += String.format("startExp : %s\r\n", startExp);
		temp += String.format("endExp : %s\r\n", endExp);
		temp += "\r\n\r\n";
		return temp;
	}

}
