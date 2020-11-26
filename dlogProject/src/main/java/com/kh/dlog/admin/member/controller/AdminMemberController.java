package com.kh.dlog.admin.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.dlog.member.model.service.MemberService;

@Controller
public class AdminMemberController {
	
	@Autowired
	MemberService mService;
	
	@RequestMapping("adminMember.me")
	public ModelAndView selectMemberList(ModelAndView mv) {
		mv.addObject("list", mService.selectMemberList()).setViewName("admin/memberDataList");
		return mv;
	}

}
