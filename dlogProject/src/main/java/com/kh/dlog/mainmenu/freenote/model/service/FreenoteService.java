package com.kh.dlog.mainmenu.freenote.model.service;

import java.util.ArrayList;

import com.kh.dlog.mainmenu.freenote.model.vo.Freenote;

public interface FreenoteService {
	
	int selectListCount();
	ArrayList<Freenote> selectList();
	
}
