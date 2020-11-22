package com.kh.dlog.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.dlog.member.model.vo.Member;

@Repository
public class MemberDao {
	
	public ArrayList<Member> selectList(SqlSessionTemplate sqlSession, Member m){
		
		return (ArrayList)sqlSession.selectList("diaryMapper.selectMember", m);
	}
	public int updateMember(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.update("memberMapper.updateMember", m);
	}
	
}
