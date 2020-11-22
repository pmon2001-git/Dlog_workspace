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
		
		if(result > 0) { // 성공 => 세션에 담긴 member객체 바꾸기 =>  에러페이지 재요청
			
			session.setAttribute("loginUser", mService.loginMember(m)); //디비로부터 다시 갱신된 내용으로 바꿔줘야함 ,,로그인멤버호출하면 전달하면 
			session.setAttribute("alertMsg", "성공적으로 정보 변경되었습니다.");
			
			return "redirect:infoUpdateForm";
		}else {// 실패 => 에러문구 담아서 에러포워딩
			
			model.addAttribute("errorMsg", "정보 변경 실패");//에러문구담아서 포워딩
			return "common/errorPage";
		}
	

}
