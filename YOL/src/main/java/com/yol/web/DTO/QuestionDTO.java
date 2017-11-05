package com.yol.web.DTO;

public class QuestionDTO {

	private String questionseq;
	private String mSeq;
	private String qcategoryseq;
	private String qtitle;
	private String qhits;
	private String qcommentcount;
	private String qcontent;
	private String qtime;

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

	public String getQcategoryseq() {
		return qcategoryseq;
	}

	public void setQcategoryseq(String qcategoryseq) {
		this.qcategoryseq = qcategoryseq;
	}

	public String getQtitle() {
		return qtitle;
	}

	public void setQtitle(String qtitle) {
		this.qtitle = qtitle;
	}

	public String getQhits() {
		return qhits;
	}

	public void setQhits(String qhits) {
		this.qhits = qhits;
	}

	public String getQcommentcount() {
		return qcommentcount;
	}

	public void setQcommentcount(String qcommentcount) {
		this.qcommentcount = qcommentcount;
	}

	public String getQcontent() {
		return qcontent;
	}

	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}

	public String getQtime() {
		return qtime;
	}

	public void setQtime(String qtime) {
		this.qtime = qtime;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("questionseq : %s\r\n", questionseq);
		temp += String.format("mSeq : %s\r\n", mSeq);
		temp += String.format("qcategoryseq : %s\r\n", qcategoryseq);
		temp += String.format("qtitle : %s\r\n", qtitle);
		temp += String.format("qhits : %s\r\n", qhits);
		temp += String.format("qcommentcount : %s\r\n", qcommentcount);
		temp += String.format("qcontent : %s\r\n", qcontent);
		temp += String.format("qtime : %s\r\n", qtime);
		temp += "\r\n\r\n";
		return temp;
	}

}
