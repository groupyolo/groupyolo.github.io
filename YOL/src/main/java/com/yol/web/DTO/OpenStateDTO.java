package com.yol.web.DTO;

public class OpenStateDTO {

	private String opSeq;
	private String state;

	public String getOpSeq() {
		return opSeq;
	}

	public void setOpSeq(String opSeq) {
		this.opSeq = opSeq;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("opSeq : %s\r\n", opSeq);
		temp += String.format("state : %s\r\n", state);
		temp += "\r\n\r\n";
		return temp;
	}

}
