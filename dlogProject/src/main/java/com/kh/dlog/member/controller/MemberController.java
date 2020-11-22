package com.kh.dlog.member.controller;

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
	
	@RequestMapping("myPage.me")
	public String myPage() {
		return "mainmenu/mypage/infoListView";
	}
	
	@RequestMapping("update.me")
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
}
