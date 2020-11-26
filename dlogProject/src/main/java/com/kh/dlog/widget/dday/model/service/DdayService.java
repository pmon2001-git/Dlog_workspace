package com.kh.dlog.widget.dday.model.service;

import java.util.ArrayList;

import com.kh.dlog.widget.dday.model.vo.Dday;
import com.kh.dlog.widget.dday.model.vo.WidgetCheck;

public interface DdayService {
	
	public ArrayList<Dday> ddayMain(String memberNo);
	public int ddayCount(String memberNo);
	public int insertDday(Dday d);
	public int updateDday(Dday d);
	public int deleteDday(String[] deleteDday);
	public int widgetDday(WidgetCheck wc, String[] dlist);
}
