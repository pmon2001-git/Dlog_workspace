package com.kh.dlog.mainmenu.diary.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

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
	public String selectList(@RequestParam(value="currentPage", defaultValue="1") int currentPage, Model model) {
		
		int listCount = dService.selectListCount();
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 5, 10);
		
		ArrayList<Diary> list = dService.selectList(pi);
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "mainmenu/diary/diaryListView";
	}
	
	 @RequestMapping("enrollForm.di")
	public String enrollForm() {
		
		 
		return "mainmenu/diary/diaryEnrollForm";
	}
	
	 @RequestMapping("insert.di")
	public String insertDiary(Diary dtn, Model model, HttpSession session) {
		
		
		int result = dService.insertdiary(dtn);
	
		if(result>0) {
			session.setAttribute("alertMsg", "성공적으로 등록되었습니다.");
			// 수정 필요!! 로그인한 회원 번호로!!
			model.addAttribute("dno", 1);
			return "redirect:list.di";
		}else {
			return "common/errorPage";
		}
	}
	
	

}

