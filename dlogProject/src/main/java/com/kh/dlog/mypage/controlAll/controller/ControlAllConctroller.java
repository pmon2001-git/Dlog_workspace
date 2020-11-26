package com.kh.dlog.mypage.controlAll.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ControlAllConctroller {
	
	
	
	@RequestMapping("main.ca")
	public String ControlAllMain() {
		return "mypage/control/controlAllMain";
	}
}
