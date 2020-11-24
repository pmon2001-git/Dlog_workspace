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
	public Member loginMember(Member m) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public int insertMember(Member m) {
		// TODO Auto-generated method stub
		return 0;
	}
	

	@Override
	public ArrayList<Member> infoList() {
		
		return mDao.infoList(sqlSession);
		
	}

	@Override
	public int infoUpdate(Member m) {
		return mDao.infoUpdate(sqlSession, m);
		
	}


	@Override
	public ArrayList<Member> introList() {
		// TODO Auto-generated method stub
		return mDao.introList(sqlSession);
	}

	

	

}
