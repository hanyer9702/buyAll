package com.buy.all.modules.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.buy.all.modules.naver.NaverUser;
import com.buy.all.modules.naver.SnsUser;


public interface MemberService {
	
//	로그인
	public Member selectOneLogin(Member dto) throws Exception;
	
//	회원가입
	public int insert(Member dto) throws Exception; 
	
//	네이버 로그인
	public SnsUser selectUserBySnsId(NaverUser naverUser) throws Exception;
}