package com.kh.dlog.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dlog.member.model.vo.Member;

@Repository
public class MemberDao {
	
	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	
	
	
	public ArrayList<Member> infoList(SqlSessionTemplate sqlSession){
		
		return (ArrayList)sqlSession.selectList("memberMapper.infoList", null);
	}
	public int infoUpdate(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.update("memberMapper.infoUpdate", m);
	}
	
	public ArrayList<Member> introList(SqlSessionTemplate sqlSession) {
		
		return (ArrayList)sqlSession.selectList("memeberMapper.introList", null);
	}
	
	public int introUpdate(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.update("memberMapper.introUpdate", m);
		
		
	}
	
}
