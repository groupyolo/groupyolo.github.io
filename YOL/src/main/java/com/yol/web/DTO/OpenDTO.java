package com.yol.web.DTO;

public class OpenDTO {

	private String openseq;
	private String openok;

	public String getOpenseq() {
		return openseq;
	}

	public void setOpenseq(String openseq) {
		this.openseq = openseq;
	}

	public String getOpenok() {
		return openok;
	}

	public void setOpenok(String openok) {
		this.openok = openok;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("openseq : %s\r\n", openseq);
		temp += String.format("openok : %s\r\n", openok);
		temp += "\r\n\r\n";
		return temp;
	}

}
