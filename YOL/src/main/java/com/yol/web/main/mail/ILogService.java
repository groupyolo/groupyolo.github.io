package com.yol.web.main.mail;

import com.yol.web.DTO.MemberDTO;

public interface ILogService {

	public MemberDTO logIn(MemberDTO dto);

	public void sign(MemberDTO dto);

	//public void addStateMember(MemberDTO dto);

	public int authok(MemberDTO dto);

	public int apiLoginCheck(MemberDTO ldto);

	public MemberDTO apiLoginok(MemberDTO ldto);

	public int apiSign(MemberDTO dto);

	public int mEmailCheck(String mEmail);

	public int mNickNameCheck(String mNickName);

	public int findPassword(String mEmail);

	public int findPasswordChange(MemberDTO dto);

}
