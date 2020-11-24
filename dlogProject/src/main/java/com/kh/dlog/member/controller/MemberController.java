package com.kh.dlog.member.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.dlog.member.model.service.MemberService;
import com.kh.dlog.member.model.vo.Member;

import net.nurigo.java_sdk.Coolsms;

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
	
	@ResponseBody
	@RequestMapping("idCheck.me")
	public String idCheck(String memberId) {
		
		int count = mService.idCheck(memberId);
		
		if(count > 0) {
			return "fail";
		}else {
			return "success";
		}
		
	}
	
	@ResponseBody
	@RequestMapping("pwdCheck.me")
	public String pwdCheck(String memberPwd) {
		
		String regExp = "^(?=.*[a-z])(?=.*[0-9])(?=.*[$@$!%*?&`~'\\\"+=])[a-z[0-9]$@$!%*?&`~'\\\"+=]{8,15}$";
		
		Pattern pSymbol = Pattern.compile(regExp);
		Matcher mSymbol = pSymbol.matcher(memberPwd);
		
		if(mSymbol.find()) {
			return "true";
		}else {
			return "false";
		}
		
	}
	
	@ResponseBody
	@RequestMapping("nicknameCheck.me")
	public String nicknameCheck(String nickname) {
		
		int count = mService.nicknameCheck(nickname);
		
		if(count > 0) {
			return "success";
		}else {
			return "fail";
		}
		
	}
	
	/*
	@ResponseBody
	@RequestMapping("sendSMS.me")
	public String sendSMS(String phoneNumber) {
		
		Random rand  = new Random();
        String numStr = "";
        for(int i=0; i<6; i++) {
            String ran = Integer.toString(rand.nextInt(10));
            numStr+=ran;
        }
	        
	        System.out.println("수신자 번호 : " + phoneNumber);
	        System.out.println("인증번호 : " + numStr);
	       
	        String api_key = "";
	        String api_secret = "";
	        Coolsms coolsms = new Coolsms(api_key, api_secret);

	       
	        HashMap<String, String> params = new HashMap<String, String>();
	        params.put("to", phoneNumber);    // 수신전화번호
	        params.put("from", "");    // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
	        params.put("type", "SMS");
	        params.put("text", "휴대폰인증 테스트 메시지 : 인증번호는" + "["+numStr+"]" + "입니다.");

	        JSONObject result = (JSONObject) coolsms.send(params); // 보내기&전송결과받기
	        
	        
	        
		
	}
	*/

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
		 
		 ArrayList<Member> list = mService.introList();
			
		 model.addAttribute("list",list);
		 
		 return "mypage/introListView";
	 }
	 
	 @RequestMapping("introUpdate.it")
	 public String introUpdate(Member m, HttpSession session, Model model) {
		 
		 int result = mService.introUpdate(m);
			
			if(result > 0) { 
				
				session.setAttribute("loginUser", mService.loginMember(m));  
				session.setAttribute("alertMsg", "성공적으로 소개글이 변경되었습니다.");
				
				return "redirect:introUpdateForm";
			}else {
				
				model.addAttribute("errorMsg", "소개글 변경 실패");
				return "common/errorPage";
			}
	
	 }
}
	 
	 
