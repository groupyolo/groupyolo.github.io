package com.yol.web.DTO;

public class MemberDTO {

	private String mSeq;
	private String mgSeq;
	private String mNickName;
	private String mEmail;
	private String mPassword;
	private String mDate;

	public String getmSeq() {
		return mSeq;
	}

	public void setmSeq(String mSeq) {
		this.mSeq = mSeq;
	}

	public String getMgSeq() {
		return mgSeq;
	}

	public void setMgSeq(String mgSeq) {
		this.mgSeq = mgSeq;
	}

	public String getmNickName() {
		return mNickName;
	}

	public void setmNickName(String mNickName) {
		this.mNickName = mNickName;
	}

	public String getmEmail() {
		return mEmail;
	}

	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}

	public String getmPassword() {
		return mPassword;
	}

	public void setmPassword(String mPassword) {
		this.mPassword = mPassword;
	}

	public String getmDate() {
		return mDate;
	}

	public void setmDate(String mDate) {
		this.mDate = mDate;
	}

	
	// 디버깅용 toString()
	@Override
	public String toString() {
		String temp = "";
		temp += "\r\n\r\n";
		temp += String.format("mSeq : %s\r\n", mSeq);
		temp += String.format("mgSeq : %s\r\n", mgSeq);
		temp += String.format("mNickName", mNickName);
		temp += String.format("mEmail : %s\r\n", mEmail);
		temp += String.format("mPassword : %s\r\n", mPassword);
		temp += String.format("mDate : %s\r\n", mDate);
		temp += "\r\n\r\n";
		return temp;
	}

}
