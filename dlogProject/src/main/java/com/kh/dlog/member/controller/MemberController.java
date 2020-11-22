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
	
	
	
	
	
	
	
	
	
	@RequestMapping("infoList.in")
	public String myPage(Model model) {
		
		ArrayList<Member> list = mService.selectInfoList();
		
		model.addAttribute("list",list);
		
		return "mainmenu/mypage/infoListView";
	}
	
	@RequestMapping("infoUpdate.in")
	public String updateMember(Member m, HttpSession session, Model model) {
		
		int result = mService.updateMember(m);
		
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
		 
		 return "mainmenu/mypage/introListView";
	 }
}
