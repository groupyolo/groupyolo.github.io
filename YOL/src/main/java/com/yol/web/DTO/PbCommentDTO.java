package com.yol.web.DTO;

public class PbCommentDTO {

	private String pbcSeq;
	private String pbSeq;
	private String jSeq;
	private String pbcomment;
	private String pbcRegdate;

	public String getPbcSeq() {
		return pbcSeq;
	}

	public void setPbcSeq(String pbcSeq) {
		this.pbcSeq = pbcSeq;
	}

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

	public String getPbcomment() {
		return pbcomment;
	}

	public void setPbcomment(String pbcomment) {
		this.pbcomment = pbcomment;
	}

	public String getPbcRegdate() {
		return pbcRegdate;
	}

	public void setPbcRegdate(String pbcRegdate) {
		this.pbcRegdate = pbcRegdate;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("pbcSeq : %s\r\n", pbcSeq);
		temp += String.format("pbSeq : %s\r\n", pbSeq);
		temp += String.format("jSeq : %s\r\n", jSeq);
		temp += String.format("pbcomment : %s\r\n", pbcomment);
		temp += String.format("pbcRegdate : %s\r\n", pbcRegdate);
		temp += "\r\n\r\n";
		return temp;
	}

}
