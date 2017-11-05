package com.yol.web.DTO;

public class VisitorDTO {

	private String visitorseq;
	private String intime;
	private String ip;

	public String getVisitorseq() {
		return visitorseq;
	}

	public void setVisitorseq(String visitorseq) {
		this.visitorseq = visitorseq;
	}

	public String getIntime() {
		return intime;
	}

	public void setIntime(String intime) {
		this.intime = intime;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("visitorseq : %s\r\n", visitorseq);
		temp += String.format("intime : %s\r\n", intime);
		temp += String.format("ip : %s\r\n", ip);
		temp += "\r\n\r\n";
		return temp;
	}

}
