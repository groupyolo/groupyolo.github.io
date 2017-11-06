package com.yol.web.DTO;

import org.apache.ibatis.type.Alias;

@Alias("vJoinTeamDTO")
public class VJoinTeamDTO {
	private String reSeq;
	private String mSeq;
	private String jSubject;
	private String jContent;
	private String jStart;
	private String jEnd;
	private String jCount;
	private String jRegDate;
	private String activeState;
	private String mName;
	private String mNickName;
	private String mCount;
	private String sName;
	
	public String getReSeq() {
		return reSeq;
	}
	public void setReSeq(String reSeq) {
		this.reSeq = reSeq;
	}
	public String getmSeq() {
		return mSeq;
	}
	public void setmSeq(String mSeq) {
		this.mSeq = mSeq;
	}
	public String getjSubject() {
		return jSubject;
	}
	public void setjSubject(String jSubject) {
		this.jSubject = jSubject;
	}
	public String getjContent() {
		return jContent;
	}
	public void setjContent(String jContent) {
		this.jContent = jContent;
	}
	public String getjStart() {
		return jStart;
	}
	public void setjStart(String jStart) {
		this.jStart = jStart;
	}
	public String getjEnd() {
		return jEnd;
	}
	public void setjEnd(String jEnd) {
		this.jEnd = jEnd;
	}
	public String getjCount() {
		return jCount;
	}
	public void setjCount(String jCount) {
		this.jCount = jCount;
	}
	public String getjRegDate() {
		return jRegDate;
	}
	public void setjRegDate(String jRegDate) {
		this.jRegDate = jRegDate;
	}
	public String getActiveState() {
		return activeState;
	}
	public void setActiveState(String activeState) {
		this.activeState = activeState;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getmNickName() {
		return mNickName;
	}
	public void setmNickName(String mNickName) {
		this.mNickName = mNickName;
	}
	public String getmCount() {
		return mCount;
	}
	public void setmCount(String mCount) {
		this.mCount = mCount;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
}
