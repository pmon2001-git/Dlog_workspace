package com.kh.dlog.widget.voca.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VocaController {
	
	@RequestMapping("list.vo")
	public String vocaList() {
		return "widget/voca/vocaListView";
	}

}
