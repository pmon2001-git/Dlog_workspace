package com.kh.dlog.member.model.service;

import java.util.ArrayList;

import com.kh.dlog.member.model.vo.Member;

public interface MemberService {
	
	Member loginMember(Member m);
	
	int insertMember(Member m);
	
	ArrayList<Member> selectList();
	
	int updateMember(Member m);
	
	

}
