package com.yol.web.DTO;

public class MStateDTO {

	private String msSeq;
	private String msState;

	public String getMsSeq() {
		return msSeq;
	}

	public void setMsSeq(String msSeq) {
		this.msSeq = msSeq;
	}

	public String getMsState() {
		return msState;
	}

	public void setMsState(String msState) {
		this.msState = msState;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("msSeq : %s\r\n", msSeq);
		temp += String.format("msState : %s\r\n", msState);
		temp += "\r\n\r\n";
		return temp;
	}

}
