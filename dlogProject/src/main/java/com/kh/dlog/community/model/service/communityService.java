package com.kh.dlog.community.model.service;

import java.util.ArrayList;

import com.kh.dlog.common.model.vo.PageInfo;
import com.kh.dlog.mainmenu.freenote.model.vo.Freenote;

public interface communityService {
	
	// 커뮤니티
	// 1. 주제별 조회
	int selectCommListCount(String topicName);
	ArrayList<Freenote> selectCommList(String topicName, PageInfo pi);
	
}
