package com.buy.all.modules.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.buy.all.modules.naver.NaverUser;
import com.buy.all.modules.naver.SnsUser;


public interface MemberService {
	
//	�α���
	public Member selectOneLogin(Member dto) throws Exception;
	
//	ȸ������
	public int insert(Member dto) throws Exception; 
	
//	���̹� �α���
	public SnsUser selectUserBySnsId(NaverUser naverUser) throws Exception;
}