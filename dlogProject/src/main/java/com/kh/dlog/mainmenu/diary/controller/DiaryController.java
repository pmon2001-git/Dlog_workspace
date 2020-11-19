package com.kh.dlog.mainmenu.diary.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.dlog.common.model.vo.PageInfo;
import com.kh.dlog.common.template.Pagination;
import com.kh.dlog.mainmenu.diary.model.service.DiaryService;
import com.kh.dlog.mainmenu.diary.model.vo.Diary;


@Controller
public class DiaryController {
	
	@Autowired
	private DiaryService dService;
	
	@RequestMapping("list.di")
	public String selectList(@RequestParam(value="currentPage", defaultValue="1") int currentPage,int dNo, Model model) {
		
		int listCount = dService.selectListCount(dNo);
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 5, 10);
		
		ArrayList<Diary> list = dService.selectList(dNo, pi);
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "mainmenu/diary/diaryListView";
	}
	
	@RequestMapping("enrollForm.di")
	public String enrollForm() {
		return "mainmenu/diary/diaryEnrollForm";
	}
	
	@RequestMapping("detail.di")
	public String selectFreenote(int dNo, Model model) {
		return "mainmenu/diary/diaryDetailView";
	}

}

