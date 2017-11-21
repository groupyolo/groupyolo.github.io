package com.yol.web.DTO;

public class VFBCommentDTO {
	public String fbComSeq;
	public String fbSeq;
	public String mSeq;
	public String fbComA;
	public String fbComTime;
	public String mNickName;
	
	public synchronized String getFbComSeq() {
		return fbComSeq;
	}
	public synchronized void setFbComSeq(String fbComSeq) {
		this.fbComSeq = fbComSeq;
	}
	public synchronized String getFbSeq() {
		return fbSeq;
	}
	public synchronized void setFbSeq(String fbSeq) {
		this.fbSeq = fbSeq;
	}
	public synchronized String getmSeq() {
		return mSeq;
	}
	public synchronized void setmSeq(String mSeq) {
		this.mSeq = mSeq;
	}
	public synchronized String getFbComA() {
		return fbComA;
	}
	public synchronized void setFbComA(String fbComA) {
		this.fbComA = fbComA;
	}
	public synchronized String getFbComTime() {
		return fbComTime;
	}
	public synchronized void setFbComTime(String fbComTime) {
		this.fbComTime = fbComTime;
	}
	public synchronized String getmNickName() {
		return mNickName;
	}
	public synchronized void setmNickName(String mNickName) {
		this.mNickName = mNickName;
	}
}
