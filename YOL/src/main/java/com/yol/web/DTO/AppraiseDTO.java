package com.yol.web.DTO;

public class AppraiseDTO {

	private String apSeq;
	private String prSeq;
	private String mSeq;
	private String adScore;
	private String adComment;

	public String getApSeq() {
		return apSeq;
	}

	public void setApSeq(String apSeq) {
		this.apSeq = apSeq;
	}

	public String getPrSeq() {
		return prSeq;
	}

	public void setPrSeq(String prSeq) {
		this.prSeq = prSeq;
	}

	public String getmSeq() {
		return mSeq;
	}

	public void setmSeq(String mSeq) {
		this.mSeq = mSeq;
	}

	public String getAdScore() {
		return adScore;
	}

	public void setAdScore(String adScore) {
		this.adScore = adScore;
	}

	public String getAdComment() {
		return adComment;
	}

	public void setAdComment(String adComment) {
		this.adComment = adComment;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("apSeq : %s\r\n", apSeq);
		temp += String.format("prSeq : %s\r\n", prSeq);
		temp += String.format("mSeq : %s\r\n", mSeq);
		temp += String.format("adScore : %s\r\n", adScore);
		temp += String.format("adComment : %s\r\n", adComment);
		temp += "\r\n\r\n";
		return temp;
	}

}
