package com.kh.dlog.mainmenu.freenote.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.dlog.mainmenu.freenote.model.service.FreenoteService;

@Controller
public class FreenoteController {

//	@Autowired
//	private FreenoteService fService;
	
	@RequestMapping("list.fn")
	public String selectList(@RequestParam(value="currentPage", defaultValue="1") int currentPage, Model model) {
		
		
		
		return "mainmenu/freenote/freenoteListView";
	}
	
	@RequestMapping("enrollForm.fn")
	public String enrollForm() {
		return "mainmenu/freenote/freenoteEnrollForm";
	}
	
	@RequestMapping("detail.fn")
	public String selectFreenote(int fNo, Model model) {
		return "mainmenu/freenote/freenoteDetailView";
	}
}
