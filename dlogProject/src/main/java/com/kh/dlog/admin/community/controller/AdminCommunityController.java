package com.kh.dlog.admin.community.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.dlog.mainmenu.freenote.model.service.FreenoteService;

@Controller
public class AdminCommunityController {
	
	@Autowired
	FreenoteService fService;
	
	@RequestMapping("admin_list.co")
	public ModelAndView selectList(ModelAndView mv) {
		mv.addObject("list", fService.selectAdminCommList()).setViewName("admin/community/adminCommunityListView");
		return mv;
	}
	
	@RequestMapping("admin_detail.co")
	public ModelAndView selectCommunity(int fno, ModelAndView mv) {
		mv.addObject("fn", fService.selectFreenote(fno, 0)).setViewName("admin/community/adminCommunityDetailView");
		return mv;
	}

}
