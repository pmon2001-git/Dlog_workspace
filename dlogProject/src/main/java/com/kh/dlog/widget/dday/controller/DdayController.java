package com.kh.dlog.widget.dday.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DdayController {
	
	@RequestMapping("main.dd")
	public String ddayMain() {
		return "widget/dday/ddayMain";
	}
	
}
