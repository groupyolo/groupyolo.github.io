package com.yol.web.DTO;

public class TemplateDTO {

	private String teSEq;
	private String tName;
	private String tFileName;

	public String getTeSEq() {
		return teSEq;
	}

	public void setTeSEq(String teSEq) {
		this.teSEq = teSEq;
	}

	public String gettName() {
		return tName;
	}

	public void settName(String tName) {
		this.tName = tName;
	}

	public String gettFileName() {
		return tFileName;
	}

	public void settFileName(String tFileName) {
		this.tFileName = tFileName;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("teSEq : %s\r\n", teSEq);
		temp += String.format("tName : %s\r\n", tName);
		temp += String.format("tFileName : %s\r\n", tFileName);
		temp += "\r\n\r\n";
		return temp;
	}

}
