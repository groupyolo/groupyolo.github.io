package com.yol.web.DTO;

public class QcommentDTO {

	private String qcommentseq;
	private String questionseq;
	private String mSeq;
	private String qcomment;
	private String qcommenttime;

	public String getQcommentseq() {
		return qcommentseq;
	}

	public void setQcommentseq(String qcommentseq) {
		this.qcommentseq = qcommentseq;
	}

	public String getQuestionseq() {
		return questionseq;
	}

	public void setQuestionseq(String questionseq) {
		this.questionseq = questionseq;
	}

	public String getmSeq() {
		return mSeq;
	}

	public void setmSeq(String mSeq) {
		this.mSeq = mSeq;
	}

	public String getQcomment() {
		return qcomment;
	}

	public void setQcomment(String qcomment) {
		this.qcomment = qcomment;
	}

	public String getQcommenttime() {
		return qcommenttime;
	}

	public void setQcommenttime(String qcommenttime) {
		this.qcommenttime = qcommenttime;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("qcommentseq : %s\r\n", qcommentseq);
		temp += String.format("questionseq : %s\r\n", questionseq);
		temp += String.format("mSeq : %s\r\n", mSeq);
		temp += String.format("qcomment : %s\r\n", qcomment);
		temp += String.format("qcommenttime : %s\r\n", qcommenttime);
		temp += "\r\n\r\n";
		return temp;
	}
}
