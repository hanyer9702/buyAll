package com.buy.all.modules.member;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buy.all.modules.common.util.UtilDateTime;
import com.buy.all.modules.naver.NaverUser;
import com.buy.all.modules.naver.SnsUser;



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

	@Override
	public SnsUser selectUserBySnsId(NaverUser naverUser) throws Exception {
		if(naverUser != null){
			String snsId = naverUser.getId();
			return (SnsUser) dao.selectUserBySnsId(snsId);
		}
		return null;
	}
	
	
}