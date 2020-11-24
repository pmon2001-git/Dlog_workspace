package com.kh.dlog.member.model.service;

import java.util.ArrayList;

import com.kh.dlog.member.model.vo.Member;

public interface MemberService {
	
	int idCheck(String memberId);
	
	int nicknameCheck(String nickname);
	
	Member loginMember(Member m);
	
	int insertMember(Member m);
	
	
	ArrayList<Member> infoList();
	
	int infoUpdate(Member m);
	
	ArrayList<Member> introList();
	
	int introUpdate(Member m);
	
	
	

}
