package com.kh.dlog.mainmenu.freenote.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.dlog.common.model.vo.PageInfo;
import com.kh.dlog.common.template.Pagination;
import com.kh.dlog.mainmenu.freenote.model.service.FreenoteService;
import com.kh.dlog.mainmenu.freenote.model.vo.Freenote;

@Controller
public class FreenoteController {

	@Autowired
	private FreenoteService fService;
	
	@RequestMapping("list.fn")
	public String selectList(@RequestParam(value="currentPage", defaultValue="1") int currentPage, int mNo, Model model) {
		
		
		int listCount = fService.selectListCount(mNo);
		
//		System.out.println(listCount);
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 5, 10);
		
		ArrayList<Freenote> list = fService.selectList(mNo, pi);
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
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
