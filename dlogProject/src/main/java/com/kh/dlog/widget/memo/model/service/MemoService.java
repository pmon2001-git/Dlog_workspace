package com.kh.dlog.widget.memo.model.service;

import java.util.ArrayList;

import com.kh.dlog.widget.memo.model.vo.Memo;

public interface MemoService {
	
	int insertMemo(Memo m);
	int deleteMemo(int[] intNums);
	int updateMemo(Memo m);
	ArrayList<Memo> selectMemoList(int memoWriter);
	Memo selectMemoDetail(int memoNo);
	int widgetMemoNtoY(Memo m);
	int widgetMemoAlltoN(int memoWriter);
	int updateDelete(int memoNo);
	Memo selectMemoWidget(int memoWriter);
	
	
}
