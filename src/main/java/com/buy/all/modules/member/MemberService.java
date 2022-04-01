package com.buy.all.modules.member;

import java.util.List;


public interface MemberService {
	
//	로그인
	public Member selectOneLogin(Member dto) throws Exception;
	
//	회원가입
	public int insert(Member dto) throws Exception; 
}