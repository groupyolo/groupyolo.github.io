package com.yol.web.DTO;

public class ProjectDTO {

	private String prSeq;
	private String reSeq;
	private String teSeq;
	private String opSeq;
	private String prName;
	private String prURL;
	private String prCount;
	private String Complete;
	private String Usage;
	private String prFileName;
	private String SiteName;

	public String getPrSeq() {
		return prSeq;
	}

	public void setPrSeq(String prSeq) {
		this.prSeq = prSeq;
	}

	public String getReSeq() {
		return reSeq;
	}

	public void setReSeq(String reSeq) {
		this.reSeq = reSeq;
	}

	public String getTeSeq() {
		return teSeq;
	}

	public void setTeSeq(String teSeq) {
		this.teSeq = teSeq;
	}

	public String getOpSeq() {
		return opSeq;
	}

	public void setOpSeq(String opSeq) {
		this.opSeq = opSeq;
	}

	public String getPrName() {
		return prName;
	}

	public void setPrName(String prName) {
		this.prName = prName;
	}

	public String getPrURL() {
		return prURL;
	}

	public void setPrURL(String prURL) {
		this.prURL = prURL;
	}

	public String getPrCount() {
		return prCount;
	}

	public void setPrCount(String prCount) {
		this.prCount = prCount;
	}

	public String getComplete() {
		return Complete;
	}

	public void setComplete(String complete) {
		Complete = complete;
	}

	public String getUsage() {
		return Usage;
	}

	public void setUsage(String usage) {
		Usage = usage;
	}

	public String getPrFileName() {
		return prFileName;
	}

	public void setPrFileName(String prFileName) {
		this.prFileName = prFileName;
	}

	public String getSiteName() {
		return SiteName;
	}

	public void setSiteName(String siteName) {
		SiteName = siteName;
	}

	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("prSeq : %s\r\n", prSeq);
		temp += String.format("reSeq : %s\r\n", reSeq);
		temp += String.format("teSeq : %s\r\n", teSeq);
		temp += String.format("opSeq : %s\r\n", opSeq);
		temp += String.format("prName : %s\r\n", prName);
		temp += String.format("prURL : %s\r\n", prURL);
		temp += String.format("prCount : %s\r\n", prCount);
		temp += String.format("Complete : %s\r\n", Complete);
		temp += String.format("Usage : %s\r\n", Usage);
		temp += String.format("prFileName : %s\r\n", prFileName);
		temp += String.format("SiteName : %s\r\n", SiteName);
		temp += "\r\n\r\n";
		return temp;
	}
}
