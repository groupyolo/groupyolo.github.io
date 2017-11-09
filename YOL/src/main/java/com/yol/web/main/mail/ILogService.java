package com.yol.web.main.mail;

import com.yol.web.DTO.MemberDTO;

public interface ILogService {

	public MemberDTO logIn(MemberDTO dto);

	public int sign(MemberDTO dto);

	public int addStateMember(String mEmail);

	public int authok(MemberDTO dto);

	public int apiLoginCheck(MemberDTO ldto);

	public MemberDTO apiLoginok(MemberDTO ldto);

	public int apiSign(MemberDTO dto);

}
