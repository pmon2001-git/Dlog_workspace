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
import com.kh.dlog.mainmenu.freenote.model.vo.SearchCondition;

@Controller
public class FreenoteController {

	@Autowired
	private FreenoteService fService;
	
	@RequestMapping("list.fn")
	public String selectList(@RequestParam(value="currentPage", defaultValue="1") int currentPage, SearchCondition sc, Model model) {
		
		
		int listCount = fService.selectListCount(sc);

		if(sc.getBoardLimit() == 0) {
			sc.setBoardLimit(5);
		}
		
		if(sc.getCategory() == null) {
			sc.setCategory("");
		}

		if(sc.getTitle() == null) {
			sc.setTitle("");
		}
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 5, sc.getBoardLimit());
		
		ArrayList<Freenote> list = fService.selectList(sc, pi);
		ArrayList<String> cateList = fService.selectCategory(sc.getMno());
		
		model.addAttribute("pi", pi);
		model.addAttribute("cateList", cateList);
		model.addAttribute("list", list);
		model.addAttribute("sc", sc);
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
