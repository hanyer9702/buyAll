package com.buy.all.modules.member;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buy.all.modules.common.util.UtilDateTime;



@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao dao;
	
//	·Î±×ÀÎ
	@Override
	public Member selectOneLogin(Member dto) throws Exception {
		return dao.selectOneLogin(dto);
	}

	@Override
	public int insert(Member dto) throws Exception {

		dto.setRegDateTime(UtilDateTime.nowDate());
		dto.setModDateTime(UtilDateTime.nowDate());
		
		dao.insertMember(dto);
		dao.insertMemberEmail(dto);
		
		return 0;
	}
	
}