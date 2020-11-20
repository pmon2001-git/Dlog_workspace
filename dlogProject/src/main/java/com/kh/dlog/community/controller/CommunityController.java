package com.kh.dlog.community.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommunityController {
	
	@RequestMapping("list.co")
	public String selectList() {
		
		return "mainpage/community/communityMain";
	}

}
