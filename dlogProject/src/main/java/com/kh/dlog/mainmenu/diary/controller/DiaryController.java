package com.kh.dlog.mainmenu.diary.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.dlog.mainmenu.diary.model.service.DiaryService;


@Controller
public class DiaryController {
	
	@Autowired
	private DiaryService dService;
	
	@RequestMapping("list.di")
	public String selectList(@RequestParam(value="currentPage", defaultValue="1") int currentPage, Model model) {
		
		
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

