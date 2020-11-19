package com.kh.dlog.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.dlog.member.model.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;

}
