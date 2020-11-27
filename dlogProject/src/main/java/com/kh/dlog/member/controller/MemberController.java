package com.kh.dlog.member.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.dlog.member.model.service.MemberService;
import com.kh.dlog.member.model.vo.Member;
import com.kh.dlog.template.Coolsms;


@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
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
	@RequestMapping(value="sendSMS.me")
	public String sendSMS(String phoneNumber) {
		
		Random rand  = new Random();
        String numStr = "";
        for(int i=0; i<6; i++) {
            String ran = Integer.toString(rand.nextInt(10));
            numStr+=ran;
        }
	        
	        System.out.println("수신자 번호 : " + phoneNumber);
	        System.out.println("인증번호 : " + numStr);
	       
	        String api_key = "NCSDDMHFZCHOCFLE";
	        String api_secret = "P7GRQDVKXWOBMNYIDFODEA8WIKDEHXCQ";
	        Coolsms coolsms = new Coolsms(api_key, api_secret);

	       
	        HashMap<String, String> params = new HashMap<String, String>();
	        params.put("to", phoneNumber);    // 수신전화번호
	        params.put("from", "01030171804");    // 발신전화번호. 테스트시에는 발신,수신 둘다 본인 번호로 하면 됨
	        params.put("type", "SMS");
	        params.put("text", "휴대폰인증 테스트 메시지 : 인증번호는" + "["+numStr+"]" + "입니다.");

	        JSONObject result = coolsms.send(params); // 보내기&전송결과받기 
	        
	        return numStr;
		
	}
	*/
	
	@ResponseBody
	@RequestMapping("idSearch.me")
	public String idSearch(Member m, HttpSession session) {
		
		String result = mService.idSearch(m);
		
		if(result != null) {
			
			session.setAttribute("result", "회원님의 아이디는 " + result + " 입니다.");
			return "success";
			
		}else {
			
			session.setAttribute("result", "회원님의 아이디를 찾을 수 없습니다.");
			return "fail";
			
		}
		
	}
	
	@RequestMapping("pwdSearch.me")
	public String pwdSearch(Member m, HttpSession session, Model model) {
		
		String memberNo = mService.pwdSearch(m);
		
		if(memberNo == null) {
			session.setAttribute("searchAlert", "비밀번호를 찾을 수 없습니다.");
			return "mainpage/member/memberSearchForm";
		}else {
			model.addAttribute("memberNo", Integer.parseInt(memberNo));
			return "mainpage/member/memberPwdUpdateForm";
		}
		
	}
	
	@ResponseBody
	@RequestMapping("pwdUpdate.me")
	public String pwdUpdate(Member m, HttpSession session) {
		
		String encPwd = bcryptPasswordEncoder.encode(m.getMemberPwd());
		
		m.setMemberPwd(encPwd);
		
		int result = mService.pwdUpdate(m);
		
		if(result > 0) {
			
			session.setAttribute("resultChange", "성공적으로 비밀번호가 변경되었습니다.");
			return "success";
			
		}else {
			
			session.setAttribute("resultChange", "비밀번호 변경에 실패했습니다.");
			return "fail";
			
		}
		
	}

	@RequestMapping("login.me")
	public String loginMember(Member m, HttpSession session, Model model) {
		
		Member loginUser = mService.loginMember(m);
		ArrayList<Member> list = mService.selectMemberList();
		
		if(loginUser.getMemberNo() != 1) {
		
			if(loginUser != null /*&& bcryptPasswordEncoder.matches(m.getMemberPwd(), loginUser.getMemberPwd())*/) {
				
				session.setAttribute("loginUser", loginUser);
				return "redirect:/";
				
			}else {
				
				session.setAttribute("alertMsg", "로그인실패");
				return "mainpage/member/memberLoginForm";
				
			}
			
		}else {
			
			model.addAttribute("list", list);
			return "admin/memberDataList";
			
		}
		
	}
	
	
	@RequestMapping("enroll.me")
	public String insertMember(Member m, HttpSession session) {
		String encPwd = bcryptPasswordEncoder.encode(m.getMemberPwd());
		
		m.setMemberPwd(encPwd);
		
		int result = mService.insertMember(m);
		
		if(result > 0) {
			session.setAttribute("alertMsg"  , "성공적으로 회원가입되었습니다.");
			return "mainpage/member/memberLoginForm";
		}else {
			session.setAttribute("alertMsg"  , "회원가입에 실패했습니다.");
			return "mainpage/member/memberEnrollForm";
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
	 public String introList(Member m, HttpSession session, Model model) {
		 
		 ArrayList<Member> list = mService.introList(m);
			
		 model.addAttribute("list",list);
		 
		 return "mypage/introListView";
	 }
	 
	 @RequestMapping("introListMn.it")
	 public String introListMn(Member m, HttpSession session, Model model) {
		 
		 ArrayList<Member> list = mService.introListMn(m);
			
		 model.addAttribute("list",list);
		 
		 return "mypage/introListViewManagement";
	 }
	 
	 
	 
	 @RequestMapping("enrollForm.it")
		public String enrollForm() {
			return "mypage/introEnrollForm";
		}
	 
	 @RequestMapping("introInsert.it")
	 public String introInsert(Member m, HttpSession session, Model model) {
		 
		 int result = mService.introInsert(m);
		 
			if(result > 0) {
				
				session.setAttribute("alertMsg", "성공적으로 게시글이 등록되었습니다.");
				return "redirect:introListMn.it";
			}else {
				
				model.addAttribute("errorMsg", "게시글 등록 실패");
				return "common/errorPage";
			}
	 }
	 
	 @RequestMapping("updateForm.it")
		public String updateForm (){
		
			return "mypage/introUpdateForm";
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
	 
	 @RequestMapping("deleteMember.me")
	 public String deleteMember(Member m, HttpSession session, Model model) {
		 
		 
		 Member loginUser = (Member)session.getAttribute("loginUser");
		 
		 int result = mService.deleteMember(loginUser.getMemberId());
		 
		 if(result > 0) {
				
			 	session.removeAttribute("loginUser"); 
				session.setAttribute("alertMsg", "성공적으로 탈퇴되었습니다. 그동안 이용해주셔서 감사합니다.");
				
				return"redirect:/";
				
				
			}else { // 실패 => 에러문구 담아서 에러페이지 포워딩 
				
				model.addAttribute("errorMsg", "회원탈퇴 실패");
				return "common/errorPage";
				
			}
	 }
}
	 
	 
