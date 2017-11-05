package com.yol.web.DTO;

public class ProjectBoardDTO {

	private String pbSeq;
	private String jSeq;
	private String pbSubject;
	private String pbContent;
	private String pbregdate;
	private String pbtag;
	private String prSeq;
	private String nsSeq;

	public String getPbSeq() {
		return pbSeq;
	}

	public void setPbSeq(String pbSeq) {
		this.pbSeq = pbSeq;
	}

	public String getjSeq() {
		return jSeq;
	}

	public void setjSeq(String jSeq) {
		this.jSeq = jSeq;
	}

	public String getPbSubject() {
		return pbSubject;
	}

	public void setPbSubject(String pbSubject) {
		this.pbSubject = pbSubject;
	}

	public String getPbContent() {
		return pbContent;
	}

	public void setPbContent(String pbContent) {
		this.pbContent = pbContent;
	}

	public String getPbregdate() {
		return pbregdate;
	}

	public void setPbregdate(String pbregdate) {
		this.pbregdate = pbregdate;
	}

	public String getPbtag() {
		return pbtag;
	}

	public void setPbtag(String pbtag) {
		this.pbtag = pbtag;
	}

	public String getPrSeq() {
		return prSeq;
	}

	public void setPrSeq(String prSeq) {
		this.prSeq = prSeq;
	}

	public String getNsSeq() {
		return nsSeq;
	}

	public void setNsSeq(String nsSeq) {
		this.nsSeq = nsSeq;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("pbSeq : %s\r\n", pbSeq);
		temp += String.format("jSeq : %s\r\n", jSeq);
		temp += String.format("pbSubject : %s\r\n", pbSubject);
		temp += String.format("pbContent : %s\r\n", pbContent);
		temp += String.format("pbregdate : %s\r\n", pbregdate);
		temp += String.format("pbtag : %s\r\n", pbtag);
		temp += String.format("prSeq : %s\r\n", prSeq);
		temp += String.format("nsSeq : %s\r\n", nsSeq);
		temp += "\r\n\r\n";
		return temp;
	}

}
