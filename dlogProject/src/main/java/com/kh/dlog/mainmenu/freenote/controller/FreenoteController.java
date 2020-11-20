package com.kh.dlog.mainmenu.freenote.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
			sc.setBoardLimit(10);
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
	public String enrollForm(Model model) {
		
		// 수정 필요!! 로그인한 회원 번호로!!
		ArrayList<String> cateList = fService.selectCategory(1);
		model.addAttribute("cateList", cateList);
		
		return "mainmenu/freenote/freenoteEnrollForm";
	}
	
	@RequestMapping("insert.fn")
	public String insertFreenote(Freenote fn, Model model, HttpSession session) {
		
		if(fn.getFreenotePrivacy().equals("N")) {
			fn.setFreenotePrivacyComm("N");
			fn.setFreenoteCommentYN("N");
		}
		int result = fService.insertFreenote(fn);

		if(result>0) {
			session.setAttribute("alertMsg", "성공적으로 등록되었습니다.");
			// 수정 필요!! 로그인한 회원 번호로!!
			model.addAttribute("mno", 1);
			return "redirect:list.fn";
		}else {
			return "common/errorPage";
		}
	}
	
	@RequestMapping("detail.fn")
	public String selectFreenote(int fno, Model model) {
		int result = fService.increaseCount(fno);
		
		if(result>0) {
			Freenote fn = fService.selectFreenote(fno);
			model.addAttribute("fn", fn);
			return "mainmenu/freenote/freenoteDetailView";			
		}else {
			// 에러페이지
			return "common/errorPage";
		}
	}
	
	@RequestMapping("updateForm.fn")
	public String deleteFreenote(int fno, Model model) {
		// 로그인한 회원번호로 수정
		int mno = 1;
		ArrayList<String> cateList = fService.selectCategory(mno);
		Freenote fn = fService.selectFreenote(fno);
		model.addAttribute("cateList", cateList);
		model.addAttribute("fn", fn);
		return "mainmenu/freenote/freenoteUpdateForm";
	}
	
	@RequestMapping("update.fn")
	public String updateFreenote(Freenote fn, Model model, HttpSession session) {
		if(fn.getFreenotePrivacy().equals("N")) {
			fn.setFreenotePrivacyComm("N");
			fn.setFreenoteCommentYN("N");
		}
		
		int result = fService.updateFreenote(fn);
		if(result>0) {
			session.setAttribute("alertMsg", "수정되었습니다.");
			model.addAttribute("fno", fn.getFreenoteNo());
			return "redirect:detail.fn";
		}else {
			//에러페이지
			return "common/errorPage";
		}
	}
	
	@RequestMapping("delete.fn")
	public ModelAndView deleteFreenote(int fno, HttpSession session, ModelAndView mv) {
		int result = fService.deleteFreenote(fno);
		
		if(result>0) {
			session.setAttribute("alertMsg", "삭제되었습니다.");
			mv.addObject("mno", 1).setViewName("redirect:list.fn");
		}else {
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
}













