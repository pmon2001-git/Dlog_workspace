package com.kh.dlog.member.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.kh.dlog.member.model.service.MemberService;
import com.kh.dlog.member.model.vo.Member;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	@RequestMapping("mainpage.me")
	public String mainpage() {
		return "mainpage/mainPage";
	}
	
	@RequestMapping("loginForm.me")
	public String memberLoginForm() {
		return "mainpage/member/memberLoginForm";
	}
	
	@RequestMapping("searchForm.me")
	public String memberSearchForm() {
		return "mainpage/member/memberSearchForm";
	}
	
	@RequestMapping("enrollForm.me")
	public String memberEnrollForm() {
		return "mainpage/member/memberEnrollForm";
	}
	
	@RequestMapping("pwdUpdateForm.me")
	public String memberPwdUpdateForm() {
		return "mainpage/member/memberPwdUpdateForm";
	}
	
	@RequestMapping("logout.me")
	public String logoutMember(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping("login.me")
	public String loginMember(Member m, HttpSession session, Model model) {
		
		Member loginUser = mService.loginMember(m);
		
		if(loginUser == null) {
			
			//session.setAttribute("alertMsg", "로그인실패");
			return "mainpage/member/memberLoginForm";
			
		}else {
			
			session.setAttribute("loginUser", loginUser);
			session.setAttribute("alertMsg", "로그인성공");
			return "mainpage/mainPage";
			
		}
		
	}
	
	
	
	
	
	@RequestMapping("infoList.in")
	public String infoList(HttpSession session, Model model) {
		
		ArrayList<Member> list = mService.infoList();
		
		
		model.addAttribute("list",list);
		
		return "mypage/infoListView";
	}
	
	@RequestMapping("infoUpdate.in")
	public String updateMember(Member m, HttpSession session, Model model) {
		
		int result = mService.infoUpdate(m);
		
		if(result > 0) { 
			
			session.setAttribute("loginUser", mService.loginMember(m));  
			session.setAttribute("alertMsg", "성공적으로 정보 변경되었습니다.");
			
			return "redirect:infoUpdateForm";
		}else {
			
			model.addAttribute("errorMsg", "정보 변경 실패");
			return "common/errorPage";
		}
	

	}
	 @RequestMapping("introList.it")
	 public String infoList(Member m, HttpSession session, Model model) {
		 
		 ArrayList<Member> list = mService.selectIntroList();
			
		 model.addAttribute("list",list);
		 
		 return "mypage/introListView";
	 }
	 
	
	 
}
