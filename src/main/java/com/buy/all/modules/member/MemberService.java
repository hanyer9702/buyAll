package com.buy.all.modules.member;

import java.util.List;


public interface MemberService {
	
//	�α���
	public Member selectOneLogin(Member dto) throws Exception;
	
//	ȸ������
	public int insert(Member dto) throws Exception; 
}