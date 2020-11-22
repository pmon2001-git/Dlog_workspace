package com.kh.dlog.member.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.dlog.member.model.dao.MemberDao;
import com.kh.dlog.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDao mDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public ArrayList<Member> selectList() {
		return mDao.selectMember(sqlSession);
		return null;
	}

	@Override
	public int updateMember(Member m) {
		return mDao.updateMember(sqlSession, m);
		return 0;
	}
	

}
