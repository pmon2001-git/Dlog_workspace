package com.kh.dlog.widget.memo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.dlog.widget.memo.model.service.MemoService;

@Controller
public class MemoController {
	
	@Autowired
	private MemoService mService;
	
	@RequestMapping("insert.mo")
	public String insertMemo() {
		return "";
	}
	
	@RequestMapping("delete.mo")
	public String deleteMemo() {
		return "";
	}
	
	@RequestMapping("update.mo")
	public String updateMemo() {
		return "";
	}
	
	@RequestMapping("selectList.mo")
	public String selectList() {
		return "";
	}
	
	@RequestMapping("selectDetail.mo")
	public String selectDetail() {
		return "";
	}
	
	
}
