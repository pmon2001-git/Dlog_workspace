package com.kh.dlog.friend.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.dlog.common.model.vo.PageInfo;
import com.kh.dlog.common.template.Pagination;
import com.kh.dlog.friend.model.service.FriendService;
import com.kh.dlog.friend.model.vo.Friend;

@Controller
public class FriendController {
	
	@Autowired
	private FriendService fService;
	
	@ResponseBody
	@RequestMapping(value="selectList.fr", produces="application/json; charset=utf-8")
	public String selectFriendList(int currentPage, int friendOwner, Model model, HttpSession session) {
		
		int friendListCount = fService.selectFriendListCount(friendOwner);
		PageInfo pi2 = Pagination.getPageInfo(friendListCount, currentPage, 3, 5);
		ArrayList<Friend> friendList = fService.selectFriendList(friendOwner, pi2);
		return new Gson().toJson(friendList);
		
	}
	
	
}
