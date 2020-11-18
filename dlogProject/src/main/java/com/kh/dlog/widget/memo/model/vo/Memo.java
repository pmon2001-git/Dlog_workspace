package com.kh.dlog.widget.memo.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Memo {
	
	// field
	private int memoNo;
	private int memoWriter;
	private String memoTitle;
	private String memoContent;
	private String memoWidget;
	
}
