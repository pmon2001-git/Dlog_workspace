package com.kh.dlog.mypage.controlAll.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ControlAllConctroller {
	
	
	
	@RequestMapping("main.ca")
	public String ControlAllMain() {
		return "mypage/control/controlAllMain";
	}
	
	@RequestMapping("activeWidget.ca")
	@ResponseBody
	public void ActiveWidget(String widget, String status) {
		System.out.println(widget);
		System.out.println(status);
	}
	
	@RequestMapping("privacyWidget.ca")
	@ResponseBody
	public void PrivacyWidget(String widget, String status) {
		System.out.println(widget);
		System.out.println(status);
	}
	
}
