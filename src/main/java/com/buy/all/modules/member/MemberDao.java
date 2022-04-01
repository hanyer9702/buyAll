package com.buy.all.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



@Repository
public class MemberDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.buy.all.modules.member.MemberMpp";
	
//	�α���
	public Member selectOneLogin(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneLogin", dto);
	}
	
//	ȸ������
	public int insertMember(Member dto) {
		return sqlSession.insert(namespace + ".insertMember", dto);
	}
	public int insertMemberEmail(Member dto) {
		return sqlSession.insert(namespace + ".insertMemberEmail", dto);
	}
}