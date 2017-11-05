package com.yol.web.DTO;

public class lStateDTO {

	private String lsSeq;
	private String lsState;

	public String getLsSeq() {
		return lsSeq;
	}

	public void setLsSeq(String lsSeq) {
		this.lsSeq = lsSeq;
	}

	public String getLsState() {
		return lsState;
	}

	public void setLsState(String lsState) {
		this.lsState = lsState;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("lsSeq : %s\r\n", lsSeq);
		temp += String.format("lsState : %s\r\n", lsState);
		temp += "\r\n\r\n";
		return temp;
	}

}
