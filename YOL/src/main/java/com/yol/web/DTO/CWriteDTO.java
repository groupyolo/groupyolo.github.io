package com.yol.web.DTO;

public class CWriteDTO {

	private String cwSeq;
	private String cwWriter;
	public String getCwSeq() {
		return cwSeq;
	}
	public void setCwSeq(String cwSeq) {
		this.cwSeq = cwSeq;
	}
	public String getCwWriter() {
		return cwWriter;
	}
	public void setCwWriter(String cwWriter) {
		this.cwWriter = cwWriter;
	}
	
	// 디버깅용 toString()
		@Override
		public String toString() {
			String temp = "";
			temp += "\r\n\r\n";
			temp += String.format("cwSeq : %s\r\n", cwSeq);
			temp += String.format("cwWriter : %s\r\n", cwWriter);
			temp += "\r\n\r\n";
			return temp;
		}
	
}
